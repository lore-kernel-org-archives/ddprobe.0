Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F351DDC33
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759154994; cv=none; b=YoTB2SxQN22zQCLzAyn4oTVM1Jdcvr7lQW12WY44yU8RRh1mNP/01AcQt7DBcHSgzKbVQDyTZjhpppP1RroAp2FBwa1FrFZnzWdNd4sToKsvz6fTH04ituLGMNhCkPdBHplhLXke6tQT5eM2MBpuuk9yAP8oZ4qYsdqVvMSj5sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759154994; c=relaxed/simple;
	bh=HE7+2ODEBeNtFD60HhuJqDmnNTHwZbxyQsWwN/h/eMs=;
	h=To:Subject:From:Message-Id:Date; b=gv6wdlMm1GXweycWaFaCjh4x2Y/5sLyY3irCjcQbhm+AcHPOo7TKapDH43zeAvuibtPnEhwi/KNc2XO6PLAWV1E+SKVWT1V+yfqQAd6VSnUPPVZjaf8uIg/TZMg1Tg/wstZDXKE9qKTBbM1Cm2IXGSXJE+KfREup3UNWAEHCwws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khG6plPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khG6plPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ACEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759154993;
	bh=HE7+2ODEBeNtFD60HhuJqDmnNTHwZbxyQsWwN/h/eMs=;
	h=To:Subject:From:Date:From;
	b=khG6plPBIrz0mx1DyJseUaLvh/yOMvGGE7lYA23DOT9fXpowZQvSx6zdc+rjfsU4t
	 jHY9G6l95mLlEiLtyzpJXea1hnsD+6CH4CsR3gTMCG3NLtnU5fZNI/KIKdG/roy69q
	 VPR4SjraHVblIZ9zpdbS0Kz1EDKDEa9SoTeBbc5m/wwjsVp6TqE2bns4Z1rcaoypqn
	 Kd5MeEOk5eDxDqWfd4A0cwN/+hCnXgPKmysLSE2c8VbbGV9TGuJRSleUYGerHrT7Lo
	 2mJjCARpoPiMH2P0dPQOiJhMDDS6fREPpH+petfqFR5IxkESdBQ/BcjiCehXjhTYkS
	 kNG8iM1YQQcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97893CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915499359.22645.11641505892080568123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434eb1aadafcf74943eefe2c86e7c1b514e0d009dde4a9e85881821d106483d6
Date: Mon, 29 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759154993
