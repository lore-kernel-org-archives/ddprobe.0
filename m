Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5528237D118
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789165234; cv=none; b=t7kQeorJ4NtSs5jCXA+iemav8uaq1YMNoxd3ciQimvSlkjpPd/xyGrStFORIgQt0TXNIsPQwWW2mp9jd/fJqDF4JqT3pD5K72pTChbwgLrmsS2srv03SVo4qv+F/67Gbq/ej9fRqiugEQy7s3w4DUGWtw3pXZCNHlwKAiFcKG8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789165234; c=relaxed/simple;
	bh=Knq0fHZ/xVxwSx8bgrFQ6g6KafXZ7FJ0M2+/lJR/QA4=;
	h=To:Subject:From:Message-Id:Date; b=QTR4b+Vn7PqZ9jms7QHLblZuOd6GbkgrzjFoU7TVNLFxK6Fhmt5fG96XaqEtJGl9Qqle2eTa1VQcjvWHpZssEpS3Hrh7aIuBxwB2N6xEAso5XoSnkrxlb48arlw537Adb37D/HVVXF7/706HJLa6QQjNPlbcSAHpzqOu0Gj/NZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZWK2qqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZWK2qqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BEBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789165233;
	bh=Knq0fHZ/xVxwSx8bgrFQ6g6KafXZ7FJ0M2+/lJR/QA4=;
	h=To:Subject:From:Date:From;
	b=eZWK2qqOSla1uu67ya7PEEzt3m5b8XTd2wtIkUQyzF4+JRrGKDKxDWoqYccATsHRW
	 d2QFa305ACqBTilf062XDRin/7Mo0x8Or27bNDd2htP+1ICfYbRhCXKRO8OX46l1u1
	 27H78fr0elPjXB93QBk6I3kGFgEtRK0q4M1edCydjU9NI16T7RPDKqsrWabxxTNTFD
	 Xz85+LAlDbJvH2o1kBAgtUgwkR7yno3d/H9wuZ1z2Nv7lribD/uneF21y/Ds1y8fBh
	 t46KDw8b0KfigD1ICb+V3CmFLT4TMJQyqzoWtnb7sRv32Te8Y3INVUQ5WvMmwr1fVC
	 NJL8Hi22pEsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E9C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916523368.24749.11940844986916140616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e575a0ede19db37f70dceeeeb18bf1bfc6c5e54bbb65da3b02c73ddd03f99a
Date: Fri, 11 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789165233
