Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEF370824
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732241154; cv=none; b=KQ8njLd2BiuI0lYuQb0jXZ85iTouKxEo/qCfx2c7hAA6bTRMqJDYPFQNRzfiMQ2SX2yaw+YRBvn4VAZAShu3ojOXsm9k4xe+2Khko/l2OC2j6e8DnnJLEbPZaKe7l5xUPAmi4Ln4c10MKMIgWcYSfn/aYWAnq9PDHUgxzZ2HTco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732241154; c=relaxed/simple;
	bh=leVb+FcmS716Yid3tTHe/30+35uvEjKWkzS6JoIMFSU=;
	h=To:Subject:From:Message-Id:Date; b=iog6byyFfyHG2RF1HWtbpkWXrdA4HEutUWJYIBA+SrBYXxpxYbls9lEcEuSece9MrxMteo0/wArTWKFk9U9cOVOuqFn823dXPfpz8uhUBxm10chqKFJkrei+v2gwaYhfvE8cLYgOCW5PigyV79w1Hm4nFPkPyes41V4UNBvXBTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp5HddRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp5HddRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510DC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732241153;
	bh=leVb+FcmS716Yid3tTHe/30+35uvEjKWkzS6JoIMFSU=;
	h=To:Subject:From:Date:From;
	b=sp5HddRffKhTz8x8hRXoUlvOspa/bn/nFkuwOZsqHEeC1dMSFDN7Ub2P8R0TZO1iZ
	 pKIVIi71NnGE3oWZanVNLTT+KOKc17iCdKknM2Vieg8kgsOVJyuuEtFEI8492USBVH
	 K4H/CeCiSKreUSXSL9EqHRgdQjzdszFavWVR/ntMiWMEVzwDwzvXyD1RoDl/jedX+g
	 NwBh9SFOgxIvtN1uPvIlBZXhn14nYh5KnE314138XQn18/r5TjQzIg7mV2k8A1JJ3o
	 PAH5ExubNqazUNZMjCj4ze+ibL0R/dfveHL29bsZwaOFHOjudhrNuauAp7rM7cA6ox
	 ciGhq8GDqd5lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B5E65D14
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224115359.10360.2934895558488887598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab948bb5d754df0ea9cc49e7656196052faff8d6fa712c8b904097769c8442c
Date: Fri, 22 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732241153
