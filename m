Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187B73BB5A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760542194; cv=none; b=hT7bsj8uIHbK/Cm321Vm6j/Fy7TCVHPn+9xHKfGdmEStIsdNesd1qk548nXqMLOE54/xQJeYKbxG4SlOwEYn/D4dAoc9PQkKJhNpKobRSQjdPJwOCRNiXeeewyicre+xF/s3qF1SWuQUCR71hjP+E2Z0+qCH9HDUt7IAwhUKdUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760542194; c=relaxed/simple;
	bh=6Ul7inxvzlEG04at4ym7dB0ll5abZArhMbfkCCagDH0=;
	h=To:Subject:From:Message-Id:Date; b=FHuXDr4uPrbEA9eKoNPRlA1yybl3T630OSIjlHn72iMRTGAz2u82C4VP0zlEEDR7+KJ6F5YWvGnf4AG4R8T6lLA+/Pr1vDG3KeSOkdHroaFtAIfZn7Gqatdogpd9IG+wzWhCmMLJFs7XeCM1czoCS6fjlbUfuQMI2KcWkBXYvns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9lu9On6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9lu9On6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D3FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760542193;
	bh=6Ul7inxvzlEG04at4ym7dB0ll5abZArhMbfkCCagDH0=;
	h=To:Subject:From:Date:From;
	b=q9lu9On6hPBnXVfnwpnSLmzp3RyYrsEyrgRC5wuRqjjprt1mUTTplSRsa+btC4Gze
	 TZHHk2YDgY5vnR0oRnCVB4EORq0ihIHubeVR3egwtTjYjG4x8FG+vsccbtA3Nr9uYB
	 cjEa+coKaBzRC7/AaZLmF4uRSkqLqzTavACWlY8dnixKXPsEib6XJnpIyCYOMWQT32
	 DYXyuiky8ffj10JMmEW5/nOL0yk3if5AAqeMJkmEas4cf3QmuhlOC5bOtnIUFwYQc/
	 7F5gR3Jdr0DnO2iMoxQiXAkeW90XeoNV9w+F01WBKI3PrFRa6jtNLxmFNc9rl6mwnr
	 iu8fv0cTpKGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D24CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054219360.26152.7183455856279792178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d7018cb14341207b7487bc19d065ab924728110c2f67a465c94a0841bc3c78
Date: Wed, 15 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760542193
