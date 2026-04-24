Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1AB3E9289
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777051653; cv=none; b=I5OsdhltTwLXDG9OLDX64nK/drXI4KLLsxbBgj4ZlPA/rQqYIcivre5OHamr6J8yYRU2PIaSMNKFp2Y4Jddpgp22QGk3zORjY2PbxuXVy3jjS9+nR9mnGZKqhOuw7Upa4Znh/BComnilkDbZze3R0QGa9m/+PTL5qTvzpCMcy64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777051653; c=relaxed/simple;
	bh=m51KbG+Mjp8Yo2GG6turGAXLGjKC+i8JwnAZqOU/LD4=;
	h=To:Subject:From:Message-Id:Date; b=SrxlNs+wf6PHjWXKJZWe/jzPNaRLp4Xa04JL9Oyb98hrYqK07VzggfgeEp8k6Lc2utBlbfU+BUnSGMmzEYos9SIaiSzBs81fab968WUyJBhCSzjHIG6R/J5f5wcCl6V6yWwXdyUoXjRBKlQUpGKHpLlGI33FfIH2RmABCsZaLeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZz1JWmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZz1JWmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE10DC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777051653;
	bh=m51KbG+Mjp8Yo2GG6turGAXLGjKC+i8JwnAZqOU/LD4=;
	h=To:Subject:From:Date:From;
	b=BZz1JWmYZKKVKpL+6xzQJZJif3sPBZjiJqy/lPBMScU1QBXBjMcdLPbicktfcoSKX
	 40gEGZIObZPo0Pt+VVtBIr/DNTZQtDNoD3u+hYpdjc4k/qtI5PKHfjz08hFeLKoM/8
	 HRH8Hvxz6scWK71s+X/oFDE9TrHCXsSrrk5BS6OVCkv7PWq2/ykTT8e6OJO2se+5SD
	 MMCitULdBOFlvoiqjdnfkTDkrKiPUh1G8BY6sbe6FwtZsI+FQIcCll0JBGZgOMLED/
	 Ic7qAkNmixIOn1LIg0juMVXVR/KAQJlTc2B52IJSc9ISJ0sFUX4sYTJxIjSF0d8n6K
	 3SomKj6D5/POg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69AFED3F1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705165368.22927.13978430549342513770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e8d43871d44924fd05ca8a28ec2a3cf40cd40dffd1b6b18dacb9dd3930d326
Date: Fri, 24 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777051653
