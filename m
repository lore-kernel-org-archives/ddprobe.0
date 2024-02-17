Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130667E58D
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708208897; cv=none; b=A1d4Ey8ySEAO8jbiDLEhehKY7dHcBw2NiW68EqQImgUiKq2BkqBzLyxru5tMPFxuWVvCDwipyeY8HTV7SMHqc540+ALakj8874c9DNjOLAdjApwYJ9U/RyFLQRVpFf1EsnYrYQJ9ILLDRTuBbWpzK0VZPeB40E6qs+KWCFHC1cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708208897; c=relaxed/simple;
	bh=vvdhLKDhmQPcAcyrWDAWvGxCkOCmpWKJHrhvXgwxmIY=;
	h=To:Subject:From:Message-Id:Date; b=p6RPpqZJ0YyLPLHOnyajjT1QV4EshtmDBLLZsE+VkZ5KwmF6mJ/dyuOcJNyk7Cs0tso72VqeTvdUhdyYeiz8WB1IN1/jYtVmZknhlPGPoKuG7ORW9seMAI0WN4Tbb7NWe34W/aKhkIuovi5WSTVac3sHg5m89ooMVxNasOtaGAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuL0ry9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuL0ry9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B5F8C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708208896;
	bh=vvdhLKDhmQPcAcyrWDAWvGxCkOCmpWKJHrhvXgwxmIY=;
	h=To:Subject:From:Date:From;
	b=GuL0ry9j7XT9vLT629zs2qXz1bcTeYyHuT+W9UzgjbHEPMvO4qEOC4K1elaqr0onF
	 eK0IU4fNJS4yTh0lDozkrVUkAEQ3Xv3SzoYIssq8k0AXceUed+CVyW9pDgIRPk+ZGP
	 Y+cBa7VOSFaO9gcaSL/XztmVYXzZ3yxolajUUQacf8xUNJZidS6Up9v7Snn7Z1P72J
	 RqnIP2NGbCe1GcI/pg27aCUUkfGmjgPrxSdeFYgCKeGYUSdDPJ75JkrsTuJZIDcA8f
	 oEwzughCnxoEIPqyDrByV75mJPkgPHYuUlO0WG2mDaPbMQ/DaCtWdwtZCJ1YfrtGfe
	 XymBT4O9i9i5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70481C48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170820889642.15388.10824774867318148240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca47585dab1fedb6e10f3d7073c2721bdd7c627a478c353ee2d7bebf41e8538
Date: Sat, 17 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708208896
