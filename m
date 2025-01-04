Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E8814600D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735958753; cv=none; b=M5lnG/lDwbI4gvpKP2OIFnMYeQwCBuGQGN1AOF/F1HiJzAEyUHDoKGWnIexQ5waU1hbGO9LkIn9n1lL3vTcVkbmP6yMfatBxh00TXkAm75KgVscg7uLBoZov2ytLmov8pQfWqFMGqSoHQ+WGN+utbeP0mSp+6luEExWTrA66w2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735958753; c=relaxed/simple;
	bh=gyCgXVPq4O/K/O9NdtmjWGvB+8sUat+G/CjPGZk5dCk=;
	h=To:Subject:From:Message-Id:Date; b=UcLbvqIjGJSmIsVAhG0OuxolpS288nqi3KVcAX4J8A4RYAlA+0V6LyE9MvAwqq4DNn4wwxVNHKwoWK/+8Fio2hpaY17R4Wtw2PYdUEu0oniRxVZHDqh+yES6V6cqHc0c59gpEiO/1bDB4RXDAFX+rG/6/pPYRLQhsDLwlRDVUUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhQQiTsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhQQiTsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53BFC4CEDE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735958753;
	bh=gyCgXVPq4O/K/O9NdtmjWGvB+8sUat+G/CjPGZk5dCk=;
	h=To:Subject:From:Date:From;
	b=UhQQiTsE5W9UAyNADnPkwlrt5SLmVqDRfZ4NTBnq8y5mpRWfius5y5t3hDF1J91DH
	 pj62r16QoB+/Ujf7YiBr5e6qvPClDLcl26O7GZtl3aZ4mc4IYv1Av2ST4gGy9gmO2z
	 JD/nyvYPaihRk6ab06Uc8Q/KkycLLuCs3cHgquyNUVRzcQOnyuomanqLADxGWDFhLV
	 9Qm5zR/DAmNf7sHM4qFT6egDl0Z0ENoRERxBjEP+KL617w1akL+dQbMwa6rNDZ6Z6j
	 KFWV/DVQ0pGHOxVEkY0iv5hDTOxgJYMiwMExxj+AbnxZSdmRg5+k4d8ThegkEe00sh
	 ZaHnSsVX4XHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B4E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595875358.30075.11553720778317815944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd97ef9eaa9f7c2797bf4dbc60c458e8d8ced869a24807beb61b29757a083dd4
Date: Sat, 04 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735958753
