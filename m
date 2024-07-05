Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFEEA955
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720205123; cv=none; b=NIQDnB98go8uPPUvGHgVSLg3ACrG1iaom3RxOCOtktprs+Nmhnx1HecCrrjrHUTmvnwZexCQfdrLJjy94QwOZk2TQpieafSe5fhkmbAaXouEO1dPQprI6YX29+3fih+4x0NKsaTv73VqbCAyM+wdiFzVKEa0lBJ2D4X4B/o2Koc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720205123; c=relaxed/simple;
	bh=K41IkvKjjGQb9i3xDOtf5EfRQc1RW3eoMIxsCN6qwkc=;
	h=To:Subject:From:Message-Id:Date; b=Z5ZeHPno4cUIyUzmeYTcA3lCNY5Z0pLJXfLZcoaHuKf6SdgQGb/w8u6HKyTruWh9ZLd1lbW0XMj4FdSFiln1ClIIGy3IUG8pmjiPoVg1k5tIVSIHM/fpJ21LstzvRRcrJdX76zz23vVX8Lh/EWv5F5kY8wTAGBNr6WMlb9rCWyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9oJZZRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9oJZZRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2B0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720205122;
	bh=K41IkvKjjGQb9i3xDOtf5EfRQc1RW3eoMIxsCN6qwkc=;
	h=To:Subject:From:Date:From;
	b=I9oJZZRbTlRqre/4RKCnCdV6bUE8TrjTq8zVJkhTU60b8Tt1UiaHVOrE4hDhRiqqO
	 yv525z7mwTJ9ToCbblVgjIIGxY7u36z3vEUPWas/SbYL0HHaNAAy6gwJTtwsFMG2m3
	 Ii89ArJHQFsFRwVYLcrfi5khETI950v2U0ZvCCbobqNSvu+YNGfCVSgyKRSiVWde2n
	 tri9mzI9LcNv+ho7mQcSQ1GkK9SwmUaw4dwzY9c8r7xCzhMahbt8ANMMgZIk1FuQYr
	 PUrn1deYefliohLUG/aBO4lxgJ/E37owqJiVrGHUk0F/285fYqpoUF+cFheX81s9pU
	 MZBdp1fNNKLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C740BC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020512280.1253.17806107371461333059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e375142d9b4173e678f13a787986d4601b34560cedfeb56310061561d5acfe
Date: Fri, 05 Jul 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720205122
