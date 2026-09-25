Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FABF355055
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790366434; cv=none; b=TW0M7QbuHTWF7iSzSK7xNFPHix7+Dg//9oDW29m7/nswiRSaNjVopk/x2V0MY+V5zhbh+NThDC+EYyS/Q/Wsk7Az8GwmdSzpdJPL2AbMNxZNxcSqwxGC9bMiHyAqs7Mr6Ii6oT8DZaCmLl198U9fqze2Ibdvl0f+eYXtEUw8rMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790366434; c=relaxed/simple;
	bh=9kHZVHI/ArvB2kzrAUgy8qylC+4HqilOyNVx5b9VeLk=;
	h=To:Subject:From:Message-Id:Date; b=aUXZnrJF1hz8U4xts2H656LiatAlzom7oBq7T9CUb5sbfHr9s9AG0QdiXD4nKWzyK4Dlt/v5cdFFzRCLdAsvZVOG777rk9EGaaFsyXpmminqPFGdrvrFwrH7lpmorcPPsVKNrIC5yXvbnBtXr+eYi3pMKEzfBXhn3OtjP/MgREE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyvSfr0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyvSfr0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F52C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790366433;
	bh=9kHZVHI/ArvB2kzrAUgy8qylC+4HqilOyNVx5b9VeLk=;
	h=To:Subject:From:Date:From;
	b=DyvSfr0Ae2N6hoV1beo1bak2mYnXG23CMruU5drg48GMj2VEKA/ybpo7gy1qTZGOu
	 5emdHRZeld9GtO4fwXndMx0jp2ZG0cFB/8mvESqUCJpkNjTX63M62ebTf+6ZO/IJlz
	 VNhXRxZAHlwxiE0jx5Vn4tWKHwuqQnVODQ+cnSqoCaZbzNg5WpKGX6D58c10AWK8GF
	 HCrq5qI4u16a+i6RdNm91cSSMcrdKBbEBDeiKjKMuPA4fxFl8AlGEKSOkbjTd2PbLx
	 DCkbt3deHCeThDu7qkiE93FK4EvCjhIj0NG/hVLLAI41FioOhx7fjBjYGiAAFrVlsB
	 g/ltLVPohiFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF23C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036643369.28471.18046591327004885569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a90ccd76fd69e8e47be0a6bbfa2de985dae81db14102d947a390b8ddd44e8a0
Date: Fri, 25 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790366433
