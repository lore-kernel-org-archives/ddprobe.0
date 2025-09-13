Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D082582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757746194; cv=none; b=YGMxeJ4sDIgS/7EfSLDiwUSB/T3rlTJuAWvulYKTs81XjahcGXIzNmwC8nz6u3+fNLg5Wxs6wEhSSxhx4g/qhEEIIZuQ1/srGmZXpd/D65cW38OC4CbPcxS8+N7cKQrsOl6Ofeer7Il2kz6G3yF4MnBpMCuYYyw9+McuhZoiZH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757746194; c=relaxed/simple;
	bh=BxM+mE17dviWq0y9qIn5j7ZnRQWOgxDs3rqNU6RY6IA=;
	h=To:Subject:From:Message-Id:Date; b=ivDc0MoguPYOQQdOEMtvEN0VIj5nIAaa4D6T473mSKh/ayQa2MSdp4jKRk/P828P5aZgBr0SseiJoFe14Eq7wW4ukckFNguo0vv628Ns0MxKw7nVQJRpqefDSRmfmQhEElRbBLlxJmalVY/TpfyWeyp50PZF2XvKB4fhGuuP0QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as8T0F7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as8T0F7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A328CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757746193;
	bh=BxM+mE17dviWq0y9qIn5j7ZnRQWOgxDs3rqNU6RY6IA=;
	h=To:Subject:From:Date:From;
	b=as8T0F7ITJT2WDFUEdNtZ20xTFh78cqwSvkFLP/5K6btXVQfcgHjUJXiYP9PfESgR
	 MHAt2AWn0gs7mFWpl1XByKuL2edP50b2eI+Urxsg0BvhnQxdlD8Y1hRAHHdvpYaPYB
	 bKw6v03v1zAARiqISX6s8oukTDdR+FUKstvPJ4LkK5Jbx3BsfRXEFG/A1H01oKIQw7
	 +ZJqAs8gz6zQ+IimgqGnEn6Z6iLzWTH4sRxVx/B5lVaPU/8Klh30LMg2zu51pkL/Cz
	 4xBIZX+0rpFTIJAPpyPrykllDyKb1pnx0OWuDr0GueF88KCJE2HItOL6CTeLjFsj5g
	 ABozmRCAbwN7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92039CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774619357.22029.731484545002417056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14305fa165e80ccf2e845782c297b4d95fd10da5a1270d28456ed9e91e87363a
Date: Sat, 13 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757746193
