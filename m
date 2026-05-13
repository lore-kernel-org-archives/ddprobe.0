Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C83B289E13
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778673634; cv=none; b=JQD58XYkhOX9k8412Mt2xseenryVr4rexeD/1CPVYVRXJUIyw6mHUv3fpnkIw41V3UqeT/IoR9z3MCAROxUfM1ZCNb0UZ1DYbm0LWc7p0Q7HyQZBVXBxGhpuylTEQMU1Glktl1Ibs5BLMMOc5iOKcloCp8LVYuTxN/U4dlNPSdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778673634; c=relaxed/simple;
	bh=w9g4r/dEi+/1K0BV1Byr/TMgTp/jEb9R91HXUx/dCTk=;
	h=To:Subject:From:Message-Id:Date; b=IHbB5gGUs0IkJg9J2eFztwoU3pfiXa85bHIHcdU7EO2B9/Ah60xjE8i4//k2m2IkjdDtczcyRBoF0QEoqMZwm93FqRcod/SoC53W/bR855FP/tryAtY7+5qdKciULytEoKuUQUEX6XL9iRQYKKW+gtef7W2EY/bnCnkQuedygew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/lXdDnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/lXdDnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B844AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778673633;
	bh=w9g4r/dEi+/1K0BV1Byr/TMgTp/jEb9R91HXUx/dCTk=;
	h=To:Subject:From:Date:From;
	b=g/lXdDnnh5ezsZmBpTkHloVxj7qu/bx4blq6lea2qVcQgYsOVnOZuELkXnfh3jxUj
	 KbexOf6TIatrHdOBmfqzTvOCiiPPYAdffWo2nYV2NvJeJN17rCRuQlZVQVHNPrjQ91
	 Mk0FJ3Tx0hvTXsye49uC4agoXYS9TfIk2RNPwxlARDg55dJS3r+mB2vekNMCw7WiKR
	 FR/EySVl7YQs7KOPAgOWSG4RrcGb9gs+wisZZXqaWVnVF5sGv+SCwjtKQ80K7s9ZPN
	 koTb8Ms6XAfwb+NSHnV8H7V58se4j8dnPqLFrt/tFew+P0Z1A8qebIS9TZlFRyNjvH
	 pq5D+HhK1Gx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D4CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867363369.3145.10693346240737412203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ad216d504b940c751134d317484e2fc0405f25de128c2456e6bd0b84a4c82b
Date: Wed, 13 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778673633
