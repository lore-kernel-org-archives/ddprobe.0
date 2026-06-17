Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531B3438FEA
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781693194; cv=none; b=ZxaTsAGxFiUAjO5xnuxENk0rmIvypzl0f3wkHTULu9W1JiYK9sfh18GCsUuT1/iWHuvgh21A+2d1ia4EBQbIePJUwfcqlY7pzndPqSE9bUyNrKs9Q51xISkPgqCpks8/POovQ26VYjg//Eoi8sF5iGBvouDryXXwoUh4zcKvWjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781693194; c=relaxed/simple;
	bh=7NIvNjSi5RUAhKTj5IMuEt/FQisHEj+MTDHWmnLlX2o=;
	h=To:Subject:From:Message-Id:Date; b=lc8HNwwug4f+hIhpUxjZzwV9K8Uqhx2QQqlzoDpgNHopdpJFPPN4flb76ZefajjrLC/Cmx7g7p0yhfPIXBi+JHeURsY0LFQc8cNuOc/ESqHiwrmYnRQYTgm3zEVB658hyPrRyn/sN4R3fQS6ud+jxSasRXlxN5DpOl/9bnUGUdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4h3hudh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4h3hudh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7906C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781693193;
	bh=7NIvNjSi5RUAhKTj5IMuEt/FQisHEj+MTDHWmnLlX2o=;
	h=To:Subject:From:Date:From;
	b=W4h3hudh8knHR6hlNXB4Tr2gb9bRkPLrUCEC9ajheLdKkormIhxTrhrTfVkcmM2Xb
	 SafiOg8YV2O1q4XeqhGbXyU6xL23YzppKGNVWR6wLQ+yIgT84lf9KZO2JyBP9jNR26
	 /A6HRvkmQOCHf9jN7zqDuQx2YROCdieTDwLTNxoby8iQx3HKclJy+HMo6jd1fGKzEF
	 a4VGRRpYGODK/jbPwEmorCokI52ewtNz2/UdTFRF/o42Iuq5vDjX4ErGCU8gdMqV1w
	 KPvOQO8VoFqInW0fjRjb+cBXvaQkpTYc24mOyoqH79h7Me2lwlzDWKcIvEGcf0f09z
	 pf6gt6J/2iDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42C0CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169319378.21523.14755448113012771221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ba1d7259d3376fe3088b18611fe67aac671b3664d5af509ef3d87df56df495
Date: Wed, 17 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781693193
