Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523DB7D3E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719482063; cv=none; b=QlBhrJEd9VwnvMsyZiNJsEzmm2d0/eQlSGDto2Aeuaa7Etfm4rODqiK2CfgIe367HmRmi6Cjw8t2iTKCLkbnu0qgL1cklm0G14qv3SSrwzTiLorhnJGDMQAmZB2Dm5fAZ7sTgeHLK5DAwfHynJZ/F9al5mGOBQCEytT1jhoM1b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719482063; c=relaxed/simple;
	bh=TjmxUSm4xY+5gGgigkD34H2cTM6V9IdfHW92J3v6aOM=;
	h=To:Subject:From:Message-Id:Date; b=GmGr83WVJDAdGQkGPQqkQPZ4B+7CUT/pAoQKDnn0ZEADuu2LCOJJkYh+LRa7yHurZGhb/3vR72lc7YIyHmTZdSGYpGobfEbZajg3Me7OyUeYtftS2xwr9ogX804lSYaQGEcY6uIo54REeo11cK0Rx3cKAdAXJiuP0moZz6sWfIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKRGPpfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKRGPpfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D508EC32789
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719482062;
	bh=TjmxUSm4xY+5gGgigkD34H2cTM6V9IdfHW92J3v6aOM=;
	h=To:Subject:From:Date:From;
	b=KKRGPpfoqfuKTyEil33YEOrVFBsgQpQyXoKwRx3eL3pkFLo5pD4hlYEWAEFgV6B5X
	 aYcji2DdpflzJz6qW1tOZ6x5Lp1H6wBD2icw3d/E1JBuQpSPCbXRcxk+3itXx6L5Vp
	 zJHnh7jefIJC2gufdQJclXCj84VsuNXXO63voTPtK7KrUJg1Ln3SML1olrUKP6O9NU
	 MCtUcNii/42ouMMtJ8Qcgx0jSp+F76SbPVkXFdjUoC1oqU15tzjhpbaK6zUw/NXEeU
	 Dz2jszrbNoN3oq/MUO5r+xIW2JEB8SEcKOboA6ffejujEYpz5kKkoDBsRBX8JJrImc
	 81uWeu9oTU3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08B5C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948206278.3032.1812636088536426895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988e39e7034f05c9bdfe027135a117b0e4f9b644881c0d3fb112d1ea3e22645c
Date: Thu, 27 Jun 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719482062
