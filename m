Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8451E8320
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760917794; cv=none; b=hoKTtIhOqyEUqhS0kfaNaKEJ/t962IVzt6Dzg+LwcmQthh8Xt8U2OnNeH6E9E8NPOUe84kSrv7j8GLUGiINTF8yA5f4aPQnvkwJ+gfc/SRiMBHJmiPme3MeI5sNBnnQqMxjZA809k+yTodkgP8BM0G+z8pkepEGmJUHesHKRL1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760917794; c=relaxed/simple;
	bh=YGgqC3rdgI8jE93DEGv/+9bZ4O/7iftqTkZ34qxo46I=;
	h=To:Subject:From:Message-Id:Date; b=OV1F4olrfqm4ACFBCbCANRZ/rHZtc0alAKCT887YFeA7EwjZM68Y/yvEoC0AAiVi1q18xUqBZzDTtcb+3gOHhiRn6xWEdHh70RaHICggSlQsNNVC2uDblTM46Ojlp9Idphyj1muiq0wSIu8W1m8J/Pk1vO+uqPKwK4sHX992C/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKQCHm7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKQCHm7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4912C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760917793;
	bh=YGgqC3rdgI8jE93DEGv/+9bZ4O/7iftqTkZ34qxo46I=;
	h=To:Subject:From:Date:From;
	b=kKQCHm7x1932SXBlA4lVIAdiHUzDhAMuZWZ46kA/oaN8Tstj0rCeuCuuF2x2b8fuU
	 DlvUWxxUQAmZFAFLjB1DHaDKGbxNbDEQXPSOez/raDhHD3mAr539sMRMpK1ZUXFEGz
	 //JSeQDhc0rglcc2nmKY0QQEczEKGlW+t7O8ktWIvOwHjB7wIDdZL5Ais8pAqQkUdi
	 K1VVGMRoxqDxiMK8EH4UoS4DobCMb6KPODCCQHxNTCMTI0iAKSJuHhHQJOSDxeIuOr
	 p0n/NFNYCD56Y/Hzrbitjl39Vyg9ou7OXZr5TXx1VJ4gRcswQxde8rus4wquhU8I3Q
	 /BfMHGuu4FlZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9202ACCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091779357.2254.7102655814336442384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33123a0071d2eea91f7eed817a328a56f35eac8500ea7948f0aa509512efb1d4
Date: Sun, 19 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760917793
