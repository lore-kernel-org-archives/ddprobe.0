Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0743A57C9F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757722795; cv=none; b=J6YeSBl0o9moDhSaF3hgK5KmSnzbG48RGQp9PxTNE8Yv/hJ/813ElRBbqy9qjrtddihz2ifTH0ye3dgignQsmbHLyK4h+RSCdVvfJiRwJajadudahQxgmd+Oa4aStHWMc3GLwB18UbMvio7TqWGidkNfEGhdTvajaykdgVpVIKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757722795; c=relaxed/simple;
	bh=qUL5k+Czqp4OhRl0w68jwUAiE5nFl/XtNRkWNhAf/Iw=;
	h=To:Subject:From:Message-Id:Date; b=c6TpWPPh+l3VkOUXCt/eVn+m3goSDmBUYMauaqLj1s58w2jQ2a6gNvPVPmtZh3ET4C+yVCUSwTnyOk7QDf8noxGIjGhRUi79dp6CeOh2V40+N6XqmiLu82zzo7dyFgyvR2MLk3+bTC8Auz/exADPwqOmIuM0CDh/bvRUz01kr7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQlVQWyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQlVQWyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD12C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757722793;
	bh=qUL5k+Czqp4OhRl0w68jwUAiE5nFl/XtNRkWNhAf/Iw=;
	h=To:Subject:From:Date:From;
	b=VQlVQWyEO5KdG9kuhwshTW0k//G5jL4GVRj6EjpCl4e2Fabe0E0jyWaIuKGvX2a6g
	 g8DK2KpyH9kywRqEqD4pQCyinOW9gIUavLVH0CMTNRSgKvMNc8h0ji4N2TA1CJME5x
	 y4HkVBY2w7S+a81VSA5OwEFpW2TPEt3WryJ9a8+QTlOQNplFd3yzfwE42JxhZ+80V3
	 GqipGdQpl3/90wNwL8rx+1faeAGTLqzpmCfA8CGnVehBXfkUreoRyTIEfrARLMJxIA
	 XFTBdYOm4aEvCtJKC09ViEwpjOOIDVIlE3+SneJvD11oJ9C6CncGhjM06e1u5Uuj7L
	 QA5uMIHCIdFcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C8CA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772279357.24225.6793287529615317704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249cfffce338b5ec10e935d50fadc0dfa508f1e4195e5d0abe27fb257e50fe7f
Date: Sat, 13 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757722793
