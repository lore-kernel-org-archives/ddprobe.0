Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C67719F438
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741202934; cv=none; b=EKYFN++8UqFfMr6ZATmpMZNl8TtOBSqrKYP7pHFfJy3btTx16mcnrvxJ8I6pbKnd4mGCmpxOuxdzrvv4Q3AHPoZuZmIuJcPx6af7T40c7EEgn0X8/GembrAGvfs/YGJlXg2+jUD/E0z2Zk/fHSa6UD+L7IMDQQEnwaiaGVdL/q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741202934; c=relaxed/simple;
	bh=ui8+ikIswud3GE7FSB2BxTagzotbqVDF0XIOdgw+zTE=;
	h=To:Subject:From:Message-Id:Date; b=Nvv7ILQiDKazzPq+OcQbpFoAPvrkcUj4Jte0pYaQ1qXRSwAdpIQbDRHtjaqRL6NJk4pKtUMRP/MUV71vahrEdIsHW71vC16+R4euK3Y5EybnNHesg8pE8koMFvm7IZIuufaPQwoEG70ovlPOzAZgtSm9ypUDx5QtN0n/H8drQCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4k2foF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4k2foF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2876C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741202933;
	bh=ui8+ikIswud3GE7FSB2BxTagzotbqVDF0XIOdgw+zTE=;
	h=To:Subject:From:Date:From;
	b=s4k2foF5jvnJJJAvFVSuCNSMZaH/RwOakRafNMMS1kdn9hBqlDDE4IGbJ1kxHAcIC
	 AFHxlGkKRLxIWHo8HA1KhOFBcwJdtkKwNdRGapUd58B9tnPVIZ/EbywHYj94rgRlsM
	 kwuG/DXlcGOujh+Cgq/NqVrI1I2oe5zb81o/Q/xpDuZHGVm/FzRFlo7OanwdbdyA8A
	 9GbvsqAKbFBNkmrmBZUaxCo5mQTDx2PgZMCcGCMarH/MWVEXxQ+islOcTHDpScMDaM
	 ORYfYzj1ThBZcBdzRc6A6D/jSdK42s5wqLzaZibxM1pVjCwAUIGZkfju0qf2jic1FH
	 F+bO/YQYAtErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8C3C282DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120293362.9785.5832258638364517850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6737fed84653a1c0ea7ef50c16865b81a89672f18c6f0775c484d05f5486517
Date: Wed, 05 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741202933
