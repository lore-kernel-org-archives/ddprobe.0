Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355236B92B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787872834; cv=none; b=DV5bMAFXUV9yLlI63zNENrzt+xQVtp5kGrq/frU5/ONZvPO1F543XtSzgZkZbuJfmO20TiGmKQFIFP5ifQ0Wc9oklFl9WTcg7dFlv82RD/QTkzJUYEpurHkBamQY6U2PXxMqCWenh/gujRu01YAp+aDrok7MQqSJ1KPu0+T2Ku4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787872834; c=relaxed/simple;
	bh=fku+zymVFWOrUhmv0U/MxNz68eHbxOr3R/HdTRDViKs=;
	h=To:Subject:From:Message-Id:Date; b=jERr2n5l2vYlpz6xVpmZlXjzlZEKml013Gpr03sz0hYfe8/UNsIF/MWhRsVatJ5GQ3a3YAAMhLM6Eh/sFdkAVZ3j6uxoA3vTUuL8Crs0G9kOwBanBfSJxMWDZVBQfplg8JnJ1uI69xg3xH95mHSc6C0YZgZPZ+VLDvr5cD60zRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeRww5xS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeRww5xS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB275C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787872833;
	bh=fku+zymVFWOrUhmv0U/MxNz68eHbxOr3R/HdTRDViKs=;
	h=To:Subject:From:Date:From;
	b=XeRww5xSXuj1lGFxP95cYvYI3QchAJFSpPD27L6JT9kAl3mXTGthw+Kv3bdxj2r6x
	 A8q07FYKof6OVu+osEmf/cfJ3dvzWgBZt1KSqsXhrU+kI8v1pqej6v9uwmWddz/ZTN
	 /bz/4KfuSKFxysZfa6s/91UEr22HjVfk0ThO8kfgfsCYQqtVtCVOamNK682dULL7ls
	 ipTZ0A8x7LZklBn/Uy1AXJhcFLxHczOh++mSzcMs4uH9YaxjXLXgp7c7OVg/VfWycT
	 Teljtptg9foSZmEWqa8EWP6j6a/DdnlApNC3yLYubNpCo6p9azrKUOgoGcqQkdj86W
	 92GPBtC4/3OSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D11C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787283369.30657.8083905779280938622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2641ceb109ad1927a29405ba542f10a29389024902f59b4ece6af5c179b4913b
Date: Thu, 27 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787872833
