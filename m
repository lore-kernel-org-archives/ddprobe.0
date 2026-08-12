Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE8733B6C2
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786492834; cv=none; b=YpUg+0sy8Ek9svBq2g4GpQYr0y+EY+DRP+8Hr+p/xPNn+a5hMUxPoaK7oBtfvEYLyomO6iiykwD5YDAa4MhAsYvEAV269nYkdz2FHNBdmF/fd/gdztJjFcEsNvklUC9Mh3ezi9CTNDDyIjVYvVC6gqbW+/Mz0I+H+wZVcHicVN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786492834; c=relaxed/simple;
	bh=sO+kmgbJM6MMC86zCLMUeW/sE3DaAu1jDMuaEl3wv/s=;
	h=To:Subject:From:Message-Id:Date; b=iN1liq9Ba4HmwgQ/F4iGFXZMGaE8I3PhXC2PhJG5ShF2c8Cncwip3l2+aPrxMkVpnAl8458J/EV0Eh6aoUyhSFAQeXrEaaCW7r9cO3rHuPZGq09FRj1SfXF1VefjIvBokC/FJh4vOvB+8WNJroJOUa5W7UXsa+Iye5z0/DjETr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7VzvN8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7VzvN8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB44FC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786492833;
	bh=sO+kmgbJM6MMC86zCLMUeW/sE3DaAu1jDMuaEl3wv/s=;
	h=To:Subject:From:Date:From;
	b=N7VzvN8JBf98CGV9YqqZpnUCUnV0MWVB+Jvdai8RKC609sMP1VCFfh1WlLPKK94RP
	 omneKL7jnLbEpRpMhXK+z0sMJ0Fm92R43mxPGypniQhAEpsFkhOMI6iF5ja+6tNY0X
	 LzMGc0r39PfkkW1Py4HgNuxEuT8sTAxRpzEZm3KRj9/gwSQf2oy1u1b1UIPJgzOUw9
	 trT+Sg0u2Z0AkIjROsPmaaLo/uw8i1eqlKjgKMchq7aKG35d76g+0dUt+CcT1M9M2R
	 cbVLkfzmG93T0Sac8ijbUsohzuRG7ON9wu5+RZd7GutBOSIWEoHasVyclaaP9BtizV
	 V+RtwODzS9sgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D65C5CFC1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649283368.11366.12954669543976714756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e890f46b0a5cb26c31b33290e13965c83a7a3d7cc3fc07cb556b7a6bae658c7c
Date: Wed, 12 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786492833
