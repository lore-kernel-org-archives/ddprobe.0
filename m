Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABD1348C4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784382514; cv=none; b=hCkvixt0mI5l6FbRFR0qClHNnxgttJDPzjPirPjvlrvuBSc1h4ZEMDyv0QfPtt56s833m0/a8qVt/fo9oZDw75Xu+i82ggZUYXi93ktCxym84yy7Ood3U6XivsRw/BQ3OrhBbt+Xnax8VxBbIF3GGs5qIMriSsI5HSb0ifEdeos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784382514; c=relaxed/simple;
	bh=PmFOEozUCfq/yanGmzROZfS5NNrNUiV8113Wd+k90AY=;
	h=To:Subject:From:Message-Id:Date; b=rZplsO5gS5J27NnH7tlnjvr6m4vrqrvq4Vt1mhCbpOrmQFib9W9vT5IfB9aDHCfgJRTe+adVwGZTpW6rLP3/aqNaOdr93PzX+QkNCQxbzUL4wlOycADH86NZs+yYRoL9iQTJw6yUpoLkbcHckMl3uWYwmyzRvmPA7WaLl3Xfk7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3suddjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3suddjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0E2C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784382513;
	bh=PmFOEozUCfq/yanGmzROZfS5NNrNUiV8113Wd+k90AY=;
	h=To:Subject:From:Date:From;
	b=E3suddjGs/OVY5xoefQ6EgTgFvo/wHSsj/FWtLpJaBjPcNml7H56P6+fyTUlqHfii
	 bpUBKHtUaMK9tcOlslSHTdRHWPATF2b7UpbSkvPzkLCYEvsc6/vvwnH4Cs+7eWCLUR
	 dEdpFAF4jg5GH0+9+8Cx/TJPuCuovnkR0Ld873qM96QXql0/L942jSxoVwm8g51YDJ
	 Olbyu1FOzaiO/WRO9gCQ7tyO/G4WgabR+CCMNb8WqmTZ4huTohpD6qQC8da9/onszM
	 xgxkP1N3hIv9bWooseoIvQ7bBucS7yz+wPMMYRP9+3C26Q7Sbl0/OqLcGS0XBlNPZC
	 ZepRRFrz1tOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB11AC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438251368.983.2363143291321967197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b920bcad1cbee1bbc009aa2cb409818ff28886bf3830976c6aea347d0346957
Date: Sat, 18 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784382513
