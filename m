Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8289075809
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790528434; cv=none; b=VU24797pzsvzr0ac91+7B7qr4LZNYwdQSAY5V+DP2NIFUyeG+YWTqDG+/OBJzSOnCiWfr/T7qEdanphA3Kd+M36rT+t4/pmqbBivbI/cb5c7Nh9UlN89/GyF4dP8wRE2CntqaNRcjZ2Fyw/PQlqRJu8nD78HOWN0q+JIyz2uIfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790528434; c=relaxed/simple;
	bh=IHQIKoUcrCeOw33dZD0F/BuhwEl0482IsZTVHx6EHBw=;
	h=To:Subject:From:Message-Id:Date; b=sK7pKQhDsuU1MH3BEUmFkTRe71A1+XJDxfu26XhMWzok93du5GLo2d74bTTC3kmw7UMfpUDkX82EGV5gyLI0wtK/dV/ydETRiSfjlhQ6WaZZa1O+W17DvLSRYLjwEVy95TrSIjEDk1Hlfx7pLmTWs6nDaBCYf/1E/BPazWFBh0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew2PmNdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew2PmNdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF3CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790528433;
	bh=IHQIKoUcrCeOw33dZD0F/BuhwEl0482IsZTVHx6EHBw=;
	h=To:Subject:From:Date:From;
	b=ew2PmNdUa+T45z7Bj2IGfvah/3G+DGgje/AESliJN6M1bnpBee6rIefx8H6Xuag+5
	 K9caoKz3aDMo6pxlD9ybixyylSNcNfM6eZAK8yIFUnEaL3MUyVirJbsL2crodIFAkt
	 9K9tsoqAav+V4ofF52IVBKFu3rpdvjt6PwAXT+wnk5H6FqzSlhqFnzRxua2ssu3/R3
	 mhMEPKh7iZSQKyCz/f0hS4fte8dFLVhurjKQbVvMGmeH1JELx5P6hYSNpNxOR3k58Z
	 X+UCsbPlBTB3AZgErXpDQJifdXcyJbAKzjn/Ob5OZigLuap0hkCX/07MiBc54T3mr3
	 0DiLpiHoEaoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA924C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052843368.16261.7545182045672665473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d584b354455a805440e8c9b7fd2d38154461865f2f482748a9c3e1df8928af
Date: Sun, 27 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790528433
