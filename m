Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FAF3D0AD
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722966354; cv=none; b=PwTod5+qTLWQoMw4kEWQItKSJpv8wfmUWdbOxoDzOgnDunXVxnMSTY4ghT6FOckkD/wMH87saC/EvXnstNA7Anv9cz0NhqCyRyB68yESrvxJA6MxaKDXyX4uIXdW3gFavzoMfaNiJFxtqZgLSbM63HGhcILEgrjuiwZ5Z3Qp0kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722966354; c=relaxed/simple;
	bh=06ecbypTOT4QAWraiT3+HBwiI4EYu32libXGW3hGPLk=;
	h=To:Subject:From:Message-Id:Date; b=rp6zJlK2OnMD8uDe9mdI2jXRcWB2T5nRLw13aDAuzIMcFAUQoVgP6Q5chevruTlK+NH+0/AmzNKhnpUYLrUJ3wenwJfNEffHgFaNB/FnOlpMnoYu84DG82qCpORz9AuPc4DbRtD7xpFI+4UM5xcUCOl5VuZUUb1vxCdli1qOIn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9yq+Cvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9yq+Cvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D57C4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722966353;
	bh=06ecbypTOT4QAWraiT3+HBwiI4EYu32libXGW3hGPLk=;
	h=To:Subject:From:Date:From;
	b=m9yq+CvqNcXq2WUmGourXJEaPoXIi535wDOsXTCjz4O/RfW1Ij/GUbKdcjSkKsYK9
	 SA6kSMl0daMEmKBGtZf/Bg4+kezB/nI0Jv+4/RJB70MallMjA50C1OAWQDRCiVyZ1g
	 R6luP2mbB4zoKGQ0kQvBw6AuU2jYry1B4v3G6jUYPzkSe7oL4KvmL1Yk391xO8o5xf
	 j1WkKvzYRb15vj2JYV1HFvX6Mr5gEW2AXHpU/ym1wMQoxMmLZZCW9pQCyJvNN8E3fU
	 Cy+sENyRQEvuJQEsTRQ4sR0tuKaDKMZkFq/krf646z28uTfWkjezLg2XxEpZ49T3Ca
	 icVqwUw9hhozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B85C52D71
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296635360.9777.11340752752654114029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7d9300077b2e2e2f9572f799d8ea97b20c39f6f4af47351bdf4f4a5de3db09
Date: Tue, 06 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722966353
