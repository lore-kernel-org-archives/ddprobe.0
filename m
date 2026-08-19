Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471543B47E0
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787174434; cv=none; b=uayTQzLWQmm26VzPDvDQK7RIebtrmW6r13+AMbwVYFK1qBgQJhm1X2dx1Va1fn/e1ASJKw0Yqmsgb7oKOcwjkzIbN3oV1d6MLlMG4EI9Vo2MdqguRBhqUifGJLpjGTP9miC3ZprT4gropV70HQBqEF2CbHB0qiz/LvgyfrrJboQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787174434; c=relaxed/simple;
	bh=22bQlNBKFoDQUp+obeSVbZYelkmIurPNd+QDCThanqw=;
	h=To:Subject:From:Message-Id:Date; b=lwXp9WlRFsMsDs0QHMxNN6cVMBupfHVeOc1PpKwkgQSpcyyRHpUNcdB3jVIU7hK1xqPdhlFra7R/YzozjjFpULbebagIR2FP8quaX8UhLbQakOJ6mjHm6vV5t3KYoP52FgJq8shTpdFszDbSsxdeLrgiOr8nOLv3IhK5BbUggQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frPG1YOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frPG1YOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D706AC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787174433;
	bh=22bQlNBKFoDQUp+obeSVbZYelkmIurPNd+QDCThanqw=;
	h=To:Subject:From:Date:From;
	b=frPG1YOZZ6eUYUnECqc3B1Dv5jD0EgmMl8lA+eqOWDYTaKAEn81b6KI0qXiMhYFKy
	 N7jSSAY0r5Tln41eUW6Bg4Kpwup25HQAZdwO3sFY4HbyU0zsK6cbC7V71IG0W5q1ye
	 7rFLKNMjPJMRRrRQ7p90CXhYuuYQn4z8S1uQWapXwKSSz8Z8DFmpQRqo/BfJOvgiHK
	 ERo61+ohig6BAYT3hdMk5kAWK5g8r49sKo3pLOXx4MsGYmAyTKX/5AviZL3XEPFeO+
	 6YU/bOzJaaeP1s4z+GgtIsL2+g2fumBmOxDmlHzezYf+3C15Uvs/w5r4VVRF6Njyq+
	 tF+pmJvICBZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A8C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717443368.19716.4250361490998379521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668b68d54a10d059fbdf1dd72f9a1c9363bc63f1450d4795c5974079242e0422
Date: Wed, 19 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787174433
