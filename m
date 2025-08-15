Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CC31B87C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755294595; cv=none; b=C7YuYVok2fh8eE9n/K5VR482p2/i4IOjrhmOCwGOaR79QitKEqS6eIdBV6NesFiYIL7rt7wM2+QveWBGkftlIIqx/9fJpX+Dw8+EtCSkHUPmyKYKb8BCvZNfH3eBxGGGrCMj1QDNXAzzxV1jk5dT/QvuJm6LOEjvoObWz8xB8NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755294595; c=relaxed/simple;
	bh=V/vjDNUkXSHrx1mU1ztpCrhiMqAPGEVYl0wfD71aTbE=;
	h=To:Subject:From:Message-Id:Date; b=k5Xndxw0NNpfz6deRBc+3uLuz/m7JaNIHaaZbl1BEPMS1dlZ7NjwsdrEMItKIzre8nkpQ3LM085vfMk91mB8KH+jZtqObyM6WWmnINoTB27iq2+VXtcULwOTUPI3LYAuKcIxwk69gYnpf/L1hyPsVH7rlXECo+RUbVKAKjLXhRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLVOdMDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLVOdMDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755294593;
	bh=V/vjDNUkXSHrx1mU1ztpCrhiMqAPGEVYl0wfD71aTbE=;
	h=To:Subject:From:Date:From;
	b=oLVOdMDagyXoglFogWvH58UqCWaCvBaAg6UHGz/RQpxINs0SuV/VhUuMCmYqRGHS+
	 OYC/YTJIil39frOAVdUTfUr9VzQW8uqo4oghh+QQ5+lauz1fel+TRBeNmj+upGecvZ
	 8Sue0vIzXeCEXyKSxeRnPnvK4Bag6XaPTMIxrSSXtI7a5kLG+703qh9ORupR/iInH9
	 VbJQHV6gdku4kIK1spNrJ4EVdlfl2Z/Wk/dH+nreRnGDuY/2fgxQihxFZdN9JPoICC
	 rFFZ8MCjp+upX7KuRyR2UNgu+qDfgS1LCLL14LYhWezPBSERn/qaLVzXWqGoRcM0G6
	 EIx8FRDKZ0nYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AEBCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529459358.4343.15279292477290850454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9b81494b1a0b89c9254bdebec39596c0aab825851e9b926f63005e49759f44
Date: Fri, 15 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755294593
