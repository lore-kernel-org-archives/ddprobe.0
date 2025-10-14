Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4314286342
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760422794; cv=none; b=lqyTKT/mQfvz3TomSkYel7SzaQSYW1Y/3baCIA59NpB29Vbo373lbZ/9LhPjxmzcdD+BqO74ggfw4NVzM1BPz/lpxwQ9LK5AhZBlZxwcxJa0XxQ/EBpYvHyVVbg3WOCO7Vvgt2Q6qHbUNQ44OIqpPqHPKkiyoC4etFNS6gu8esw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760422794; c=relaxed/simple;
	bh=juUU10E6GymQt6juZKEshA5Gi0i2UGQn4WbZPVzRVVs=;
	h=To:Subject:From:Message-Id:Date; b=VDzBCAbE2qV4UOv8mvRx4XJE6nVJMikRmf8i9KgT1GDULjK39l091oMQhJRBYFWv5NOG6+ueL/kgritB25RyLSK7UuL2HX5xkHL9MMv/HCvdNMbBRPrCUYv0LQPwKzoC6v7uRFDQdVxHHnX1mQYCnNqO9WpGd2hPtCBD/8tvfgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg6xLOJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg6xLOJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760422793;
	bh=juUU10E6GymQt6juZKEshA5Gi0i2UGQn4WbZPVzRVVs=;
	h=To:Subject:From:Date:From;
	b=Fg6xLOJD4toBDQwYiY3W0xn2daDJej9BEiUeGFyrRNKvGnPEsHmihQa7xKuRGUzi9
	 P8kCGVLp8+RCJFyagprdq856iKFKESiR0R8d8VawgcMc1U1agLW+fEXMLeWFqDRc0g
	 MN4vH42JHd/oatYgCSxV5PvwvsjvSt/pks23O56kMcHsaIykacmIPeYNLftNNnnPr+
	 2LCGG8Bmw80eWl8pGjaJZZSXRMJGZF5BE5RRkvqhEvCGJy4ybugexMWmUwRe8NEGZq
	 usbHV5538xHS9BpiEIvIn41MLQN+nD8yUQ3o1JmkoLaHMexG6jJ1rKxTsGOB1hIraz
	 WTA8A9t/dehAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94387CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042279357.12470.15264629964678854913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41950d28ae0f50c0c32c17c82ef35a04faa77e2238f8e8664b619136b29362b5
Date: Tue, 14 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760422793
