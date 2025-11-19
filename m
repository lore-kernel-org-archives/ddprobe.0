Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11B830F542
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763563314; cv=none; b=UpZdY4kjYRTbVyMqSdHpPy6baWSj7dYrbDVlDAxVBiCyxGqi1EUVr+zLqhlcnbxIZXeo7HmLn2hsOqvWSyzW2vVxladGKnaDTXFTJnHwXmSJmG+G4MA5m3fXk1QMQSfDwUyZ2HvC2at/D1cYXVlkfXFw8+EadyilnG3Kk96EOvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763563314; c=relaxed/simple;
	bh=ZvG5+cgewLTWL3husw7rjTB0urvDmVogTun5+zYdpYM=;
	h=To:Subject:From:Message-Id:Date; b=qqz8+QRCg/sWzIRyGqxNNWHwOKSrLhAK1CRNG89m6e28MVxLMfWACAMQZ/soRwIo+Bxd39Qeqb0zxANGKwybsB/0qnN+GpAFh1SXaXE5fdtcEXOry7uN8EZSFwudJFYRJNJGqz+ZoyJbpMFWITiakdXr/xaqJKxqJCgLKJbcT0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr3dvC6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr3dvC6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B811C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763563314;
	bh=ZvG5+cgewLTWL3husw7rjTB0urvDmVogTun5+zYdpYM=;
	h=To:Subject:From:Date:From;
	b=Nr3dvC6C2Leh/EzwMPoGzinCv3kdLkEKvmr2nTqXa0HcpnXIOIewNco283QDZwPeV
	 n3SMYk+4DMYR3Yk1CwuXQxSpX/6eRdtWlBs1RVqIWKlvJ7+Pu/+Yd07jyH6hHimfdZ
	 lTwW975/bj2x1nqVyi0ihzcO9ZmffqoG97hU8lT2kgBDv+CIaUJMBSWkMfOMtVeuV0
	 UbveJJN0XZVH7m2Z3P5WdeubQR0Q2hT79ERFSZf/fAjWEc3Wz50hpai/NfuBo/5xIO
	 iwMQ6wRAjOrEJUn3zJlAdUIX5RqeC/m0RI7kL6OfcH3nIgV3RoScbGOArGwerd8n22
	 6ow9Mdcrc+Flw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92868CF34AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356331358.3495.4137039270990551858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384c476b0756c4d7034cab528376f49de58294ba87b90bc0ce83c91f54642642
Date: Wed, 19 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763563313
