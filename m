Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1585B23AE93
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755673794; cv=none; b=azYDQWvCrj51ZHQsILOBIXk2S6gzfJTBaAG5RfDfBqrYHQd8j2kQTqLpR1OPaGxpfOaWQXnMOzpQPBcrlAlskcg6SfAO6kslbO48orq9dYysQnpJEPGg8Itt/TJ8sC92/xwHjgfBrvyiPKauhjcqY74qYT9mP3MePxEkf8kjx9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755673794; c=relaxed/simple;
	bh=v3tY1RGlm1P3M4c0+XJO4pZP4Wka7NpRlu9eD4PhI2Y=;
	h=To:Subject:From:Message-Id:Date; b=d3fkXC+AwmM5Dqf2g2xE/bkAipCBYOb3/CZIu0/i79aqRJBrtdHbO7jqvIDfQzBIAp1bU2/QuTVBsWxEgg1+3FuHPDs3SP+3OSu+pN7PbYpLB/+3EQk0Ytt8eMd5MDILoj+/bO1HrhYnSHoWW/4g5AWzpRzFVKK5BJulpTsCG/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0/pI4Bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0/pI4Bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC58C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755673793;
	bh=v3tY1RGlm1P3M4c0+XJO4pZP4Wka7NpRlu9eD4PhI2Y=;
	h=To:Subject:From:Date:From;
	b=q0/pI4BiP9qGRoqoK2nK+YcidBvy0ScGjoqLticLSdM+MVoCf9qSKd+HvM04RZC/r
	 1PSeXAetBTkxxUwIOZVzfLapcVl6ng6MZMlEFzTT3Cumo0B8fHTAjS2xcEJs8jBHZs
	 2cBvurdXUvnVawjDmgJCrVzru1Um8FPpDVPvVzB53rZKEGn/qu+qhFc6tJpIbFZQGQ
	 kfO92L+GXzTaczQf+0cZhuaSxcYMB0/ZjneIuFP/GoBt6Qm4r+aO0N0+Q/9iOz3JQ9
	 Lkht5jrJvtPBa6+Ur+mID5YCC2WUBn5riXaDwZYQceY2UokJU0yP1KRBHkRlliQ8Iy
	 htTRghDt05Abw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF43CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567379357.20158.1144449416504837758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266372202207ee4f20db3f8cb13f95621a7be64e9e243667abed5a678a968165
Date: Wed, 20 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755673793
