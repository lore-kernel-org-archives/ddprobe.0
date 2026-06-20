Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522CF35893
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781933194; cv=none; b=Hr+kaGsh83q/8ITAus2/O2+UO2S3yIFZH/IV97JejP0MrM8KGD4kvkPw9kS28fCnQOFd/848Y4PjcJOZwrjLkjBDmCJVIaYxW7D6Po3k7nVg/LvYeZ20oWM9fuWemFjikDap4sOHC5/PpQnBamk5xqVdihNzjge7+67rSBqw/Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781933194; c=relaxed/simple;
	bh=FBwpJVR5V3wcx4KR/sKot9L0Tnm6VSACmYZSRks49Vk=;
	h=To:Subject:From:Message-Id:Date; b=J/2p8twLtwoiTxY02CugMI6KwPs/rNjw2OXqCbCxFP3eU6QNLQcRwN19p1/qdAbyXzh09QpJOj4ODPvwCE8roOD7NbfrVif1BT6mvyRFkAvtc+m/jPwCsECOGi04vRpGCkXu6F4F6J/vOz0n6mA8iIC/HvssNUsLIo+gJFHtGOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW/H3dAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aW/H3dAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB030C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781933193;
	bh=FBwpJVR5V3wcx4KR/sKot9L0Tnm6VSACmYZSRks49Vk=;
	h=To:Subject:From:Date:From;
	b=aW/H3dAyqvSdROsaiYYAlWhIVlUwnHGCp491wysWn8zxrMmkKGJpIaCR4qrmkLqNq
	 ecrjnyI82VAOIO3nK86zTonA/ZzOOuLJgrEZ+OwLpGpC54DXc+fCcNFyzRn7yLrchb
	 AattnNyzCL2UEsUAMiYrNJ2ziaZb4L2ctsTW7BnsAlj4N0VbcXRpZxVB7Tht5SBvt0
	 p6CUUB4cjf3eCeOZz3rjFLWWMgjBVae3d7Fnk8QD89NoNeDNhDFCj5/gpNarKPtp1j
	 O8Rzs9P1SS6+QaCN2J07OV5V7oNT0wBDV9fvL7uEdrWVjT1PdYgCWspv7s0D1g5LKC
	 W1Tn4YnDsQ3eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA0BCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193319375.1311.7186151161166025298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45f8363358dc454491f14a4d54938cd77c523e2ade9ad2f4a5916dc0638af09
Date: Sat, 20 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781933193
