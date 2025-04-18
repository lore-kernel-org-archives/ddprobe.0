Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4704A2750F9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744980594; cv=none; b=FdO0h0kg5ZfGEJBKfE4f+jobOrz650jJre1UmpYKcDX3IIT3V0FPwst0pM3GpywG9+/HC/jjL1czooLZF3kIdXtl4MCOM2i10glBOwjC3vyRcn3IcpI/Q3i3uJxTA7zdlReY91wSejUOF/tWgiKb8SgqZB9c7l6F834PGTN/Cmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744980594; c=relaxed/simple;
	bh=/gLG4PreMxMmVuy8rYbqHAtekif3qaFy1WnjB092VHI=;
	h=To:Subject:From:Message-Id:Date; b=PHa06j6OxTmjDmJMo6G5d+RESQsObU7puGFtw/ejTlsyvaraxJDc1d6Z//zOuGazPXLaoWdeMrF0Os+sPM8EgG6/POYKTmB+YxBwrSiHAy1eoCBMxpJ6pSlu+aX6PgQmQw+rKVfoILxubWKCe75cTvbYKawaKaD8I6YXBBXn+Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUJGrM28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUJGrM28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744980593;
	bh=/gLG4PreMxMmVuy8rYbqHAtekif3qaFy1WnjB092VHI=;
	h=To:Subject:From:Date:From;
	b=AUJGrM28Iz9NuD6zSeLUrsZB2nA2e7mHPEVQLVzgcYC9abulFviIIHQdZ0+sJCiVJ
	 R4j2cCOVFyrO73N2rbJLuFkF/ae28qSGPAEyZG4/tCM4E9s0uibEwhHYJz4Z8eyXmv
	 8hmkSuoB3/H7Z7//iYOZiGan2rFBlSvkBHEcpQ1fx2OJylFMsfP/9l+7OTNkOyNwyo
	 0XMAxa/iYoFMfktiyPHlJ2btI3nrPMw4v3dig6rtrU6aGqmM0vRaHe9Woz4fkUtQAW
	 LwdJg0Qq6GNNSL0u0ZuDVZxRSQVBpO4Ay5Wg7qPyjEx8KIVH8NT04XeO0dCK9l3rUM
	 jsoLZ0+lKbN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B4C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498059358.7454.4744494848166784765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dba14eafb97575fe768435bc0d481e94ebed93bb59bcec45399ddd3ff19ff9e
Date: Fri, 18 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744980593
