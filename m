Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A7C1CEAD0
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732026354; cv=none; b=TcrcyL2Ii7ST7lKUZlEQp1yHssitFTaUPhHVy0KL39qN1+6BqJNpQuwD7KI/uZKx2u+a/UXXSUxMHSzBJ5gljqaUMl26fL0Tgln3WhFhQTjPfuhHCao9DTP22Y6w88nM0fciNInHJJFhSYIC8FtI7AndcOE06W6YAAWfKBvSBwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732026354; c=relaxed/simple;
	bh=qpSXxv9xYmbd4EgGb6Ln9Hu/ChdilsGkrczF5jxhzAc=;
	h=To:Subject:From:Message-Id:Date; b=XVnR2TL6CAaMdrnF+LMrX+/d8hQKaXh2okZ8CH0KLjQ8PSe9VYl72j4g2VXkh1RsTjg41zCjqoUDovu6kwd1nDJ1zTJ4LThEWG6lb3j6wBt1oUhAF0RLrfkgLTta551PjGjMS7DkAPSdhqayO7IaeMPX/9SbTnYqCec6o2fMPW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/ER2mJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/ER2mJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41ACC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732026353;
	bh=qpSXxv9xYmbd4EgGb6Ln9Hu/ChdilsGkrczF5jxhzAc=;
	h=To:Subject:From:Date:From;
	b=G/ER2mJwg40vyvWzrMfl1ITTiu7MuaIhZes4oPYN/2PL+bRjDMycrxN7CY5c6zLZs
	 xG4+cmK4HwcrwiHocYFDfir2fNOZnd1qTjjG1pST8aNVToQqnb6FqHlymVtQRmKTOc
	 PMRC090x5K7b757RSyVDalga4ze1p+zaITXKssCT84gng7+646gkWMCBE3OC1JbFyF
	 NcGzjwBuEnpX5dMP7zarmhFgksVqQjvRJEmBSOvCSGMgVs5+wFBWmFiJHEARZ0XHwm
	 uPSQ/SlIsQpiml1lxGEBykNh1QHJO3ZuKssxvpvErs21HdSeBa0H8D+5BMKy9no9i1
	 g4JXHaIeoVtIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25FCD44161
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202635365.22943.14332553546133052471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c566d88b43d60f8d8ec8b319ccbf2e9e290b9b7be99203d551ca56a4913a90
Date: Tue, 19 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732026353
