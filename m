Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073B019EED3
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760888994; cv=none; b=MWn/j7y8MjJRXt13WX7+EBe7/Tfh5ocOst/jT3avRp42UyXSzUhLgIpbPVdpmdAokiuW5ESPpsiGi5QaZgWfXEzeaRxDGTvs5gq8vl6wVHBhhwcAQlsiSuzgGBQRKkbLBRxe7oj6/oITfbyV3OoV6EfdBOIkNi0FfX7Nw1mBLjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760888994; c=relaxed/simple;
	bh=7MHFpQcZTachzV9iafeRBoLfwHMH71dk9B0eZo0uOUQ=;
	h=To:Subject:From:Message-Id:Date; b=BOMcwHueHvar9HWoNQLfs6wQVrTOwzsSxWVmSaBuvT5yu9uxYbUOchQ1h/DOgOr+yBph4Vy9TDsxSLNjBPQmnjBOE+w9dvbXDINWLppHi4HTq2TjX3ORlC1n0KpkbBMmxp5gS235MBWHR5/BtZjEfl+K1nhNToV9woPAmmLqXOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpyH7OXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpyH7OXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760888993;
	bh=7MHFpQcZTachzV9iafeRBoLfwHMH71dk9B0eZo0uOUQ=;
	h=To:Subject:From:Date:From;
	b=PpyH7OXQubphbZvuWB86TxVuSi6cIxKxeEqzLBkbtvH5hXY134kvQ377lkhV5StVD
	 paLN2yC/Sf4QxTLwOo6jfQnQSSKqdRgJtH0zGBsGhGpKgR+YboMDrngvV2En7WPfkz
	 ut26mQ/UiptqAnT3BI72oksmR0yIjVpmQCO9/Hq7XeyDWsjeIsoelOD7A/NRhcuuVl
	 g9U6FAmqEKuOyLYxx5so2FWwtD+V5SUNqWkC67mm88wGZqEqpwVnxkasU7GkNmEBKJ
	 0P8DoJvppBvvJeo1JNbtBzvVfrRiGnKKn+MErsxWSasJ42ZEBG6RHYeSovqe9oNUUT
	 GQgRDFxqaENqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED02CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088899357.10213.6455549958133707090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4797dab2621e1c97e8fa9ce864f1b1fdbbac81223bbda7e4d9960eb423add5ec
Date: Sun, 19 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760888993
