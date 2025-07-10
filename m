Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B782E974E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752150595; cv=none; b=WNuJghIsDtPPinTFStHY7bXU6HdgkLf6PdYeM3SgXnBc6HY2gfkpsPKVW/JhrZbL0Vk33U6qzVjFOemZI7MQ9I+OjT9NP3KkpDgHS7zO6jtCF+IfYLHhM83NzyKz35IfK2sFUvWb9Fas2tRtAiYbxUCCWcpOn/bX1wlzWbWhZ2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752150595; c=relaxed/simple;
	bh=g3jJGDKqaBEG3zzQdbHcjLL911WRiuiam84bwt7JVLM=;
	h=To:Subject:From:Message-Id:Date; b=PdZJq7Cfussi8tMGsHK4SLkiQ2a33KhwVkVUy2hpUKpUF3o8mgrvPn65GnHdnLDs3qkWh/MTA/iaoUkdbzfXTzl+eA8GRHkM2Jw/56ulclRyQVQNxibh51SxuzYZso5xisH4cXvKYXZrmLlJ1tB91yVBmvDzgO02gTuXNzJq5mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCg/S06y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCg/S06y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF84C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752150593;
	bh=g3jJGDKqaBEG3zzQdbHcjLL911WRiuiam84bwt7JVLM=;
	h=To:Subject:From:Date:From;
	b=DCg/S06yS9sTP1Fs4sBf9k7wR11p6EQCTr8o4jKwBkIg5IAC8A/toNgAecxC5rdBR
	 +j0QjqhztPkDkQbhWerFfKDHxrt8EqVGQZnpKSsnYouOetprWNrXpfW+u3Sv+ipsGx
	 QN0jO6fFkxaZSYdbopQ2P7GyTTq68C6UadMGlJyMfrSt9gssLmwF3els8SNziBo0+a
	 QjI4loJ3yJ2i1nWS5Jcl/VSzVfY16RUpRYujXbSZ9MldQRwLEADxSnm2s8M4IL6lGx
	 SJZ+c6W1eP+pn3G39EW7d8i43Sq2DJaVQMVguPduwzN48lGDIWoaQuGq5qsKQlwtQp
	 lZTeJywMlJamw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D3C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215059357.20355.16311518834053298423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf3cbda8d4d64628869e9a1989fbd684f3654b135ad8cd6936fd79a395f405f
Date: Thu, 10 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752150593
