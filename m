Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463DC26E6F2
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762084794; cv=none; b=bxUrdj1rLYdtYyWBcz1odBg+wprKOHBDOFxRQy6ciFectMOlYCcFkBJBGabhOtIPLTAG2iw6PCorbiStdzOMAqzRxZHj5gtWkKDT/TK+vBRnpAD/oJyCoadL9CNt05hqLRkD6pLLHAeDMiiChKzuyGxLQB7Oe/Mp/Y4c60Bpzrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762084794; c=relaxed/simple;
	bh=1Y7meAYkq8qJ/HeKVq4pYQ1bCPzEOuPqJs1F6IJMl3U=;
	h=To:Subject:From:Message-Id:Date; b=St4fcjauE08a4bzGxoQQXCX98UpGdR98OUH7JPAUj+iFj/YFamkw/cXsOV+n9kbZ1dfzcnwUCD2ThcYb+bYf3xNc73oqy7r+qRrAI5hikV3P1+Ih4a7byy9SBf5t6Atoa9QDzlv7BwhTXfCsRrGfymnT28zQ1c7QP+ubjNOme1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hin2ldoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hin2ldoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7136C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762084793;
	bh=1Y7meAYkq8qJ/HeKVq4pYQ1bCPzEOuPqJs1F6IJMl3U=;
	h=To:Subject:From:Date:From;
	b=hin2ldoGNlWaKWTKUsmCqGXJSInWXksNh+Q0iX2COHnifXxGMCc5P+i391E81iIAt
	 Kgm2wBzzRug++quTxr3JmncWKFgQqk9NibqdxDwJW6ovt0WO+Km8emxhoip6CzaSXm
	 Dm0ekyM/tdW/gPApOesV9lj+1vmtUvnTYpfvmSTXMOSzueVJPW/eVLcH9SCxjZVKgF
	 mQILKDudFqCSk8qQgqG9cq23CXOe8wGNOwLE/7CYCilj0CTfkm+RbCMNfniT4heFKH
	 R/OM5KyliaS4HbWb2EMBVNrbEI2LhyroapptjNOOIX5SvlIUqR5iHEbdWRyZKA6UUP
	 51tUkqUzNJNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E46CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208479361.10709.10186257072037580496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856c8e3ea0418df89714f43b1ff7032c14227e7d0346a81f8b0c1031ade0e74a
Date: Sun, 02 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762084793
