Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411721A8404
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744547994; cv=none; b=k0JMDdjcWmor8ZR1hsN7A0fm4uFfuinxRRtFCP275BU54MEUjNZHlGhsQYHyPg/oGiyWANjWXpnCyltHCwNGqGPK8t65gNh6aOj+qmj0ibiIAuyBRJQZyuLS5ps2gMVWcdJfGyLSKED8sKh/iBO/I2BTYBGQ3GPt1VJWPHsZJsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744547994; c=relaxed/simple;
	bh=T5yj8aweC1ldUdIKpZgMqkyxErpbT1TjCqLogzx47Yw=;
	h=To:Subject:From:Message-Id:Date; b=dcrTxodk2wbd8EugmK44ztE5ceKyh+oaDumur0pE/FbwyX4B9ZW4m/GNz6x0MaGao2cYC81A9r67QzzWZClnjd+Cit6KqJquYR2lT8b95j6PK9BfE4XaiSSulYvU2H8CiMGKWuQfpq8G18OjXOmsrmm9VBdX/VQVbbG97/Bp2gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp4lCro2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp4lCro2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0ABC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744547993;
	bh=T5yj8aweC1ldUdIKpZgMqkyxErpbT1TjCqLogzx47Yw=;
	h=To:Subject:From:Date:From;
	b=gp4lCro2IVfqrSTGoGjjcLQLnAnmHS7P0Ov8yUvoxiEi/jg+3J0Fdvxz1VyE3QqbS
	 0OnYWhM0I4zBifSiW5nKKhLCPsVB0AmLNgxgFMRiOwV3wvha7pRtMpjVoTNTJxrVh5
	 mA5O0C+XE5AvX5v2HMt7v0gyq3XV0wxb/UfcihrL0uKBfArIvdRZDNGcDI2Vf7A/X8
	 uKXcdFJm7J9VKH8ygbS2W5PfOVjdIShxfYBdPCMjptKohauGO9idVJ317cdyh34BJn
	 VoW4kkQuie+kYA8trKkr9tTy76K32jGn0PIx5yYedQOs2YBtZUfth/o9yink9f7vKB
	 Ilk3EDtrtBlKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98072C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454799358.24463.4449209078156766428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d283abb7299d3843b53cf2c30256d5da84fb09be144f73c9637d5ef3852792cb
Date: Sun, 13 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744547993
