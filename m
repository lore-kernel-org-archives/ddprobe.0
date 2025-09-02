Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802D42049
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756777194; cv=none; b=aCjacK350z83C8oveJe8XwHuRtyuQ0DZsFTxwWvIu9Ujm/YCVWqJrKD29YWNLkdmARhva693aApDZ03bvwmrWLwGhenkhdrrkJKxhso31+fgaXht4e0bLbzfszQJzbcTXqlnDM5UHtmoq7BB0U5zVgiUE6GK5wGwH3YCDeF5+5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756777194; c=relaxed/simple;
	bh=5lwODWAL6cRf7v0zKDo9ggkq1VNtD1dymSqftvioia0=;
	h=To:Subject:From:Message-Id:Date; b=PvDc2BuxkYw952goHuCo1gy/S1n9yHs9f0HbZI6ErLo6UeCgtaqEjLCen1DW+Mg1OGBVw5rDW83UE1Kimuj3NSNTITtgWA/66UcewwtBviHnM1DRM0T9F+guBjHVCIBG7K3psVzbBWinDR0yZLXbTesOTFH5LiO1WWIKLdDGjGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRk2xIiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRk2xIiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA034C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756777193;
	bh=5lwODWAL6cRf7v0zKDo9ggkq1VNtD1dymSqftvioia0=;
	h=To:Subject:From:Date:From;
	b=uRk2xIiLzB10LusiptKB1x5f8B7KRY78MlZWIRwp9MHiPCRdVQ8Zngxuzlj936qqP
	 QclD1WKzxDQlvlo59jlJ+H/AkKvReUthp8vrFuDDh2Jp+zWPmc5PdTrEiTFd6dH8u5
	 V4+M/5t0XTy00NbbBy9/QxtOQVfqpUUVRHH7Futaf7g8JgyQVSjQAxWZdxhAgOGljG
	 bUrUysQT402xJ0LOJsXNm1fw2JlPCI4vnEjbeOXRqO0dJoHIM2YCB/2dL08d2zKxxo
	 p/fXP9Rs2jzvQNGFsU0OTKm4AADMrOrSPglXd9aA8vCNWawpLR8UlBzuLLp7gvoB1v
	 0rtGWAMHwHvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9126ECA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677719357.12666.11200952202474401257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ccb1cba76ae0423a92da1af9d17fd648dac51dd8b9b8222aa4c463fdf1fdde
Date: Tue, 02 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756777193
