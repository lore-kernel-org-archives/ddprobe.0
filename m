Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817B4C80
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726348554; cv=none; b=FGXe9w9loNQVYuXS59rFirDJrStahxbraMixX8b3AXuzdFLiJ2MU1QI0KIg+t3mtHbuzPogw08Y0VG+yWCw4Y/P1j1rFESyTPSXyUuDHOaLc5R8OTiaoZYDpWvHLyWBhPFYdHS3pcGrayEtyjR3bNgPVz4A/xbk6+MrV8/3+mXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726348554; c=relaxed/simple;
	bh=7aaNdXHtVk+5oxgO2JHIFBO5PrOujpbzf1mWmOXBlqA=;
	h=To:Subject:From:Message-Id:Date; b=CY3C23rfJKDd+9ngLIcwwe7sxyLuupF3SiAtmvY0g1b0YN1NN3mMqvDCepRXXfwaHV4TzmRg/zBusnvaxiZxh74khN3ki4DL53cF3Tm/99R3XWFodPmQysIbvlfbUOHqmkM8woZFCiOu3zPPmqxoFj3W+cOGw5HP1MIdZlVEJjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpJ9O1zD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpJ9O1zD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB9CC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726348553;
	bh=7aaNdXHtVk+5oxgO2JHIFBO5PrOujpbzf1mWmOXBlqA=;
	h=To:Subject:From:Date:From;
	b=MpJ9O1zDrECdHpeOHmrA+9WkEwrlulM3N0RqKXBqJDhyk00n9mfboPOosqjzF+L9b
	 5iR0DiCrAJwXIirGe5KUyj95yeU+hhkwHR2hgf0aXjvm3xf24B5fcslFwa8Wc3hV3D
	 +T+z6292kldtWd97oFdVbZ0G9xpWyANNKpAnWJKgoJbYm46gS5c3l+IbFOPinHRDjr
	 XkhItbSMkEtpWPxdlK3i8RCQMaT0K5XPJx1rwzMwHSuGkb3+q3RzWLBdtDzJ1PwCaW
	 6Ld517+IxmyWf9ws2tB0Tsc/lehiio+xlHDpuz7ZEJVeOxPNxS6qQD1uirWpaodCC8
	 0XZil7lyMIKrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F3C0219E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634855362.1199.11983594779654975676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf4d982f04baa8a421da72941a5facf2125ba76f366fbd709077124eea3410e
Date: Sat, 14 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726348553
