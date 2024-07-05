Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6407328E8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720148123; cv=none; b=OhS0vd4x4awkYs0/k4CSmj0MhITej854NUzQF17DYwJ7Vp8uVIQO94Guo9KB4n4jWmxbcPrRNMyMLsdXhVZ3wKVYnzUDsvXEqwBF/K8nXbAggOc4PteCEy5gI17X24n3gs/CwfvAQYIYtUBKq8PSgvkRLh1lIstWNl1WRR1Upm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720148123; c=relaxed/simple;
	bh=pU97B0OkvKPVvN6jhjFCT86XDl47/xTFxVlLLMjrFuQ=;
	h=To:Subject:From:Message-Id:Date; b=rzVwOuwG0t4oWRHFV+Ict0tJhuIaxg918KStbba7+y2qFN8PGDAqiBXN/8q9nAciH6C0TogXYP8Lpdy7yHnL6oRHSKHZgkKDziLOc/8M98ophtBsBP5ZeMEUnpoe9dfafZoeMB7psv9DzNUS+7+2XEcT630/Ssm+j0TIlgQzIB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR9YTgeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR9YTgeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1510C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720148122;
	bh=pU97B0OkvKPVvN6jhjFCT86XDl47/xTFxVlLLMjrFuQ=;
	h=To:Subject:From:Date:From;
	b=HR9YTgeu3dA9mgiFlMaOWh3ZTMVhpn+4Vu/1ttjeblN6U4vgDA43cmbFVXEnfaTSL
	 AwjE6jyb/xaSLRdVAXvJyR0z2qLffOSjIhcZut8ahRsKfHbw58HAo8xyVKy92KzQKV
	 gJ9M+45U8P48aM73AKjfK5D8M9/gQhEkPC3MQuA57tfYSOIF/SQqX+PMRyqw3IbBaN
	 5s+DrhvQ45MAI22npQB1awdp2d/kl0uhCci0QLV29wVXRxc43h0pfDyEBTnJ+3wxf9
	 8XqSclPmO9W5mZ37ggkFO1yr+NNSWfBMHqyNxCffItVE6y/HDyprh/8WYJe/w2pEJA
	 y+tQk3Jb2yZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E49C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014812277.23982.10802990843616953251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9372336eebcd523bff79938490e2012f8b26d71949bce826dcc0e3689f28baaf
Date: Fri, 05 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720148122
