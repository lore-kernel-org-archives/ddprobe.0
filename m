Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C415386571
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784704114; cv=none; b=VcyKruuBM8Qv9YmPavElMLWjuLLKyhTHB+/Cnw+jrdH0CQMADfklGNEIyGUUOTNyDGDUrdPmAK/n+50rKQK1tOMUQLrDs/j30jcz0r7bg0NT8zEWw8i4VLeTR1xw0F2Z3PjVCfgqZKCI93Yt54zSVgSgbfmlWrfriwmiDj9a3zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784704114; c=relaxed/simple;
	bh=ryVUL1qVJGtyB1qtH4PUlvSnPYC3WdsWzop6PNsX0/o=;
	h=To:Subject:From:Message-Id:Date; b=EOWWY0mfMp6y6oRjfNarOCoGEkMEjxyLMm0mmnLeyhjXobd0x/OTd/PB/EqRLFhJx0p0pBsAKSm8Jxq07ypd5NfEjmMseCF7PsVf9sq+G+1tuK5bAxHyjqZa+eAnPLOFPoinVGEe2XdR325B3w8My7ptjtKHtosS4QdLegJcLww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsIeUzoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsIeUzoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88E4C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784704113;
	bh=ryVUL1qVJGtyB1qtH4PUlvSnPYC3WdsWzop6PNsX0/o=;
	h=To:Subject:From:Date:From;
	b=lsIeUzohC/oS1SMrowCgDjzRXeFIWjFx3wKWt+8ubeKeF3KeMg24xgphKaGGhVpqX
	 HNPkCGUcZe9KxNjurlIDWd2aw8YzQq5LGTRxvScswHfgkTnlZwMQ5+5yvgqz5DKOPk
	 rjXUsOBaB+6bLMTBZDoWqVG3LB+brEHEwESJHfK9h0IWHVT0ocsQwTFVFcX7p4SOrc
	 fO0wBtVmx00fJ3VQWuoGpCwfLDzdNPLrecOeJ5D6iiu9z0pYAXdUMN/tDzXphS5IaP
	 eRIw2PM1kCith57W612yPc7WkD+I47AF3HtIKj3q4D2Bb5V46K/fW5TsBGJixbowHV
	 JPJ5YjdITADzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23FFC44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470411371.31550.213722965133905434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745bb9fdf7d1449f5924e3d705c71776a99ec2a3f51972874df157e1d2014373
Date: Wed, 22 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784704113
