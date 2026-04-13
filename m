Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D8F36E493
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776105454; cv=none; b=NFcbVmCanaoyVDub0A9lvlMte4FCUC/WhKKa09iqp7ycKtbIGKnJZ2XGtOTu0qrorsUs4zIg16Nn8biLGkk6gkNk3KXff1jt46kLrSKBZu0BL7hU7bUED1FDmaOnJ/I97A+jDPMUuGKgGec+sqZW0Ch546GcftZy3P1rM5kODxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776105454; c=relaxed/simple;
	bh=RcHzgl4+RcvWDcvujFnoyEIbw0e8IH8+mFp8ns9pq0s=;
	h=To:Subject:From:Message-Id:Date; b=JOYqIZRbE56/pgXAf1rjaRhX63DuGUWkZqdJc4kwOt/FnCUJGa4SXymuv5YM2cJiSQ3ZEio+ZJpqd09izeCKzLNyRSfrTjPzTQKqrRDFGD6PVaGUw9lAMFGpFNHUIP+Rx+ujNFrHHitAT2cPHThxBb28Iyn6ewyHUenQsyaKZAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUP050z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUP050z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94DFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776105453;
	bh=RcHzgl4+RcvWDcvujFnoyEIbw0e8IH8+mFp8ns9pq0s=;
	h=To:Subject:From:Date:From;
	b=FUP050z81b3b3n3LtIeKrwbmx4Io+sULyae4cuTm+CyYHxZlWDv6+xWJrbfssTGjp
	 tpL741dKJoNRnbU/VyXnsESGDGEvZDpOmab82H01vOB43xKWYrFJ3YGme6MDusCxBZ
	 92XBCrtrtqdCFL3TIhIkyFosf9r44+StwxGMsevREbZU8m3wq79R8lr2sgtKsFthBX
	 56mJWvDo5F1P6OEC3SLvUOOuW0q2SLVsbPrXf/Ms7TAiz5+22OF7wExlEfQJIhSJPZ
	 yBDvK2tfW90vUYieJ9htApNwp40bN0m2Rw9Frs9aLhIs0Ur1H351qsZ3TU2+sOhWRY
	 L2h8nMWbqHw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA500F531C1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610545368.28171.10006304672867706261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93705c195e6281ce614253210db9e212c9791a3d296f4c30f07fdc8e908e6c94
Date: Mon, 13 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776105453
