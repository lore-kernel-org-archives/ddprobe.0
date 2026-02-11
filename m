Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6252A4AEE2
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770795294; cv=none; b=p/Q3rWnwSzyBBxhKatB/phAHhd3zEcTZNKOiPg4mWBNyAui82jbjuS8orl1O89R9GYx52uOK9Hiw06tJ6WU2P0Zvwp/OBDMk/fK42FqG41RWjqi3cAur6QC+5CYbGuADhbxA39Q4rXZRrTYjvurAMO2FH+muMjbkTXx14HVI06w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770795294; c=relaxed/simple;
	bh=mP51XAEJiaE68dHjDm0OkOYQF/RSC3vvRothbnSnQdQ=;
	h=To:Subject:From:Message-Id:Date; b=hM0PD1bZi7XrLeLF/Nf6/EK9baq8DD9nY2c4RwYlmjOSB2yV2EUXB5MNAGM9dmI6OG+y0lPwwn//nT0SAia9te1UT+rQj9fTshyBzGMs8EnxoQFYw4R0rQqwr9Aw5AquY0TVeGeZxHG8YP5oA9GM+/2MLkehrEJw3BDG8DUwmXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojq7CRSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojq7CRSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC881C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770795293;
	bh=mP51XAEJiaE68dHjDm0OkOYQF/RSC3vvRothbnSnQdQ=;
	h=To:Subject:From:Date:From;
	b=Ojq7CRSCkWSLHidC+Ea19Z3mjk9B2bxQaRaCMsDScygv+h5P2iyhe/fSOVgg2VuEn
	 ZjEl+QNPVcNbwi+g+gNxKC7NicHmsXfsAvkpMUkoRX8caAF2nNSfT3dnzrcRG6d/qS
	 UzWnpSNGmSPu0THDYYV2JDDRXrpDspiyh6f0YfzYzYfJ3K3pO6ccBBNLCOr0rG169u
	 4reLM5U4x2O/d7m6XaVK2ajq+GGM1pYLxswuietmOppzpmSoGOaGyJcdrBc98mvat3
	 +kbDtWLUO5e/jLvmnatZBqdHFQjFvoMymA+5G3d1G2vZU8x56S7IGXoNzVxjA2BCPG
	 Yldlcv+H4j9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42FDEB5975
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079529369.30852.9278314868507856434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e4d32f892871370d2731839a7a3580bd0a21b535a49a6a968626dd765237c3
Date: Wed, 11 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770795293
