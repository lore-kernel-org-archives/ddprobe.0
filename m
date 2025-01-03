Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B231CC8AD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735928754; cv=none; b=QCqry8wYn2ETKE87HLpA+capeBM5dfChBfkvFP2iszOGOigAQussSw1PvVeYkfXxMLNg4GIQQqUyPGCpsv9q7T7b5dKBlZyjenlvUlkt04rwuBe9fFNG6xEJ/ESEp1UVHpicyFBlY4r2eq23ZxbUnLLhYJM8uxz/dv5LudaGIvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735928754; c=relaxed/simple;
	bh=6iN9xQGf8SZaFY8FNtZ1sJXavIDs7xYbzVSRMjHga68=;
	h=To:Subject:From:Message-Id:Date; b=uMQtmCLO87o6L25xp5yTAximcEWfW9zsSd3IKgOAqFTJW3IFA6bK+ofue0i/SctYGB30hr4HbqEhoYo1vkoh03utVUJDpxhfJL2zgteznZVUOR0viX/jLjY4O7aPuV56+w3nSv0cE3GOFNqZQA2MoXQ+F4sLZY1/GcrzeuV9n4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sn4CTRbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sn4CTRbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE85AC4CED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735928753;
	bh=6iN9xQGf8SZaFY8FNtZ1sJXavIDs7xYbzVSRMjHga68=;
	h=To:Subject:From:Date:From;
	b=sn4CTRbTWmH3t4erTXTKIg0hAOTQqU+r9/TJYM7I8NlBC1bo1R+aPp59QspuWOsh8
	 9gvY2faFDmAKa5ovbe2azsqil6Q6uQ9FVbqId9TEYtqng73E9h+7wfmUmm20IEvy62
	 R7Yj1tcXs/sP6q9KPruDpmX71tu+/i4gws1cWMS/r8Hk/nnzmf5up34zHcqQ7jPeUZ
	 Zhar4n+LL3H4NY2+OQ8SsF1q/FMXszURO2OQOAcU6d8Sh2K7f0N3PQH4hU8E/M+E/A
	 o+H0hdGDpCmRuYRuSjcN+G/Rnjsc4zzEo6eJjnSehdI4Kxhk7xaZBvP4ErV8kWAQZT
	 RLhZo20nRR+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994A4E77198
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592875361.14397.9340561693392760214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917113207555a5b03513b6343ee7ef9ceeb2d9669c87dbc4fdc3a0d1c493dd73
Date: Fri, 03 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735928753
