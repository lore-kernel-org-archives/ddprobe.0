Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D51A43F085
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785174634; cv=none; b=ENCt/LeLHByCrBQWzRvoWW0XcCgsBZbAIzJ0WAL3IVkR/8mm+oGH/Tls1X+yeiwr8y0eRd8nrb0PuvhX4aTqTaIGPzqBKOM45DSp3g7DfqZX4frHeNMvH4XyH1I0TM8OUFuPsR3icmSZHZub3dNgSzrk6OOi1ce8g7RjbaH8Ul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785174634; c=relaxed/simple;
	bh=XEMA2h4bCHHonDp5lDGH5Cd5a6/kZX/WbWyI9Lycotk=;
	h=To:Subject:From:Message-Id:Date; b=L6LUdl6j+k/IyMhZkfC/MZKmRcbsBKSCmfA/oB+P3sAsEYyj7nly3cRfC4pvQztoEZpCmraPQc3oZCrwAbSWldeXHw9TLXTwWauGNM/5o7IPAH+okAfZApPh6PFqJzMv1OuKiiNQawYgGXeDJpQRXrHQgR1T/80UWO3foBamTZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw/8UEEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw/8UEEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA251C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785174633;
	bh=XEMA2h4bCHHonDp5lDGH5Cd5a6/kZX/WbWyI9Lycotk=;
	h=To:Subject:From:Date:From;
	b=gw/8UEEmUp4v9QoVA0ZV9RG57OFKhoe0QEFW7oDZP5xbvqpCZZj5KXgnPrlAd7ajF
	 QsynQFcjC6EBotTpXyzRuB8E15AdZAvffmlsgcfqoxNVGjO7mh2dkk3Pj9fjp+vRlX
	 3mHZUgZ27aQC3sPM3GcpXKVh6CvwA5AcN6k+aAYK2qXbJPeyWfLgmsPPbvWv/F3BiV
	 fX6LpMGRpS6EL6jeLz/ypTJlGlBSRleNp2dtralakxNoqXyj1tHQ+8EpQTtGXpPebF
	 f6+hQiUb7bbfhNPNQiazz07LtvivKfvBffqDHhceBtHBzTUWpuA5g+SX96qSjEqOdv
	 ZKLhN3HfiBSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F2FC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517463368.14836.1478751121991209795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcd3338cfccbaf96a8b5b5fb25a6538e8997e534d8e5e178eaf2357bb179154
Date: Mon, 27 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785174633
