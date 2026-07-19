Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547721509AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784494114; cv=none; b=XEQpeeNcXNWHN858ngVPJ4bnJy/kGN18hHnxvrPtmy0PCLH8ebDkIHOo8QhGVroFBr1rw5CFnUlQ07Sggz6U2Z3AbbwLENoUJgHqJ3vEwucJbNLAUxKw+FDQOtkBAnpeusBS3IMpxiDsy2EJs7Bt2oknSse13jRtiE0OvQ2NJiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784494114; c=relaxed/simple;
	bh=sq103ensSK4w29FR84lB0R2A+owmYTQN+A+8IycUAoI=;
	h=To:Subject:From:Message-Id:Date; b=XBYy5KbGiyaztBKzlFJh0Q23s6hvGdyUL98MEuB0agaipl+PV16RWTarJl8tROiaArjJDK8jBCwsV94/WnKhs6W9J2JYP39m0xkuQYmUnc2tgfG9SI7xITKjokL1iMt96gxisaRneVzamTsD/LlJ0CidtVSHiGNpNvpyOx1geeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkO+RJ00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkO+RJ00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D842FC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784494113;
	bh=sq103ensSK4w29FR84lB0R2A+owmYTQN+A+8IycUAoI=;
	h=To:Subject:From:Date:From;
	b=lkO+RJ00cAmeVuF2nQk3hM0LkASJtvWPPJufNPM7jMCr4IftneSf/K2E0kJ1P9lKe
	 DPvemI6ZGMwrSbpjum47cxAn+z4VLBkmTbLzMlKLg+PYUDSNOqbw6jjabu9Yw+opZg
	 xPGko6I2zF/5lal3o0TgONudi+hp+LYsXEBzSUirc6Vslc8R2mAygeV9/7v/btD9iI
	 MCln3wgyYKq8Ke+16metGV0dvA26vzVLrKidqbuEOrO6qYWSuMqscTmiIl1UbI5D/I
	 TCwstdiEnoVKxz7aM/cvfqaG2rqQFpLQG3L7W01ko/4B3k/8+pY+ruIOoHThC9yHC2
	 3osMu9FxMwiHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB19C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449411368.28485.1865789527149646840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8716b13d5ef50c2e182b737e244e1cb8a904bd87c1bfc124f992e4f7580fb47b
Date: Sun, 19 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784494113
