Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BAB82C7E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732767354; cv=none; b=AEKIz4X1kGYgj4TKy9aJMx+b5DMNhTy7/cXJo7q/p59M4MtvzQrR5S8sjffaBGcxMf/UKbXLLtsawV4tzOGoDNi5BwxelJsvCUVJ9LU9oNVbXiFjMNUTMyndwGN94hqaHzSgJ4hU2tmtvqjksp2jal/grXKQ9XUUuHhbWpDNT6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732767354; c=relaxed/simple;
	bh=TKuFcskktRatElARZmeO14biMQQS0ujzlQgWWYC5HQM=;
	h=To:Subject:From:Message-Id:Date; b=VD0H/vKSdcG18W696BheqMy5Jbffi1lxisEtdfrCsZrRfdnobNKgQK/Gs0tzf7N4nfFYnlHHWs3UWscKoVf1t7AQN0VLDmQscaltCUUSW7WvGvj2RbL8Qm8vU+wcsE0/5Ov44uzyUXe3psLVLVsdkUXMDvJFRPdd0g7XMTcY4v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMqi2R3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMqi2R3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B42C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732767353;
	bh=TKuFcskktRatElARZmeO14biMQQS0ujzlQgWWYC5HQM=;
	h=To:Subject:From:Date:From;
	b=FMqi2R3+ORzNXpDWYy2C3k4xyoNnRleO2TvVGr2v7yLR6zGZ1eDQQ8FDqC/QHppK3
	 8QO5jv+k3rgJi+0s6z8xlnsBIkCj/n5Nj84Wlf+A/wCdmc6cF4aWtgttegeW+ySHeX
	 a2ywj/9gRVhkO1tmX3/D4PW3VwvBv/4nRSLHJQHY3Nw6Z9mDEuvuD/agb8w6UhZWr7
	 GJeLxk2Jhy7xXgCLw+b9vkBCP1Ivk4Pathh2tF8yxoXuH2CFFeA7h0l8ev3vs5zqzf
	 SRMzxIFUqz1zP+QSd22Hpp7kFGPDEpDVB52+lvc8EjGlQiaa1EwwuPuBaUr1Sbb1RY
	 CiXe65JyFuOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F384D6D25F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276735364.30886.14459514648767470731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81158c0bf102c0be7008adca8aeae4ce325e9020654f12e18a90f162c611149a
Date: Thu, 28 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732767353
