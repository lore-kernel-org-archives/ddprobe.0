Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD5EEC0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763245254; cv=none; b=pCLrx9N/t5LduSVnH4vi3Pt21o+W53OY/RIrh+EHcABBnoidqLZEdvKoDdIVhfhpvpkU2d+M6Vq+XpGATdoC01BLwPJAq/colcBVrHLpFOtId2a5ZVxRVXCYm5DUwg76LUMcw0ZBEVLN1RwYgEGtPP1/OQTAWyWyJZbWNgA2f+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763245254; c=relaxed/simple;
	bh=Xo1J0j8sfdragE5Lx9Fwq61jyGMF3hq2NLTCVpiG4Tw=;
	h=To:Subject:From:Message-Id:Date; b=hapAJXkhrilTXBCuJqJPQOaBcz2NIGUV1nYOvRpoHNbNwHsMXjtKMWJAbxiaTVsO3LE3lk1VzI+6uLWoVzxiqCUZbtlO14G9hb2CBQkatzsnEE+yw8/crCzV9vzOzuKyQCq/IPk8safTHxFoJIHBcEgIb3HXzc2IR8nzhjTBCsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKjZWjte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKjZWjte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF07FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763245253;
	bh=Xo1J0j8sfdragE5Lx9Fwq61jyGMF3hq2NLTCVpiG4Tw=;
	h=To:Subject:From:Date:From;
	b=QKjZWjteKd/gDojVqr676I/h9Yuu1ZwqgvUez3pIm1OCn3oCqWfbwQTUj2cMUqZjh
	 egbPowsiWuaCi24kineUW1RPqatCB/fiKRmVpAbRtV3ukNJ1UCf+O/cJh7zCjQq0Zr
	 UJk8zZcj4EmVdHU9vyMJ9oEKRGORO7z82FPVjlJa3/UCzzWc1/DY0XpPoDj0MM0MCD
	 XQQ+00Hb2d3pN8bzXJy2rTD0ED7d6G8e8KM8Apm3yYfAJa5jo5s+9MKB49ETcHibVJ
	 9X1HenDsGMN9TJ5UVWySJezBvO8cMk/dEInzHfftJsi/hhjmZiomHZXdNQltk8dXzo
	 jDHobFCTsSdaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF0CEB2D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324525370.20318.14260583307891322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f34a6b650834aa67885a24f6a68951e0ec2f00ca66ab81e872a011306a1432d
Date: Sat, 15 Nov 2025 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763245253
