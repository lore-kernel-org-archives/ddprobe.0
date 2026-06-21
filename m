Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A3437104D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782077194; cv=none; b=ujigbFSSO3Vaj/LNxSFBtCfcB3bBnzGF4iWoDrE8btfvbMG/UDM1c/nqA2vDdeIpG1Oke9AJQDCX4wwxqRnBRqp8EjWXzdZv8cHuH9w61E30UvxbeFN9bPQTlXm9TFYKEroZB+BbO8EV4R5g1QkouKHFS7VV4bXBnhvzzVgAGfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782077194; c=relaxed/simple;
	bh=j8OHlFex/MqOQQbfI3JEcXOV5ATM8qnGTAtQ2d4ajQg=;
	h=To:Subject:From:Message-Id:Date; b=r12eQHG2c43KDj/FRiEhQEsungOJtiL/DFh4pjOt/LmPtHyoxUVRVQtYFRdmw9m7f7Xm6BR1oGLmG7yGm/PvZStmHTY2eBkOCr9w83twWeAaWAeW2tr/WgNwrS5g6HtL+sRK/YMBlwhC7+yy5LxbKP9xr/3O5q/fqRwvgONL08I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dDIZOv7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dDIZOv7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C392CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782077193;
	bh=j8OHlFex/MqOQQbfI3JEcXOV5ATM8qnGTAtQ2d4ajQg=;
	h=To:Subject:From:Date:From;
	b=dDIZOv7y7+ll1xTnxSoiKj4P6xCmpttBL4aDWCuzixpAlKiRvoK99NyFNqtWakiMZ
	 8LAwTeHW9rYcmTLHe5pe6KY+nWBtU58TlQwmKrvaIyjvUiombh/w5dtPCr1W/oJyPA
	 vfdXGtIluknp6tm0coc0GHiPexSqUNMzxGJ0eHsZpnNSFe2P6jWAcIqmBcncQF0Cd8
	 vUox9sZBYkxzlKqBiCXpEWhARw95MDFI7IjeYiUX20M2PSxQpqCO5hrCsix4P7IZmN
	 1LmKQQDyXPDh9r2AeoIgwA3RheB7yzhdI9EzLed3zsjC8uLA6Qkv+ieFLB85wwAOgI
	 w7JR0SOzQvumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB1CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207719368.23952.10010987187943878606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eef24de9fd4a9f4861fb9b8c311ba68d328e89a9b87c393c75528ae0cec3595
Date: Sun, 21 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782077193
