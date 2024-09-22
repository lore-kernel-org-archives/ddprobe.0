Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E569126BE4
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727005554; cv=none; b=ft+kQgNhg7EjhyRk6EAotNCGPrWUIMnHVOxbqUM+RbttXSVXbdWndwmo5viVt0AzBbjwUb8fZl3wpID+tp6vxbffzPys9EqIi/+bBeNti5+fZC2DFRIZHC3Ypo1BXCOo419t1X0W6vlxoDxZogJxS+BZm2Sox0p/MA1WEQTPeSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727005554; c=relaxed/simple;
	bh=rdyi9LFkqpFpqsN1X+s41wm4sBmUADXVnUmsNPKdGoE=;
	h=To:Subject:From:Message-Id:Date; b=ETQddSxtv7YDlNEA5YYv5C9sB+bV4DGihM7egohZx42jpfnKgh7O4pIdahjiCSfQDVrvk0XIQrDcoDqaE3ykFg6uH5acMm+QWGIsCusfZrPwoxJ0UKifdc2/PZM4QSdOtMdOPfN/xBLRTB7NI7zHbNuIWqZVw6TsccxqmDnwipM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9o2UE3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9o2UE3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44A4C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727005553;
	bh=rdyi9LFkqpFpqsN1X+s41wm4sBmUADXVnUmsNPKdGoE=;
	h=To:Subject:From:Date:From;
	b=W9o2UE3ESDRlR1FutJIHNfe/V0cejAWzcinvwA4boA2K4PSAo0PfNli87BeJDWBW6
	 cE00E3SQOgxyCrfdIH62SYG91CcNE5+zzT6P6+0dIk598VLRPPGIalC12qpRsNweql
	 Ep2hZoK4WNPc/2Ohk9Bm7p6flOXpHs185PRPnTcgBD+ORDze2z7kbTXI8TR5/hAlMN
	 /FHD0rudP/TVqRocDR+TtzDSr1bqoxPxER9s6Dx35dR4qen3ycW2U+N+Bn8KsZjKFy
	 9RrEVLUZ4/3Q1givdYNMzudMWag84xVtX2Nism387NV/v8xO1yMumkjqTIRXfBd9Ec
	 cdGtf/LkXAilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2ACCF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700555361.23713.6823358820254679798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811351172cd280538a95b0cf89cd31bf1ba92c066f1a93288e7dac8991837a93
Date: Sun, 22 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727005553
