Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEB32E06D2
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788708034; cv=none; b=JF7k8TpH6hBQqRYy5WYXltgPM29doQIP+OMRvKvNAVAzT+4d+Qx+EYV6gdrS0NHR0vXV4ikCdIE+XqLvvnvRSHEdxA9qRwsgn57D0NWAx/1aiGoIYz6e+nDZYADNxBb2KqArtRbNyLD8urw+St9Ad/tTm23wAtRrAxWOdSW3BJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788708034; c=relaxed/simple;
	bh=Gac7IYYXWjp8iSH4tbawOmInaroBu7ZtZxSLogxjz70=;
	h=To:Subject:From:Message-Id:Date; b=Ral9zMAzI9TiD4+TE7auuidiVWpcp0RIbCXX+0rteJ38fIqe4Gt4P62/DrOasBsLuW5qFhcKBV3P3RUMam2CfV0Jxk0mu7P8QVZmH8TgVldHzPVMG5hG6qjqKtZOqmuuLHXuTWlQ6AgS0lPP7Hz+57S0+3BMckrjLlhnwv9tuMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgJcmUIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgJcmUIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EAFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788708033;
	bh=Gac7IYYXWjp8iSH4tbawOmInaroBu7ZtZxSLogxjz70=;
	h=To:Subject:From:Date:From;
	b=NgJcmUIS62TX7sikmG1okcW3ZudEpVZKGswtgjQn6es4tuCbi44feQLIgulnFfuum
	 Om/7V+1mMlb+kJXlAgHuOtYR+7hwducdViVA7976DcJPGO+JyV9VXrDM/6sgEA18Py
	 s6Pt7NsZRUcSevcWi2D2fY1PFJsDyUYPX5DOQ+gJGOJYjplWQ8CB4kF1x+VKyYh7ZZ
	 I/hZ8Zz+K+SSuEfG+qj5P0ob3a1GA17A+geihX1KLCOtlJVbfHUZPoirYIpDagroAA
	 kx8l4O4j+cLdHpgpNgELC5/vUjt2qNDtbYmC0YTfgIAE4oShS7zeuU40dBftlvr1eA
	 9RfDD+zFl5RXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E96C79F9F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870803371.19411.11135983478069191753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377a28c2eaa9c3d22803b5c5bc67700f902363592a2c36ddff4b963417f7b1ed
Date: Sun, 06 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788708033
