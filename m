Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2761EFFA3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742552394; cv=none; b=OI4O8PvuZ/ZRIzXWoi/1DXnt4PYXhm8kGMNVlVTVLvCae3JicTt3G/Gm2X8oDhDX64oxhfXX7dw/TJvw2tCyjUQ0pSc7qeVdpvbo7hJZSz1Xywl5SUZ5O1h+LVi1xxFy7+KShmE/Q/t/yIPpEUEAzGIEsAMzr/BsfJvViGI+agY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742552394; c=relaxed/simple;
	bh=sSlPY5ps3kaspvPxVns3bPpGaVIzCOP1qN6e4ozEbPQ=;
	h=To:Subject:From:Message-Id:Date; b=rMYpFHfAXfqMctoKBPubD0aNrDDZ+iayjacUYrcE6O9vm4D27foWQmdw4pO+liZ71yTjvzJ/36Oz6QyDkThjqW6KPC1pGntt2jPQ0y9lKCx7k/3BM+obE/lIz6Vw1ruLrYaj06/ilbkGs6Dwxn/uNb9IxdFf1XPjtIvlPGSuecI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX3rMBEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX3rMBEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA176C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742552393;
	bh=sSlPY5ps3kaspvPxVns3bPpGaVIzCOP1qN6e4ozEbPQ=;
	h=To:Subject:From:Date:From;
	b=TX3rMBEsaOviqT72UisS9JRCxug4gcQDwAznRRXgmHt6nPP8x54rCs3Hwcw1wzryg
	 U9MLBO4kok+V4zDsY422ie2myCWKUvVTqVIkMNR4PsmQCKd6cEBur/4GJC/xFl6/5w
	 rxaE2dhYJzxwcj/kl80Ie63i0XnTBMf3uCT+uRKFzpzrTx4ThEGF48j68K0kV+rI+X
	 vrNGFxw/scAOQoph44bNcMB8j694vF/JD4hmnNZDou0/N+RuT+VzfpUykv7cDj3ygo
	 4Ppo126rEL3iwl1aDFUSVSNGiJ/gdaqU23UPeuEur5ApR5RRzstl3l+p0tIK6lHh6C
	 fnrJmfsKPRx9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964F8C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255239360.10434.7994810245713642804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090bec8564f9cbf2fdc572ddca4b81c3a2d63e96a756c1229d79c20515aac452
Date: Fri, 21 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742552393
