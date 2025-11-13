Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143D9358D3C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763057994; cv=none; b=nvDlH6aBjBRGNM8aSLkEkCVv3Q0hTtWEddqnKq2iDwKUP0aCj4h+P7JZ0qybNozrgYXSztdgdvqHOmA17ZtIm3zhN2e7LXsJhNIsKVr/nTQ/a6MPm1VYRJ2IkYgn9RLArRXqO0NO+SCvAtWtY7bgMaAku7JxFRWfJCNts9PXCV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763057994; c=relaxed/simple;
	bh=Ifaq1rv/S+GjyUIWSE7KLVfxfvtkDX2WiRKUVhb/gZA=;
	h=To:Subject:From:Message-Id:Date; b=nUG2SPPgajKt+ZyojldBJMhEOqGrCKwWzl+hkBhMHX7fBFSMoq/5TqiLqyBgu9ss1PsMWCK5UelGMl6b6MkLZcGIrqLNsXAL+tfbBGEb3UelKsGeNrCQlLW0nwYDekAl8RlJP+RnMBBM52GBCYPgG8F8Yp53LLWKyAAmeAnYphw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW8cLk9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UW8cLk9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763057993;
	bh=Ifaq1rv/S+GjyUIWSE7KLVfxfvtkDX2WiRKUVhb/gZA=;
	h=To:Subject:From:Date:From;
	b=UW8cLk9Cqd2l+78WXwMn6qZKOfDnOSIZnCez41BUDmcWL7gjV67N5DdJaVLvBWaQM
	 P262sOjCGAUot4iF2JZMMC1PE4NtCGIYfT9wOxbHC9F2md0V0lvAVhDWTRMzLDX/ov
	 /MNbaV/rNXoJK62sWob92nHfndJkAnVddX5tsIroli2LvhH7OxymAd0tM/bg7iCmAi
	 bDQFohnILT7NTbBDkOWxWKORqKF+64DmuBtJCPkDYJKQyqfctO+84WQSFQzcUOY5RV
	 FN4JgYNrqT2lprxzYnstPpvkWXESy/olRSbhPt1xkbz7lz30M4rB4cSnDMzfb/fTpn
	 dlslOgIIi92FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045ECD8CB2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305799358.14830.8348560222102507487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ea55a41137e4f9ca6334076cd5e34cf5cb8275bbfb78c1e130c32b304c21f8
Date: Thu, 13 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763057993
