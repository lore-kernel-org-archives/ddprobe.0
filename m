Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5136A24A08
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726021554; cv=none; b=UBRcL4SnycWvUtWBKmhv9bMRfxEPLRem2ONskJGyD1FjBNKKAhaYbKvAF1VuJHl59d6bQTgNZFoB2xRNnS3njZpr1ZpQglH92VfZ338F3ZSTQvqZI9atCFE44KssFcD2xSjcQGTJtV3V697AQxbXu1PGO+S8Txzmlq/hKQmYe7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726021554; c=relaxed/simple;
	bh=MbSW1PNUcMQyfygjqtrLLu7foWG/PFsgybCqiGX9h0s=;
	h=To:Subject:From:Message-Id:Date; b=N+PzZAcAiS2M4grI898VbiqhQpzUGDr6MvmX3CZShtD2mTWrcwM7wH7Ec+aFKzAi+8ONSkvd1wiFOQQzuE9S7T1+WZHPQ97Lo7hVNd5umVcL9J5o/ZiXjJoa1ZgBXaLlP4yigo4Bk4OYebywKoBbZUqAQ8wrV5M2gQqhNYpFwLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVM+NRvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVM+NRvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEC8C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726021553;
	bh=MbSW1PNUcMQyfygjqtrLLu7foWG/PFsgybCqiGX9h0s=;
	h=To:Subject:From:Date:From;
	b=PVM+NRvNZDT9bHpQYGIEnGNlAd8+vIhLjymj6EmH+AtofVaVlliRGgv2kHD1ug046
	 xEvSZuCsKM4HvfWLJr7oNmWQp3MUX19qH7zb0spIHGX13Y7IoKMyBInTA/BpGuPqQm
	 uAEy58BS7TzOR0cT6INIVuFYVvQXfebgYRMRjko9o/GCShAA/VLBtd0SwniXyuZ+o7
	 keodnd6cDWHb1+Rsn2gd2YkFKSlbZBuG1R40ELpeMrZCUD4Usp2qSBoESvIRPBZH28
	 dzZ+Td4xqp55KnDyKAauDi5Yh+A9wtdbuEV1Z2gcjny7JRl4H48tZe2QrHLL0F35U1
	 5V8lRAuuusnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473AEE01FA
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602155358.8996.1252496778762611415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac25b232c39a84aa8ff2bb4948b4652b749e8486f4cc67ea5b2ddf898dcb2f31
Date: Wed, 11 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726021553
