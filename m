Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F75175A67
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776471454; cv=none; b=Tt5OX9IEK2fQKeUeGLhAPDvWKqqpR7EgciNiBh7q4Mhr8Ze8A52m2nNXz0NQEKnmtnap2+G/ihXRCZRAsUNIrZCI+mDheSeHZWTfMUgemvgLQhJTwGClw53vZFuHZWYMmxp+QRYm5gvCA1PmW5se6u57hs/VoPMNl2eK1dec1Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776471454; c=relaxed/simple;
	bh=xVzDi3nnNSPSrBTS53y5EZB2eyz2JNS0mitavN59zjQ=;
	h=To:Subject:From:Message-Id:Date; b=UFu0VNhKYhceKO1VnWki+3lHhMeYaxsZOMtepzJJce/CrgmYpdjqa2mSehzN0Jy67PYEwYBswB9SN3tP900bgg8P2tFvxrmOGr29y/XtHoaFEDQxlhn+Smcg/xZNoVUFFuevOa1LUDsr7hS6Y3t+HMqzDQBHPcKZ32p2as3Z9Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMijt2nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMijt2nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDAEC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776471453;
	bh=xVzDi3nnNSPSrBTS53y5EZB2eyz2JNS0mitavN59zjQ=;
	h=To:Subject:From:Date:From;
	b=VMijt2nmyD+n5SjBjaNXWAorGQi7VsfYayM4Sb3jnyTOgCF3u+EpP0l3C7A0zdhZ6
	 Z0I8Gas2qog7UFpMWpzUNiUU/jhXowtmHWkcTESagkeo1ueEJ/5OWuNPDE2h+MXBPh
	 U9jTrQyYh0g6/ibmupLi8hUCC7k4bWxd3Mt76Ud1H471Z98eJgkwY9pxQPhgFD2CQY
	 S1Z1Ale3vkkqi6bkkY97GMruEmZHymCAJyKo60OlQ/5g3NEsEnSgi59PZoXuzW5evX
	 43Hwaox+hmP6+k2DYZTY5o62F4yOjbJBcf9qgaK8li0AOpfFnHmAe224DYpYoid1UF
	 mWf6YOUYOZ7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC78DF99C6E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647145368.31462.13710572798364382226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847d64bcdcfe9988e76e7f3a17e1686cd88ee3f057a208509d4f38ce340b2fc6
Date: Sat, 18 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776471453
