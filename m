Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5291640929D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790206834; cv=none; b=plZCjRAvuiMbGv0EuJVNaEwiTfA6pmS7bQHFjN8DwUMDlTYduSIfYO8YfI79QTRkeJN6PusaKn8y1b2I/+TGOghUy1EY2yVF2Tj7MBdC9MAd9DECXk2fZgHgESDEu9htGlxnRGexQR+0OlQaLlWHgn6zdBnEisGwXJ2d46qz8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790206834; c=relaxed/simple;
	bh=IE1+YzPd5C5wjdSp3jSQmyDDgK2dzx1gscQKYymqvlE=;
	h=To:Subject:From:Message-Id:Date; b=mVSEy06cuYmS+O5HYnCC5FJYu6vgaeE1yy6pnh80gAMHSYHTbE44hhUp/AZRYP+5k3ermuwmFlOkNkwIF2N4m4kG3Y0hBtmeFJdij/R3FO1cgim+B05/EKaKozfYmIbsWVVUlCpBQZHmzkz6Du+6WkL4xmr9LULQRhSHjUHhXU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXLZEaQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXLZEaQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D203BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790206833;
	bh=IE1+YzPd5C5wjdSp3jSQmyDDgK2dzx1gscQKYymqvlE=;
	h=To:Subject:From:Date:From;
	b=PXLZEaQBXG+gGXYdZ6lVcpFppJVMWbR2lOeSLurlJ3+bbOUbMG26fuYbjpKp8lMbk
	 H9/n4JpQM/LKodfK7gZr8StJrpdN01qSwhZgBP7BwRwkfyLAE2jSbEjzRvytamCwSd
	 H7XQFNKnWABCBN0lc5w6SVSInzUWBUGL4fctolHlruErKTkmOrvDNwXlTx9J8uayU2
	 bXAqML69eVkEG1EaF/NHlQTXQiheOEAbB6I+UDzeN0EJZy9OgboiufwplGJDqwGm38
	 H3gxvL8/QjzE93uPFYaiIJteXRfSN3nzaDRxhNdCUMGMzJ/CEwNG4TAYAkgD/+Y2GC
	 FuS3thTkY0Tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE683C9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020683370.30056.8109981703907326651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12deec4cafb29c3b08d3128e8d05160a40879bef8a5f4629c3a5b39fef9b6ac1
Date: Wed, 23 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790206833
