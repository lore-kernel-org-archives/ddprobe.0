Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303BE2BEFE9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754914194; cv=none; b=JsjX7tuIazRn3szNVDkuF+fbHJKUAevukmKv/iRH/6O1PSYxK3bi8RNrwG7juFx/Bo3QOvJrHVzPFEtrUrzbVH7O6Jyl6Zlngpasn50saJuipd8G28ALm1yFCFXgAA32Ek5arP3jc3flMjo4K5vru6/Mu0kajK3WWcWUGmREOmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754914194; c=relaxed/simple;
	bh=jm1uPyMhNzA0SeJG5usBib3f4Xv1iPJkeuAkuxHJUJs=;
	h=To:Subject:From:Message-Id:Date; b=N7+xYkGiTRttRfAq6codrS2zFpFeWJzmENeZCXLKeUx5eBVNKJYDV6TYpgjF3oVprkp6AE0qFvuqqpL9swLoRTdsbMSKaMpDQBzOfxFtRpqLz0XFofpPVKm/S4A7e4UG5lqVcpqhk5Zsco3UITesv11WQAkuGT5GvbKNGHXTR/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3PmEEPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3PmEEPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D34C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754914193;
	bh=jm1uPyMhNzA0SeJG5usBib3f4Xv1iPJkeuAkuxHJUJs=;
	h=To:Subject:From:Date:From;
	b=o3PmEEPSQH4rqAxRBT8JflAHjWgWzYiY3ImducEFt3AHCuORTPBDxvW/DBrRSKyqX
	 rA+gyGKo/XP8lUI/bszq8ahutmfI5VYSzWt6PcwUvM5lVsL7IVvkp8rWkC2IUFZFC4
	 +1WhWd2QB28pj3Whoo1O7ItJDS+shdj9jHkqa8HX9IKKu9tPIq8zASx+ao1ccwiDKZ
	 nhtr7BoA4PWUMcBpocf3wCM84tybGDriiLCQ4/YSlqowZmTZgTQ0nvG5RX/u6KGeNv
	 VS/r5Fio8JzlqEC1tER+P9fZczhczuFyoOpF9y84BJrIUs5VQo6B2oNpZPdUGfu1BK
	 ZOTQrYw8Q5+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE20C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491419357.23140.7347229151462319315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1402e368e5811cb38dc2a181f0c70a7dbab95a9e9a8a64af4013b4b174202420
Date: Mon, 11 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754914193
