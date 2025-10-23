Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3008041760
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761238194; cv=none; b=HVev6eRZDLCGiU16Q2eDbYTC7cbmO9SEOzQ/9mDaEi2mLKlfy1Mklp13Awz8BmdRc0R3Wu/7F9DT2MI8HOVo+BG4fFnildN6Ls36NRILXz13YukkPXidHgvx9so5TriYiMBNhrDdE+0F2YovH+qTI2VASPXlEP1UvnSusqfmYIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761238194; c=relaxed/simple;
	bh=Hg9XPlsmajbpbRzcywHz8dAf80zYqkP4rw1aDMrbjaw=;
	h=To:Subject:From:Message-Id:Date; b=RDRql2neHbrVVuk/6AbSzPOE/5DoSoLIql5OllTiBS/xE6Pxikf8LZ1eKjP9bG1Gc526dfmCNNMODZR1ihN7SNFqZ3KnZ/cwYCknKnvJ/WeB5RYVz0vhU0XpDAigq7BKXpLFX8Ykeon2L+hAvYuV8QGvxOirJ4uIgafIgwZCZkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ0NVWh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ0NVWh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E6C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761238193;
	bh=Hg9XPlsmajbpbRzcywHz8dAf80zYqkP4rw1aDMrbjaw=;
	h=To:Subject:From:Date:From;
	b=WQ0NVWh+UDmnyLtVnoPETKKbxLEVvc9FhjbOsthdMbcV9Vcif3QAXGPe6VMRF5f7I
	 lhstKFk95Tehtumd9B3FXX8qcnVPVgQHQiJyKJfXnWbQUosJFgGBxcAr17fwpSXfrm
	 2Um+/7JUtboDLSogU+RnxsDB2TlPHKYDpKH0yt2YiWu9ICAssOXOS03eVG1PomPI80
	 7eHHzFxTxgUaHTpgr4OMXDyrTadMjIvmjngx8rZaHmAcvP2lzfWifNL6ntGU3vIodn
	 Vt8xP/4AARYr876MqeoqNlKRZw6SEI1E4wZWQSmD1mgb7xm8nw6BykB34Od/lToTCC
	 TW8WK61yuK1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F31CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123819360.22765.18062006171202586954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c714fab8526d58e7a68a3bb38b726532f8078223bf616d9b7a44b5b63a25ad
Date: Thu, 23 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761238193
