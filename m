Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B8A3E3D94
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782391654; cv=none; b=gFRBJTGLXvULup12tTROo+fcZRd3GBp2C99zAd8kPbJRfTck/jTIVvrKCusF4UCvi2s3wBRwKhyffefk4puwfPT2qifTpdObp6RKmJGnpVTN4Rdaj62CyeGd9uNprAyTsxsRKQCi4agD+EgBywlN43fIaIcNApjdfgnYmJxtLCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782391654; c=relaxed/simple;
	bh=yEnrIuV32Yaw5jL+8oLtitOWZDD4XYAGVYhWyg1vWPo=;
	h=To:Subject:From:Message-Id:Date; b=nms1UqqhLqUXN1qFC/Un45iUZ3srv7aZr1cwX7AhGL1JdRX/sqoZiDMGZC1UCzfsIs/vQoSg9wMqh6He0plenxlFfbnS9bFO8P3Qx5k9LH+i93vQn2S3usDg2/ew2+SkubjeBIyBptfHc7L/D5bsKs7c9Gcb6ZUD/fTbSkjCgOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5Tm1pMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5Tm1pMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EBCC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782391653;
	bh=yEnrIuV32Yaw5jL+8oLtitOWZDD4XYAGVYhWyg1vWPo=;
	h=To:Subject:From:Date:From;
	b=W5Tm1pMVtdEqYsSwT72+SKDXUdkLtqpVeQmtnfhOk3FSJYBlCwUv1UsetxFtc0I5t
	 Q6Lhmw97LAVP0YeRaTapUqh/zPdK4JBSYT49alPQfw1n/TFiK3x0wnTL+Xip4r6AVS
	 vbMWLWL2d9+kSkSzqjDdgxuztYuI8SuaD15mLmpnxO/senHNNxtcx7DzxFDAsdOCc1
	 AkkmPpJlaS4JhTQuXZJIl0FR0rw/YK6fC7V35BSoZhBlY0Sxa08b/v37PJt4GPU/6z
	 FxI/ct/7B3U3+ooNGQcYAiOCgLv2Q0kM/jay8vYXZWqlP78ipH1HxUWxDJhhe1uAxn
	 GpfchNhllfL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B574BCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239165370.1202.17839947065791391679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88314fb37c20a2db0c90c2a3aaf33eb9df9a5cf53181e017a61574eacef6825c
Date: Thu, 25 Jun 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782391653
