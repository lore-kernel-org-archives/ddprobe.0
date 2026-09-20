Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E44F390999
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789923034; cv=none; b=rqMrVOK6ACyuUSDdhuMABpUkzLADNPszdSNU7xiBd9xuDvCQYIxTuk0ovw1QTVAc9otZKFgTT9ZhJ4kQrZ6CveFxCWCRXWIZ1v9TCIsxyZxrbvyv8RcDrOd/E5MJHLNeZycBIDQ7qqrpo7ShbZGXFJIa90scUeH3unzNu8GX63g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789923034; c=relaxed/simple;
	bh=EL3FIJdN0SUTL5oe8aHMolh5eFw3EfsMSQ39FcdxX64=;
	h=To:Subject:From:Message-Id:Date; b=Ls8KCvVhmoSC+RW1XPYVet2DTH+BGuj5uMbdyIy8MKfbzGG70PzhCxAe3Xlw6/N06gtRRW6soEmmltKXqYFH785SNJHjuN8gUPlVEDsMsKzxMvKvANie69/PlwLbsX0z1qIG6tRB/nEei6AizSHGp2M7E8HUG2whbHsQpPxS+hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCiuoZlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCiuoZlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3606C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789923033;
	bh=EL3FIJdN0SUTL5oe8aHMolh5eFw3EfsMSQ39FcdxX64=;
	h=To:Subject:From:Date:From;
	b=nCiuoZlF5seZr0ikxTNCNfFErx9j11iU+alQl1M290DQHA0WLPcp0KR1Axk30C2Sf
	 5SmgbagiVsbB1V3jumoxUs/qKYmn+guQs56GivMqI2wZWNZ2NPSD9rRg6LyioiEdij
	 6l4XuXR8/e0D5b8yhBfhyrDcal7L0V5/xd7KmPH3vEf9PF9ZhxCIt9ozGEfuIj7OFX
	 pwEKGcm+XadttV3qVbuTYa07gm0keAnX5uQNZlIBFFcmiH59PVuLIahZEMn48gfhGQ
	 AqFMJRS8PJ4tSJBdbSF3GW935nSVeGAA8vjr7H6nUFeiIBrmFubQYLCYGUaEAQRtJF
	 GsK6ESpbbGg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF91C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992303368.30562.7154505185066574106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c177df43a3ddfffa3d92a40007495ed50e101d4c6b926d553965ddf2f856395
Date: Sun, 20 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789923033
