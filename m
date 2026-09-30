Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5520530C147
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790746834; cv=none; b=BIi1omR4IWp032Tqs9z1DLwA+47SDRt2ZZXqYKkHTzJ0WgC/z36A3AaT4eaqZ8XC5gNkQHF+t7spIHiJ71+qzQ2ceOR7ho/P2YyEUpmpSeK81rfzjjPegSkqZUmAINHB/KYxwi/KioaI5mWXalOB+6eieVyeNBLgdT6+LgfKGhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790746834; c=relaxed/simple;
	bh=aShwf34o2KQE3ZWDwZqZXRRqpJmCsjeKWV8Yed6FQvE=;
	h=To:Subject:From:Message-Id:Date; b=A/x+IgBUt1rZkFFetibgAh22gLKARpMr7rwpMsMf5a7eqfgji6CQ3nGyftiZeZrfb99y6bTdt96MAb+grBYeHTLCsFXj146qQpp7bv0JzsqPNhj1WZZWBxYulshy0de52ZU3JiJ/1ZMAPpdxCGAV9FqgTNd0mejaF0D1fL4lNL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXGBlgBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXGBlgBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB40DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790746833;
	bh=aShwf34o2KQE3ZWDwZqZXRRqpJmCsjeKWV8Yed6FQvE=;
	h=To:Subject:From:Date:From;
	b=tXGBlgBgQvmdxnfhRP2MDv+hA6otYn5IrJqQnZ+q7tI0PfzuGvw7o87udSG/UXqwJ
	 KoRf5q77xM7SvPEW+U49Vjg4q6a2UH0T2fxZEC5WG0plAKN1AmbiIzndyTD4K6jqN5
	 FAE/GJOO3VRe2zOxqWyfHYlKzXyFyRd0w0Ge2lfsU5vCDKcOs+zolYJ9fY3opo6AaU
	 7c8wVqClNhSkvaee+NFe3OI6yx8fZAz+Q9UmWNoHP9Z1OII8vicc9c7SO64QC9WEFg
	 pyKW/xWU54CQlRxF4JPOWTu2AGhHYZXj+avqgeG1WhHjFnHPV0lv/RYEIuH/GC2MSE
	 aEAYUqKhJcp/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909FC9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074683368.3682.8747556528672981086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beba6854f97a60248a55428ba453322ff17e9d09c06cf0ca76be01bf3b9fa321
Date: Wed, 30 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790746833
