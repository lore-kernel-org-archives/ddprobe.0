Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EBB18036
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711519697; cv=none; b=UWsApA4y59LT9v+Rd32K6CxV2t9bi09eD+rMQ9oR2PkIrHaEymdF01N9tTrIUY2vpg7JfgtD/ZfuGaT289f+08H/gDD4meMbCcpLY8opMV0krn+CHFBwxJZz4TtPmsSMYXhW1pH6VATGwoyJ7zhV7XP9s/2sqYE4vl++ZsHeYyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711519697; c=relaxed/simple;
	bh=yY3x32fRv0uCHSG9h4hVKlB7NveYcE3Z73PMPZQPE44=;
	h=To:Subject:From:Message-Id:Date; b=Yn/egNeQfbgR+LomxH4gCgIQsCWqeIyuGRxMRgGV15rOpTaLR/sZULyDCwPDj/0ZHiKmFLLKloKIrSOOon9CA35mEQWmmv7hMNYV7qG2iHfRuXYxMfNZ4fyIw3PH/hek18mXVx/xgAkjFEuk37sYCvUSgelJ8fYss+RnsMRHGNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua7/Uuz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua7/Uuz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DEAEC433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711519696;
	bh=yY3x32fRv0uCHSG9h4hVKlB7NveYcE3Z73PMPZQPE44=;
	h=To:Subject:From:Date:From;
	b=ua7/Uuz8fVgLBqXrKNSktgFzYUsktWhB93a3zt9/LT9MLCyyrb5pJnQmpGTiC0NaL
	 MPw2ziyw8kVUzTddwaWHSwlProJOgzkNzFTxO1asUdFeQwIyx4WT4F0el57kmxfxgW
	 TixWp7HHipEudauXBHgASMpWav9lbTSv5e/m0NgB9+vcmf+Df+BCRDKJlESmrLBG52
	 Q/z+7WqUpw3NWjruCvuTT/RsExJnSAz6JJa+EBdzgSj71oLk2weR7HJ/Fs7TQ3o/bo
	 hPSfAeXiwiFGOtk2iH3YSLvXikiY5GXzvNWG7HodQ6NYPqnqTX+EWI5erYFIntVZ2e
	 FmVQ1UqXGyYaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76A76C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171151969646.8619.13028993526964889399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45ea06948bc3abf6fe3514df29817ae60cd7009ef9c710bebd99e0d185f8121
Date: Wed, 27 Mar 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711519696
