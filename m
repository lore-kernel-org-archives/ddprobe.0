Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C84B182B4
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758527395; cv=none; b=J2P2NpxLwQdP+try+akFo56kQaP6orfv/VpLGSboo/HcLQK12aexXTs3OFlb/UYle/3MMWJztFcPzwnF4m/9jw5ziJ5ZX99YgdnRjc1QWcvOeKFnbAKwqh0YKuRlwh5eM5zsrIW83+XMt67ZucsrXpgnjFJW8lUg+vSlokzaI1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758527395; c=relaxed/simple;
	bh=+WvcDOpTWKen2CtaOgsTYVArBTe9PUdD6vlmfGxhAow=;
	h=To:Subject:From:Message-Id:Date; b=YmXVFD90oUyAnnIcjF+gcJvFPvpyNsWUI+xZ1Cp4e9rSGv2g2cZBioG+YXTasrRxgJZYcHye2L23hpRJOzSQTQdJkBEqpWEphKhxZftL8RtnU9tLfo74KeYJ1lTZ4vobPoA4taB1IOmkRnhb3keVZ7C16tQUgWvPYNUnvfLfzeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkdHp/1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkdHp/1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758527393;
	bh=+WvcDOpTWKen2CtaOgsTYVArBTe9PUdD6vlmfGxhAow=;
	h=To:Subject:From:Date:From;
	b=JkdHp/1g8dOTBJfmC2dQDBQBLeMh0psyoKieru/NeQ4NW8et4oXxQu4vzmzp/dPmr
	 1Egis53iBkCiGoWc2O1FLclBRMyCpO4rRtClqvCvqScNbZdLxwBXl7nu/0j6JtLgp8
	 npnxoH6iMslRQUuMtB6tQsYK3sELee4l6UBRzE3en6vEdAiBUS9RkycDIHpRIRuqTb
	 qJNVPrncqcgg7j/tu3saVHOZUV0fe9ZO4sTJKnP9Eb4r20mUIZ3jdUqy9ZSoLs2GhC
	 TuvdOQc8ay8ATUYuqDtfAZzEg2K8Vovu/DR+yYjcd98gIybF5NM4HPlflLifyaShv+
	 hsQKhYRgeT2JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA91CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852739358.22329.9904723900795093600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497f146f1071810cb8f59da061e9110af9cfdd045f83defe3af1d18d6e4d6fe5
Date: Mon, 22 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758527393
