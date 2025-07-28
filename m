Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D91A10F1
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753739995; cv=none; b=XaJzRq04QyM+yqdC5g251do/EzCnR9/xBcrlIUIdXOveP2Fb5UiHwxQeOo418amfxKab0g/lrWQ4YlbSg1KSkVlsMtzrzj2oEn7TqMbl3/XgyBy+EfFsX+gGzrA+BY3nDuNC0+RU3NVSqCaqrGf60csFEIFCSQcE4w86zPpRZKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753739995; c=relaxed/simple;
	bh=/COU04/e6Wcl+Ij9tOmAM+6lMci+rP48lPxM3WSBkUM=;
	h=To:Subject:From:Message-Id:Date; b=guap7gLS+OmZ1MnCHWDoOplcVKIvaZBDy35GUqL+goOJhKxsIWsM5GZHZTDlEO333w6cuQsDR2Hn0tPqOmS/7lCcH2qMaYu4z4DhTy2aDmD8HgB9vxgL+IT2bjaAvQR7U28eeMEl4pzymQdoNEItAmKE4ngUuPnC80E9Ha+cIts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbdK1Mny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbdK1Mny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2200C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753739993;
	bh=/COU04/e6Wcl+Ij9tOmAM+6lMci+rP48lPxM3WSBkUM=;
	h=To:Subject:From:Date:From;
	b=gbdK1MnyxggZc/680831eVd5Eu42eeJw5Ir0f1ToMUQnh3Ius/WdDAUm8JQykhZEc
	 pkSwC9VuhVNJLq/30qw24F/p1+iqncIOvSxdmXqwVgjEn6K+y5Is2Wa1r7PhHlkfVH
	 6vQ/XAaYYEUFUKVZi93XO3mvGfxQdU6PDLrEAQKayljU9PBW5rqlkYt1RC4OIy+xWy
	 4Tz5t1G6Bb31ro++fbIFpVtAwNByOGLjCynR28DeAM2k+AoISQ0Ja5rAjJymKKK2SD
	 d8aJa5A5witlhS1ZEXTdOSNRl7VS2Ui0NidaXB4+Qya+pChDI4OSapD6A4DfNeYXKE
	 LiOTxGeI7TNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAEC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373999357.23135.14137996723639029368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b7d2163b01d1c68e62e0b3c6c6d6567f4ddc132385142eba7708183ca15cdb
Date: Mon, 28 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753739993
