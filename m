Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE50331EA5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788585634; cv=none; b=kKyOoJjWkwQEH+nc2HVuBFCa+3XCHwLO3gcK5nwS3F78vHSKux8ARKqxHbYYaaE9IANRXqq7ETjRWsmwuwSuppLS32ZgJGqw1Ra8xpM6ZGJI+00hBMvYxVVcAgnqdmC6fHZUAa5r+5+xbulqk3Y+bbQF596JO9/qLWviGMK/1gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788585634; c=relaxed/simple;
	bh=p5QyndXmAVwdOWO8B/fh32UKGx5AuAsyoROWSe0YIiA=;
	h=To:Subject:From:Message-Id:Date; b=AW+YT08otl+ZFAPi7xoF6Biz4XfED8i0RFUcwnoBnIm8ftIXGYVoonsZ9DuItgM8UC9kxFM5LV+xFmxBImKgbDIjrHPsNTtsGmkUT6eGiLQeHcpmv3V/JM0cSc9YloLQA7IUuUB97ty6f/ioQcR3SPMdxPchbs8VgIrOWj4ytoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3lqeeNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3lqeeNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A3EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788585633;
	bh=p5QyndXmAVwdOWO8B/fh32UKGx5AuAsyoROWSe0YIiA=;
	h=To:Subject:From:Date:From;
	b=O3lqeeNoYaoo9jy3ocsEX2Y0BV162PWGxoaXsA2A5j0WRRHFW6v9tPiBLFRDI/HSC
	 Z07yY5d4A1nKNIsKLy66l6sikvng9oomLCA5Xdroqq1HTMzulCFiQZ22VAriScb0ct
	 GytBpVhOQwkjQ7IO8Anjsasl4N22iEafelOKmYd8TPHtfN0NDpCfqbJqOh3oJIM3bZ
	 /PjMke9f02n821f/LuqPanQ4TVQ9TMGvCbe1TqhlEIxytm+5NGXiTdOnyizLvs3BLS
	 6rjUZI8lJqppc1ZM27iX0zoaPpFTW8qTyeWrQPsXqFmWsUJPOV5E1yOGddKte5U068
	 HF9Ik+WDunP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE011C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858563369.21956.5390902384882381551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4885e7266bc29fdc3dae3c8256660ca608c37422274ffc85abd5d2e881b8b9cc
Date: Sat, 05 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788585633
