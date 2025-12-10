Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC8F3254AE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765372374; cv=none; b=eX0tCu1MjIu7RMOxPaU1SbprU9mUdsXcA/uzwYPSiDyvS+XCTjuuMJDXPuose96UKhO+q9ieVOymdD+sfzeq/sA3W4i7xT61w1Dt871H3rlQZOTEBvVPu6Fw8+0sIYX3zLMPfoHhgc/EYZDgPViq0tx7OQ/IOIXnuwavwCDgIwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765372374; c=relaxed/simple;
	bh=S9G4f6TTU3+qkt9VFwGxYi7BOd8sgjvH2taW+gpQVBU=;
	h=To:Subject:From:Message-Id:Date; b=PVAQuFF4JZbrJeJwkfFaG5ejsgU38XOLHcIsRiiRSQT7ixCMl1MgpbCM7eNBXf/xPho/KdaHoyQVKh4XDNpfL2zneVxYob6ZKRDZDu2nYc2XUy9PUnSvoLF1MOTFwIkKvtMVjkkvZF7l/JBr59I9pqwnCYugejEYpkKeNsG9uzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqc6eGEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqc6eGEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE185C19423
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765372373;
	bh=S9G4f6TTU3+qkt9VFwGxYi7BOd8sgjvH2taW+gpQVBU=;
	h=To:Subject:From:Date:From;
	b=Eqc6eGEjGxn1AHakjR0Om4AdNFU7NJOy46MlGWROIjPHdzUUZXmDegls41MLUS1ya
	 WdAR1rPM9tgDHiQ8aScaGOwDFi5o5ZMlKhBFIsxP6cRxhBH05mbWX2hY1Yj+pzUrKR
	 fsbJTWwF896/9A4Hkp4EmPgS5amaVrPNEyGXmO1Lp9nkfHOUUMne9XIYX5KRqrPmZ+
	 q3GQtX5qHxOpCk2dsIvtSKuSBmEsOc16wEo9uqAtrumSaS+Ubfo/R1pWz9cSxRX+Ta
	 7Z2Sd/jfouXi7kvv5z9VTKnzaRNlowC0DLAllYutOz0Fchx5h+XncQEa6GsR9uOfhl
	 KPrYH0ZW2oL5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685DD3C54A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537237359.29695.7140997433766691103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf204c28ad66b6c32fe27ff299d4dc7a5c7a7ae5dfd9c0f4dd3269e013232d9
Date: Wed, 10 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765372373
