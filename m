Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A10249EE
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707065897; cv=none; b=rqL2DrrSbCd71Zzu+w8bcOckDyROHijnE6vkgFcmF5jv84JcpuY8/XWKDu5OX79H6vqmhvdAxHqo8CB3CrNVLuMBcZtNIsSLJdUVUiV7tHZ0NL3/GbR+LafxAt82nFxPetCycMtS1dCvwqMMUGxoh+kIMOyTKNPU8Fi+VjVnFJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707065897; c=relaxed/simple;
	bh=NI2hfB4Oy00pNoOq71ZYy2zd7OxuvvMHRn9BVyuiWAs=;
	h=To:Subject:From:Message-Id:Date; b=Bize6j4HAoFDUVYI+tNm6NTRNsoE06uL6p/CJFRxiBXytsv8SW7cB34WRtcOdkXWAR486uGliqJET+XBcxreE+g6rzN+iC/S/jSYQKqJIVYTkMNoD/56G7XZyr/6+w1dtUwhmINGfh04BGAORLBbdaWqwJvXEv8Ch/Qv7dzaAjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P68CvZwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P68CvZwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86134C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707065896;
	bh=NI2hfB4Oy00pNoOq71ZYy2zd7OxuvvMHRn9BVyuiWAs=;
	h=To:Subject:From:Date:From;
	b=P68CvZwR+LrwMB9ChzzxmxJ+vjUM23VR9vP1ghnL8ttX7c8SDttvlBLvB7jBEYGRU
	 QD9KzvIDXzePgan7ZjAFxs4IsV22IL6vGYy1z9akSkEJZnUYnJAGGjlTLVR5QBsgmd
	 +/BJKfmip2KIK3RG1svGRRjPWOqE5f7K/TNSlYYUUKfUHcGljcNGRgNDdY97gsvAc4
	 a5nda815KMUHK9KMUOxS15+UX4is2X3TrPn33NRys8nW943AbeO8+OuqmUvhJFmAk1
	 XiVtcPE1HQK0YTJ9xyFzXlMe+fw+RMLJFWacan9INMvL8czas6DZd7aZOlprF1GW2o
	 eu1tFrw+g0+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DA3C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170706589641.31764.4482433633055759567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f21ffae82a2ab39fc43ef42eb3f80cc202faff6c2aa6cb403b18a1d2567415
Date: Sun, 04 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707065896
