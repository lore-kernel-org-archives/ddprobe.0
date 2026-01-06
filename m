Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF8330B2C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767661434; cv=none; b=CwEi+KymggynAwfBFQHwDmsDmbLZPN7giyyCiLV7HSkwtLehVqrSc0xbRyz0SiR0TZ+V40pycHua8cs5UmJi+GG5PMgvjVDRueMB/vapJblSfbpyEw00yep10ftZvzZjF2dWqpyz3Gs6nKCWi1vQMRjsAzf0Dv9FIdxM3B/IQZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767661434; c=relaxed/simple;
	bh=1V5HMTp58t2+sbX/8EIgsetvJNB4tLsMbmORFLZQkDE=;
	h=To:Subject:From:Message-Id:Date; b=QtGDTKVMRxH4/2GwE/l6ZXyempDEBIuxB3t0Y5xdGwWA2Amv3hGcpohanmmOP5VORv25VdA6fiGfwqPsaKxfVLiOdh8FYXJytpl/rxb2DWQdsfDL4FDdpBgeneMl9UeD48+w055G1lMEPNhxDlTFBCbHD+8FwN4LXE4F7nBZctg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHg24aeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHg24aeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A4C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767661433;
	bh=1V5HMTp58t2+sbX/8EIgsetvJNB4tLsMbmORFLZQkDE=;
	h=To:Subject:From:Date:From;
	b=PHg24aeELrKiPgTrNpFpEHk/IfulXP0IiVlzd/PsI9vJI7Ip8U3RMIE6buB5LjkY6
	 hs4BO3y5xmNSmYOTntRa94QRhA3wiDoMnsGSX1UTOtEWSRrMlNPvw9fA0/GvbKgEGA
	 ZNOt3bSzH9DElTcguKNg1JLBUgy50Ks2CqaX7xrL9Fq1X6Qmbz6CGa/ARqekf1ONja
	 HxGqamMxIf/CgDBboNmcvhotK7PsFncq0NTCha2JvSgtEBm+jajNOfSVyKaD74FCwm
	 I2To2sqP6BN7WsKhCdU0lEix/DeHyqz6E5UM2yOh1/DEXJXtiB2heMtH5Fh7QLIx8B
	 gUT0uQlXTNgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DACD0427
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766143358.18335.2549694940590678307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e747f0106d93c927885fd0b237a31b4406e153b313f8245537950f4d7fb124
Date: Tue, 06 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767661433
