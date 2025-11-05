Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2931F2BDC29
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762322994; cv=none; b=oFCmwFHn6aTSrZ5BXC4Bg3Z6gwzxDbyvej4NXIMSVHKlBh6WtoTTMpNnTW7+vYtW6cKkKHx/QLzZz58+t4nXuUIV3J17cRRFZWz3PTET2JgaFEoJ/hfl9i+PwcHXVpajYjq6ZN0jS5mwkaR37buEr/5inOMjIlGmxpw3ZG2vyTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762322994; c=relaxed/simple;
	bh=GuNqKqe54G03AXtxjs0bxDZFgUqWeaegEg+rmnzjGIo=;
	h=To:Subject:From:Message-Id:Date; b=fTf1yrqZ/3DU5QOARms4dkDutEVHkNnF2+LCv2o5SdanPHTxUQkuX1iKDsg6BiKYExNAdlrC01VNCoElLdam+lZ5npFd7vUfibIJO+poJwOHefH8/GPm1ZM9iRRosV6VvdFJx19ex3MDMQMSrtgPqlC/HMl9HZhf7is3oSAO40U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgTxffXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgTxffXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC0C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762322993;
	bh=GuNqKqe54G03AXtxjs0bxDZFgUqWeaegEg+rmnzjGIo=;
	h=To:Subject:From:Date:From;
	b=IgTxffXaDtAWTE2mwmwY/zOqXbl5cqQoSH2H5hNbMtjasvbVTLTdn+GjPsknh60uf
	 XVinxfpNu/8JGTKEH+fYlgGo355n/ckaLfEMjSmPLQsWJCLYdPgx0RUY22dGf+zYjv
	 1ifZVyO8Mb1VC/qE4AY2ybdv2rxSKckxHe63qNbPiHexSgN9I3Z6fZy9eQ/TFx1R95
	 9rFxYMkDZ/cT4PPwTJHGvglmVxzYVH/XsBvgEKrn0OLgQ3zQgg4TgtfnN7yjQOLMbo
	 TrKaa6cqtGROp2FlR6D6+ChvPWpi0bmM7uyLB+WSGQ81XCc2nh40EEySg8s80Lc4le
	 V1a3Fn0JNMujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C99CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232299358.19076.819518982902448537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028491add8588240a187bf3909e8838fce168fdf46cb42a946648fb79857d2de
Date: Wed, 05 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762322993
