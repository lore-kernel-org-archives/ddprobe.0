Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6245712C460
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719949523; cv=none; b=HODAUA+b+W0W0Onyjt2h4alrSVbYvwHSfz+3Eea4sopVt7gT7oMDSunIHd9qj8iQjbPIXlexEhgGiA2bzb7Q1S+sz4djZsUEOSlq3Xi+7Uu/+nI5JVK3JOzsx4eCJqxW0cXsp6l8PNJIKXqpV1Frpud16kiRzdn3nWxaxWTKWHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719949523; c=relaxed/simple;
	bh=CIn8aaMAoIM6JixAmPfyp9RDnxzJVRi33F0uO8DmSLc=;
	h=To:Subject:From:Message-Id:Date; b=TqZy0hsfmGA5DGmy96B/UbmRMo/Lgq1iEHLH5g4KvS9YZTe4EN3XSbptv+46fSAR23U2FrMOn8RsRk5rubIPQMDZfhW3mcP6XHqrMqOwtb3PRSisF/XGhUfm39f2zddATP2Peo7sOdBmiXZyFia/zBuAWkAQACnyUu4pJsEr6fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIS2O0Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIS2O0Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2301C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719949522;
	bh=CIn8aaMAoIM6JixAmPfyp9RDnxzJVRi33F0uO8DmSLc=;
	h=To:Subject:From:Date:From;
	b=fIS2O0JmeHfy1pKb4HBSGBDEJdKsFLs2mP/o9W5tFN97ZazDX+Anc2/G7VNOcPTFH
	 lKq1SKvDaXrFlF14vZQKQZNh7epvKwTnZkRGsTB1JpRTCGNZgIW7+etQkZ00RTLSZP
	 fagxK8uUzhkrWjPq6cA5/GDG2cIGYoEa3+MoKnqthJ+QxdaUKhhorBzvZV2kAIUBbi
	 FqMCqmPSaTgezX+OIxbUT8EoC4bxvft5++Tw+GnQdTZyWr1txP5t1+2cCiaq2V3u2Q
	 9TIJJK+xukBYn4uOYOCPGAPoppc/5wzrkAowD0J4bHK/ZNz2xWYcJcYjSRXL0K8giH
	 9p+rgEJ+aLOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4D6C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 19:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994952282.19960.8470041490651379558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e16147617aa7f0e1f169536a5d0daa5230be673317bc436808a460fab52b0a4
Date: Tue, 02 Jul 2024 19:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719949522
