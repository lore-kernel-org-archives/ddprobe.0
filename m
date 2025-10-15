Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B32D28BA81
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760512194; cv=none; b=eJLuUO4KpHi/Dh2+/cP8wa93OnXz0+fdSbO5hd7DNH/8Xo5KYDLu0UCey2DTo1di2pyIkoeXBZn4AZAoOORtnInbSO1mcfglCZeYseoFKb8M4FTHCCrelmciW/LqHwSbKOWBsoozmAfUF8DtFXp7bqBDfVIYFWAChvUAVqN1c+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760512194; c=relaxed/simple;
	bh=eS4u647j8JN4dXy1HBuoC7Ka4HMxzUy3qoZ0y5Il/rU=;
	h=To:Subject:From:Message-Id:Date; b=haOFTc4s8h9WbkO3dlkWtij8iJFSqXIf/I3jnItCI26wTZnAqTRRAc68TrzKnWynXYYhqxy5lpYY9c7R5ZlMNgZeGbswHVoljjJJWJ3pqriI17NlxreI7jgBxNnFN4+UPJQ/FPskgO0uBaA939jgoySWilYMheBtNtipQzOzGT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHzcuUv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHzcuUv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1BFC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760512193;
	bh=eS4u647j8JN4dXy1HBuoC7Ka4HMxzUy3qoZ0y5Il/rU=;
	h=To:Subject:From:Date:From;
	b=hHzcuUv+B/S1kr/8V3qfS5HrbT14PoP5TTrk4D4Rv/HZvjJICV+QB3OeMSBwU4lbR
	 C9IuaDye6iNIM2+BfEG6vTBU1akb0LPVK4bor9FspasAWplcy6B920eS6M/ZqUde/c
	 9CJfF7RqLHUcgwgb4eNM3rR6FfUmgdqfKvV6Mo2n4i3xn5QOnXI17TMzUekCvSyJq4
	 t/pl3COpa2wu8v0LyVym9aFLvL9ywPK9CYJwh2luJA+Zo5iKdDmE+XIvdIMmC3+3H+
	 uDrU1s6Vot2oT3jn0Teg6FNNrSwW2MrIlCZJOZuXFm231PN+6+3wrHj9UAxFQIincK
	 vRYilfKAfoboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C3CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051219357.11399.6008255804679568051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a39b860c707ddeace35aaf6998332d68443a577b8fd96f2eab14975e8277c0
Date: Wed, 15 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760512193
