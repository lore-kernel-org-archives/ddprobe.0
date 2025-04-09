Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5110F1D54E9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744199394; cv=none; b=hqZW6qoED2HFO0JRqN14/vPAHeG82TrLHqcG86J+bLqTfPyEtAATiBciPtyEJp8kLsOUzOBK9ZTSWgZOMv045qMQy9Wt7vodQCLN5jVeYZNzs2t8a0cKVJWStJ2LEpIoubQ4rG9V5pBvjYkL4nYgrt+MR/6nsTAWlTSrLSdewRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744199394; c=relaxed/simple;
	bh=Gq2mdENBfImYAHol8kh5AJx/O/xfW/DCLNHK1J8WPyU=;
	h=To:Subject:From:Message-Id:Date; b=udEIWgCX13dzECnPP6tFV8n5+/Okq6fsoFQazy3STcbWQj0gV83aCc33YOTW9X2YyY03ZXceqR8kLqMHqR8CMDqGLndEbAldvueRmo1hewoCTNdukdJcep8A3G3UbQ87RumB0l5BThmcgBbEbLMN6oQX3l00P9NuzuyAKCgM7UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epUTWW/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epUTWW/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83C0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744199393;
	bh=Gq2mdENBfImYAHol8kh5AJx/O/xfW/DCLNHK1J8WPyU=;
	h=To:Subject:From:Date:From;
	b=epUTWW/yz90DQTqIYy1Cv+hBkTTbZwZpKzxzrqgtfgR4g6EygCQSlJdtZ9cF+kt8+
	 cQK9uJbr3WGt5LYvk20vi5Y02XXMmh9YSgavsyFdYAves/QgsgJSpAHAdGWwA+EL3L
	 otnKmm8aY6ehP87WG2OaDXivju+VWzR2jCd8OsTzNjdzDL3BTRVd2iISWCtYuzjaRO
	 zTP4m8yIzEjNROQp3SBxNtPcSzBaS98aXgIF8/hg4+48LskvlbqRb/5BVlIHobW+G3
	 K72t0dxLvJ4z/UWhRWLuYmYLYou7j2rmnQVhMYnH3fKfvDX3Uu+81C2PpSvTQq/tBL
	 2ssLdHKZ3ToVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D3C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419939361.6867.15064898631558954656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4672ca367dac9d86352ee0fc339c6dc45c2e25a54ba33201f48cd6ef0135c06
Date: Wed, 09 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744199393
