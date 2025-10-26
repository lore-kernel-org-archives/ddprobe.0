Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87524A08
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761454793; cv=none; b=UHXsQRfF37jsRZRfyl9HwaJ+SPCT5pW86KrtKSUM7DH1CnyNQCm7le+rlnM75BLKhEqbrINakLhnysHk74O3ckf9m1tWrrvbYDEhvilgiKIaIhVV1+IwqD5VA40ckVhHq/6hWmW3dU24HOeHSWoupajIywbmv9liiC+RkB7voz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761454793; c=relaxed/simple;
	bh=IHXhHbqRgmUP4ELNwLrwGCkC86qZuis1ctwa2lbtILs=;
	h=To:Subject:From:Message-Id:Date; b=umi2SQMBfUJMNE20bonlyuZpCoM0CLKmRv6oHSRixWsMDZ8M/+JkUMRpaIFhCufS1vdvnO2NlzLji+GRONi8VmynD6HuDVY8UJxEjIx9zefpQfKc31+rHvcwsqabrG8YUITnutEUQuCV8i7d+uzhHzCi+DOK8WRE9ZMdVQMUwcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz1L5bH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz1L5bH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761454793;
	bh=IHXhHbqRgmUP4ELNwLrwGCkC86qZuis1ctwa2lbtILs=;
	h=To:Subject:From:Date:From;
	b=Lz1L5bH/xA2IKJ3IdO1LOUi5Bx83TNsK28FFTEB0+BPeepTceYY2Y5Nij75bHjQzZ
	 nBgQ/LXjeay3q9XMiV7CfuijabL8n1wxeyZXhFU4WbIVLm7f4i7v1fKLVc3NafArds
	 Kp9Yoj7vRcRDc3Lt45i0empkpU+x5YgN/LkAAA/RnMmZQ25kY+uCTo10fJAlOTIIAd
	 s6WCV2hm+UmDnlZdG86wEOZFahQVLOS2SDxjGsry+TbVXBAKXilWRLT4OeQr/vjCUg
	 X7/tKvQ4LiVmvd96z4fNg3nqd2AGFC5q1YVAVB9qXcxxIOs0Mpikdt7LHz2NQUJD5e
	 3BATQy+6FAIgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120CCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145479357.16222.7975290547006662200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed30e67784ba29cf9a7dd4f0eb756f64aab38fb925ede2dd4b3c3ac58fe5ed4
Date: Sun, 26 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761454793
