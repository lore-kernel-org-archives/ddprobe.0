Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A688C1F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788067834; cv=none; b=ECLpY7yjvFQoK1fITKmT1vWw8B5U6X7cV3nuhbSxt/Km5JA+qmi+Ke5S4fJyMcUfI49Ecn/a4VwC5rBwd3bfSMzRP9SyJwp+NcFNYtABgb7dZIcUH7+g1FNP2RTy0TqzyjfbO2ggbMHX88i/ZA+gVjEbQ2c9aInAzSKYi1jIr/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788067834; c=relaxed/simple;
	bh=9F1uxvLEfS9V/Um42dx1OQ+OWyPkYkmRZQPIM6UJlGg=;
	h=To:Subject:From:Message-Id:Date; b=irpZmaJoKmWrFgq7CDkEpJ6jy5r4NezgBK87AAE/lQXfIpkAjHGLsQ8hzin0n+5EqZjxzmkOkxJz3ag4AvLBW5KW6tqDmfPddUlLZWCJaeXuPtZSftN/B1jbz5zg3dH5L8e8PkM9Wdnbe7gbcm+pBmn/myRstFPDH6J4VsiFxSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogVcwB/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogVcwB/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2F6C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788067833;
	bh=9F1uxvLEfS9V/Um42dx1OQ+OWyPkYkmRZQPIM6UJlGg=;
	h=To:Subject:From:Date:From;
	b=ogVcwB/Q4Gk0Wa3C/IXKtMrHnnsILK10f8GKz0BqbJuNbNqpRnnD+FmL6nKtl2DFG
	 4g+LopbtvN2TGNvl8s4BiiFnUo39S9Hk30H1MV6L7IvalvvcG6NshVGBrKjOcgVoeD
	 5Rpgp4p1DmAVjNAZT6Mwvlv8Sl0jrLEfdTsUgHuzPBfKvMsvEDOv+kopBFcTIcN2si
	 onQVxuiU6HHxzmNqr7uP3a89b/8HSyKfaC7CRKEKqYHqMbh4CgMLqBTJ8yhsOZqCfQ
	 7AB7Y606Wg0ru/eTjaiKial+YGRmtTl58Aifd416kpMhzE6urbKh9dQT1XKSLzwPmC
	 2+nUZRF+S+j1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCFFC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806783368.24531.14919663290460834240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de179a9a2ffb01eec37dd8ac0d91ed40b5e0a24d89fa7406966e632c95dc8866
Date: Sun, 30 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788067833
