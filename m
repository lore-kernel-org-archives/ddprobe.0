Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55ABF149C55
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743253194; cv=none; b=RnGAEpgUltb0QlO3jmBE2HarcNwGzZtjNYrPanSmqaSQurEid6269lPbOBYxhLh6UwP8FN8G5Me0dsnn9gM43/dXgwJvcYdYvPiUrVG3qxZN8StyAUiWvcIAaf1F8EZDZCQHi/shfU8BGFT1iZGak49oCz1HhVpm1bgFqaQ6f3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743253194; c=relaxed/simple;
	bh=w1K3yfZmnbZIVPXA9uRT0F2b6nn4I7YveOdIaCiOfTc=;
	h=To:Subject:From:Message-Id:Date; b=KbWeJCbuamI4DYiH0RIi5uUrlZMDVF8el0yrF5KLJyUgRn6c6U/t3B1GIs3JF7W2PhY5NWSmA3N+nugyl5BDj1KO7hOgc9Fz5RhE9TYxuoglAk7RpuxGisqPydmnp48t2eocDV7bdvWTbagz2dpfILFeEyJZZRONr3mkEHzqT4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfV1PCMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfV1PCMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83FEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743253193;
	bh=w1K3yfZmnbZIVPXA9uRT0F2b6nn4I7YveOdIaCiOfTc=;
	h=To:Subject:From:Date:From;
	b=VfV1PCMtM1NEpDvV8R+79/WW/Czo0DqtEWy86sXTcaaBA9pY4GI0jjqDMjQamV2vo
	 kKAvUERHah5+Lf91d/Tw6KQt2otEanQ2+/ZZc7PYL/RwXHKreR9hSBl7nRX9N/Q8f0
	 MWFdTdP/mY0CwP1fNtHzQLALUoDIRafGZviz/A2FwlPOpg/Jypmkv8+nOzcv8UnCVu
	 uM3GN56GDzxBgmm8irrc2PlYWZUeFHWpfw4vENWh9lk/f4QxWTgMv+KZybp5fHpYYJ
	 +iC6ZhGs21AengTdxsoK3Ek8Ljju7PSI0M+XfWkB9oeNzn/d0CBDsb7l3+75sbc0h9
	 fCMJFlK/42RIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96AC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325319363.12311.18210245934648650481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d762866c5161a4f02d8d050f539949cc34c5222385dcb4a1da3052d00ac71e92
Date: Sat, 29 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743253193
