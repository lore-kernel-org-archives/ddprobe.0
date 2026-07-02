Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3653234388D
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782965314; cv=none; b=BSy2RZN7Qf62ZH0gytLL2vJuxJs+p8KAg+xUrEp2RrFvERvK8JD5F6ibdma0Epzg/1qAq2ex3roBaoT1nqUhwTTn+JRveyXldCnW44hRXqhhxno3C3vCXRSuc8ft3xD4JWT+TC5A5m6Le91vG4g4avvGpy92GQkDPqZgGfulAPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782965314; c=relaxed/simple;
	bh=s/BxIZeaT0pUOtHpIrjl+ppHT1KQzg8kMki2HjOZ53Y=;
	h=To:Subject:From:Message-Id:Date; b=OqDiQLJYymg9pKvgb6RbI/HzvN3fS3OWF6hKN+y1kjAvdSwja8hf+9zroVdH9UmIKjiOLZKGgvxn7r26UUbpt06Y5PqjM+6xwPfyKd4mXpQhn3z1VpfAugUmKOU2qDI//QoDVAeCtWCAnnMElKQFq22IT3ybUapf4sFyLCtSLXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPwN6CIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPwN6CIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2093C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782965313;
	bh=s/BxIZeaT0pUOtHpIrjl+ppHT1KQzg8kMki2HjOZ53Y=;
	h=To:Subject:From:Date:From;
	b=tPwN6CIpv0/nCp1ibAuVs6ViZgv9RdTWB6roJL2+9RhrWCVjBv4FDvyqCIjCNoIz+
	 KG4KAqzsxnY8SvBBOOrwPd/YyqiD9i2fim29Qvy0b/umrWz4MeHA1xNurf+lZi10GB
	 HjYF/Ksa9GdYw8MGpGiAROuy5n3v7k8+1jTBRGzjo89PnnvCqcn/apr9OeNcUC/i1s
	 JE8+FptvYVYU0xBqFpq6P9XiDQbCqrZ0RBO9FzzdSDJg91mJ89fOhlglEcw0ezGAQC
	 nxPVfYQzfwDCkkT3M5z15PHJBNDtVKwy38yH4bGGCg3Domj/B71vLr+xXwsPISQRbd
	 1eXzNmilmUWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81BAC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296531368.10787.747893790526710557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40eab1f32075c869f033953d18f97d80386cff64f3452c47d3e5e56b84face1
Date: Thu, 02 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782965313
