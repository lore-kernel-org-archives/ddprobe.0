Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CADB17166F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720794503; cv=none; b=aSc3HpEcW+02m7Mkh3/7iJdrif3x25aS5tVzLc53zxai0Ys56hYgcmIP6SY4LVqDQF/1/FxOg7VwLkqyCUotGSiSYfRJ44YTA0iq53tJpv3AdwMLahzm0gD89/wfzqAfE5DNTqI45k2M3GSsV1aEPVDynSAbKukmOzbynptnSfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720794503; c=relaxed/simple;
	bh=Rnf1lt0jWR3oWPzRDZhbA/cBl09OrM1SMiFv8ond10M=;
	h=To:Subject:From:Message-Id:Date; b=TqYmX5qsY2ztCdQQwhWu/V+wVnX+tqdWifbWQo2Vi2c6rv5qMREBP8QrwnA9ttI8NBcCijv3Oegx9malsVJUNbfakoznri498ws1cdSgjBLEIlT59NcrrGlsU91K1WU9YJcBepVYyMi6dTDtFnLajaerOnnHlSb5ffm3ppq7WJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJdCJXao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJdCJXao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E001DC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720794502;
	bh=Rnf1lt0jWR3oWPzRDZhbA/cBl09OrM1SMiFv8ond10M=;
	h=To:Subject:From:Date:From;
	b=vJdCJXaoUSecwPdxG6VTqGMo8uCKN57KXn/EgbSvfFDyVKO8HNGsSVRRwSq2j3PzN
	 23M6w1i0dXHljCh34WPcnWg9uwV8oKaEIxNptsWLyisEPeetSzjI1GQDucIvvm5Ghb
	 CHqpguM3DfuKUyuUrXTcnd5/xZZWpN8LgJlpSZqsW3mv214EhEDowIqJw/qmEdSK9g
	 IBkvTmYteLpdlpmCKJkteHasiXdh7xWZM+x1cPXWqZtwEc0cikRYwNvmSDKJcev+oC
	 qvmcCA9q7BJLj7vxBC1Tt2o5P5v6V33K1Ic4ZatJR+JAIdaMBgLwt72yH8ts/Gce2h
	 tS6FuRQNimIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EFDC3DA4B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079450281.9702.17088584526927443660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b76aced10e2b700ffc7fd2284a821c69ec3d9ca518a3dbf8a442937aa80e03
Date: Fri, 12 Jul 2024 14:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720794502
