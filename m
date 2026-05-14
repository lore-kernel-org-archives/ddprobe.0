Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424833E0730
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778772634; cv=none; b=nfzHODoWvjvM/KBNcrsvh58frn6IPOJFTUF27TvU0cG2gCxs0chTNEgzpTuPaqdA6RSdn3nOGDJD+Jmb7bQ5QFfQ6edgwajDpiFdgdIgf87Ctgm+EQG4rPPJVrkcDFAyXEdGesPdNU7n69BZqKSDjMe0ipf3u8sm8jsbMUgsZ54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778772634; c=relaxed/simple;
	bh=dve7Qwt6MQHbWnxo1RbHBZNE1WFsDvwTPmxNie+72mo=;
	h=To:Subject:From:Message-Id:Date; b=GrWmzIVRo22os01JammPX788RoDsQ0xB6nY/eI0J7yMtY0E+OSVw92bld4zeaEB8QDEHUpWvTYhgiruCobudFfU6qMDQNHhPATXnOvlPSM6xFtlkF31MNzo7xEujdlY6H4P7dp0pHvO2/0E1t+6sZb7jn/6L9/DX9vD+h8T0S1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBmD03D2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBmD03D2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A00C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778772633;
	bh=dve7Qwt6MQHbWnxo1RbHBZNE1WFsDvwTPmxNie+72mo=;
	h=To:Subject:From:Date:From;
	b=nBmD03D2CgfEmTey3h7JefEpGp7PbcLr5vYuQJgoAJn/AqbFK5caZrSF80b6cGHtl
	 AwZ9uEex3I/0Ib/DHzbOKxOfn54r1SGCLl4bmlk0rSECQdsEtdFz8nXkg/j13Z84+D
	 0vXSrMfqyPqfyJdm0dvzIcUFJnnlw9AYdUZnx6v9Yhx4fH9an45l3LaAOjKdS5sr/i
	 cBviofzWJYbEj2vuV3G73B3ZEADAgMgVt/LiXdqrbmK65OpV5NwphgNKhrhpIP8B+m
	 hs/tW1P8APNObJ+vjsb1BK0svmaM40jKcqIRY59i5/fBDZS4h618Rbk/5ZuhiYwwgj
	 QZLN0nRRuMuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0446CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877263368.8210.27192682442268073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6402000023027bc71fab97aacea1088c9e9427b41851feb677588a2a9461040c
Date: Thu, 14 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778772633
