Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DB53AEF46
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788111034; cv=none; b=PXDIr1VzHOblsSCRDNazAxRvi7dugNt0LSujkhrq5uBrVa86A+AwXrWaZYRDhGCFJHBijJdaPReeeR7WsRtcBy4HVng13Odr9CEkvkGogvJgV4PaejxD0ZWMfX7BvEEQjHpCbKxtzkka0+qrHhLjQBm6NbNaamsg4WrKks/nAoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788111034; c=relaxed/simple;
	bh=uO1u36x6aafIi5q8k2EaMSXcPAiTQ8thLQHhZ0Q6BN0=;
	h=To:Subject:From:Message-Id:Date; b=hb7Ceh3Aa62tHbb3W1L5t5bJjwIvAMH+eyK6qqZ0l6VpQ45b2R9mGBYeqx9aOrX7gVHSPKUQ0wIqE/zo46J9eg37EyduMTVB0f7MQhYbnc2mdun6Ge9DXVgZvKeByGdTbuITcyRldfzN3OVvm80We2Pd5aKSm9PpgSWKVKvQrlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6sqnLM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6sqnLM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4D7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788111033;
	bh=uO1u36x6aafIi5q8k2EaMSXcPAiTQ8thLQHhZ0Q6BN0=;
	h=To:Subject:From:Date:From;
	b=j6sqnLM689htN08Y6jYSPWWunXmqqdUs51e8zY5YFJ+q0BNDWTX5uPkAWLK7sFE8F
	 G7L3119lVjLUnMGBVyBvae+PJuxi9ALYCTd4ky93RayLd8UPILw622HcLao8Eb8aak
	 jlTjIoMZJKq8PVcpsVS46445xaWGED1gviEdCvzRKtVwnI0zxlWn1C9su+P2ET+1ZT
	 6E41Lg3SarzzhK2ON+f7nxT9oPpLJJxurxe0t7q7s1DNX9Oy8aR/tAsV82OPqVrkrF
	 7qPXEmWD5MGGhuKIZIsf1vQcKaWnprHn3NTDtvCUly+GALsjdoO+eiT43ZwDtL15VC
	 TS2Xm7xxgDz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAADC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811103369.24241.14943748714678173626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d400d3d8f165f4dadb65cffbf4e431e27d86c8b2e95b5736ea2d7890ed0636
Date: Sun, 30 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788111033
