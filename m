Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404BD12B63
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746157794; cv=none; b=q55w6DO6yhhUVSM/bGmxkY4f+7XxBOtea/lxqwInpv/o1hSkKqWbORRj68DG2PfplASMpJNg8FlE/2A+jGBX9NT/iuM50+RDXL3hdiliE4APOuFx7qC5ZgD5jd+vdzT8MCq1rFbGLiGcFGinoM8GUiKmDQltE9y5/i8Pagn6ZhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746157794; c=relaxed/simple;
	bh=K9eCam6cr8vTCZVM4okBvxtuKHIBlCIrbF5AOPT0hmA=;
	h=To:Subject:From:Message-Id:Date; b=dA6qygh2fufDBGxrLQWuk42GxUf9BBPpT/V2bQVx/yb9291AUkcORLTO5g46sqckTG0zWJ4de3X6jSIojxFfl9LWrH5ynSowiCL28CMVbBdH2kuTl5vQGDkz0aaSk+zk3SmdDyR8PO7tEa5gL05G6ZMoraT7a5Z6ECK1nx4hsSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9rmiiYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9rmiiYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C75C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746157793;
	bh=K9eCam6cr8vTCZVM4okBvxtuKHIBlCIrbF5AOPT0hmA=;
	h=To:Subject:From:Date:From;
	b=R9rmiiYpU0CK9BGnYXEtOIKCELbEQyIa4855Gl48pXAV6vPSkxNa3pHYQsuxhkr8p
	 PGQYSfBKSO45tqYDIjuUCNIPQKc2NXNS+uoE2xd/gGnUCKJjahihYieSKPUFZg7lgL
	 dz4DwiP/Hrbbb97LQi/R1h+jIUzerwteV3QKVqr+Jr6m7Syd1VcED9PdNhFhuP0Auz
	 L0A5I0EqqmgEjhEZtGWcjNvjYpvEifhlTzi8Fo920375IvOVkdipeGsdBPelB9g5mH
	 UzKsYYW0aMRtCRY6sGAGQpj1IGFW44CEiC1BepRWnyGDtWvAsDQRZT6VxwVp9IE0Bd
	 wZ4ONnYvcbpuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92434C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615779358.10383.1236314905057663689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06e5812c49ee02315bb121e517db95a7782bee0cd369f3262bb672867fad888
Date: Fri, 02 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746157793
