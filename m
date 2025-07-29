Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C02A16A94A
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753752594; cv=none; b=VKcH/pM+DAhOALRJhGQX/aAkPAHNvn30KfEoTtglXE07W89GVeDb6ZTIJlIOcltmI6qTCxqtTd7JUDihtQfh4hjAr2yBG+kltty3Giw2we8bASUjQzi9l7FlkM76uzXUK7rLixoiWXdiFCItTnHLs4Q6UgmxPuvK0f6QJH52N8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753752594; c=relaxed/simple;
	bh=T+5YuGbfQ0RNWMG4NQMkeev5Q1KAoBLZf9nx3uzWKA8=;
	h=To:Subject:From:Message-Id:Date; b=JZtUhDnUmDqHlVNZ5AbrWveDfS5PgGBeNnEZ8VaPTzMpBRuCJNU5rYDSHWbhVIflKDGOpi5x0Pq7clKVQA03mki445GkTgSiYT4dkumzMzNzF8O655lgparMdwy1rNkYP5tazGmDBGYE1QOR8i2rDn7JLkQdBQMBUOC4IQ+eSEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS/toEsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS/toEsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F71AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753752593;
	bh=T+5YuGbfQ0RNWMG4NQMkeev5Q1KAoBLZf9nx3uzWKA8=;
	h=To:Subject:From:Date:From;
	b=eS/toEsuqHg+JLDsEMvO2Ja8ZtIgTJUqHjuvy8PwM/ZEbw/XswJ3Pamvr3xORjNdZ
	 ENS3aHvhATAdkwgg21SFhtdTabncNGq3Y9Qyn0m5oxMfnT/Zhhb8XF7Y5Zj/iSGUin
	 84gpna0k+3lbRdR0WtqlJU2cgoJPKQq33AldLDJK7ACh4EtNpED7QbzB+eBX1Jye2s
	 pX2x3sMFDx4U/oMYnTcakOxYMCO3TyMYszLCI50HFEu5TlhaFmD6U9Ml5U1lZY0Kka
	 FYrknUYGX8DSkS2OO4ZK9fz/UDP4ySGcTF95RiCeypj8kU+d4f+ZFdu8DfcD69fAk6
	 O4J2mzdFqL1/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F526C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375259357.28473.3829216066315228884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7299b4bbed82df77710d8b0b81b1b5e3266a53936accaae069da047ad60b2d9a
Date: Tue, 29 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753752593
