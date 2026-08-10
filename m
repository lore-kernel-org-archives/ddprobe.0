Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C171C84A0
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786328434; cv=none; b=S1oPUKaI/YuF9QFi+Oy+VrPdIwKnI4rPldoU8Jgj9bAk8Eb4tp+TK7NERVMwoe5mFSzP9SwYnIQev4ReHQlootOLZZtaY4Av1MrHveFYbWQ6BvIP3fZ4uVteQxr9dMITACd57UDhiZECyI72b6j6Iq6cFWbJ99jrLqorOI//494=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786328434; c=relaxed/simple;
	bh=+GafwSMEjy/8x3Tv/wu8G0RsuRS439HlROTj6wIA4zc=;
	h=To:Subject:From:Message-Id:Date; b=Ude4LK6OAE4r53Ne8nlUCYbfhOa0x9dSUb+mpYPXK88wRpmI2k5/ZuSJe5B1ACp08fJKAxKO5vNh64+vBgEcQOzmDlWgseHXbCMYgXWhlVIXNJ+izRHZN1QRgO+D7K837edDkl3dK5V2L7j5IAOYKYp5vYKO//IJ8+QSNVurkAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv+Iv+Ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv+Iv+Ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91FEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786328433;
	bh=+GafwSMEjy/8x3Tv/wu8G0RsuRS439HlROTj6wIA4zc=;
	h=To:Subject:From:Date:From;
	b=Qv+Iv+QlPab984zyd8pufXd/fpLbWKKqineEQhhNGbPUUjIuTad4HcxM+/O2w7Tfz
	 GyL7qAvHy841qAj6Fu7vBEYoQVD8LZPyLQYwt1MbHQ/40Fx8SHiBZ7lAuRqFON/BHa
	 Nc+yOfNI2GEPIJkVt2s3ffsWwrskzmyvTvU73pxpX3benPmig1SwWAj6O42T2nMQEa
	 NGzivwPNcA/MWy9v+1JAxYdsCe4PqLOX592xqfUlKg/5WDj77db5f/G4wii2z+/ZV7
	 ckIHli42FpaF3eTZB2GuQFQEKv9bnZ3G12VAjYSKljAYyfEQhcvJPjphr3VfqbOzqI
	 IcJ+FwR0yH05g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C7C5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632843368.16079.13787454737189012343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b4157eb23d47517e9aceda4aeb56ecdb4219bba8b5bcc107fa8fffab5d6a0d
Date: Mon, 10 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786328433
