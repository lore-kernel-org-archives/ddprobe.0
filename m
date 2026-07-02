Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB2438E120
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782975514; cv=none; b=GBTXAuLkqrBt52PqHoALsX5IhiIxdj/fTPSt2q1fsy1duCwk0tN0Ha5a6bTJiOlUzeyGShaaGhQPzJ/S23heuhee0wNjmNhqCxs394ONBaVnV623MtGS0eFIJXbFuVPZexoO7fsY+v2rPfNh9rwpxmtS3IxeI3VeaP0K28O/2SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782975514; c=relaxed/simple;
	bh=pmhLThP2ANCEeYWmYrHoMHAGchDcJ5Ns2Vy5qc5RKH8=;
	h=To:Subject:From:Message-Id:Date; b=ijQoTJIN3wmZOxu5sSPAXeCdTesn3KybHvVPMNMKSlTyZD8Vn0jVzwTKgEmw8x+RiRq863Lt1DOvm/LUEpQCK0IJgUku60fexsPVj/V6dOvKjqpjoWUDz2hCVtrLz713q+Z09dg+j38Tv2MqSqK36VM8Qxdb5pqiwG2ZeSx4NdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB6OFbEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB6OFbEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EA4C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782975513;
	bh=pmhLThP2ANCEeYWmYrHoMHAGchDcJ5Ns2Vy5qc5RKH8=;
	h=To:Subject:From:Date:From;
	b=gB6OFbEtStxR+6FVNjRP/Sd3xVY71NUR2n5zfJja112V6lhagFX72YDvovOOPZ+HM
	 FH42s7uejMRzdWhJBWQupptu6xEw9q96o1vq6yQ+imJC56NH18BrbelX+5uWW5ZYrM
	 K0T7RR/xgleOffQhsWh1xDt7riPrDD0SKz3r8B9cRpLRiDdxGO0sgi5vqeCYgMATV2
	 khOL5njvo2+yhBnqtOHclimxn8FBMNhV11H9Qs7gl9we7/QjRM00AUfrUfK1uRd0Bu
	 GO+VkRCKCXQmQIn6HKbh1zMZrlso3freoNB9n7s+rqQUA1o5+smVe07blok9AfiZAd
	 5itZsY+Qe/l+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A821EC43602
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297551368.906.5172897016667123830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c5c5e1e3b829888070e4e58a1967ff6450e647d75022f3146a3c082f6cc0be
Date: Thu, 02 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782975513
