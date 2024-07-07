Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D27823A8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720325183; cv=none; b=RtPSidEcwCJ3Kge9M5u7LaWdRtOvWsF0ouuRWhd3tNPRfhO/dI7v0SUM7/6eWWzgdrEnS2TowcKrsQv6Bnqa7tPL51qt0D50Lfhnw8pVRidAYYTnxa1TXigoRnoGRmEOuXPUHJaGOO9RvDJ4zza0s56x+QgbWLXodxReCO7KM6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720325183; c=relaxed/simple;
	bh=fgW0xGQHqoKsJTgxemIM6GR/w9AXA0K7f2mhpBUjIhM=;
	h=To:Subject:From:Message-Id:Date; b=XK4t8jhAUP8CJb7INI6pVA8t2hV0x2+WtvI4zclK3JJnP0T2ozxRRSdp2wlmAUd7x2uzvX54nWMoKtTu9MycZk/NOd1TiSdRw0vGqPBb7Z3zszWS3UHMwHxD9ZmwhthUKo2tVCyLoPxzD8w59WHLtvRAiGELyBx4h2pg7OFQKvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCYxuvfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCYxuvfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E090EC4AF07
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720325182;
	bh=fgW0xGQHqoKsJTgxemIM6GR/w9AXA0K7f2mhpBUjIhM=;
	h=To:Subject:From:Date:From;
	b=OCYxuvfyXcAVvmzjfn0LYs3BsUTebce+3s0JR92BZQb3rs07nCJcZjVNJG4MHvXdq
	 cC+VdLmpF9AxLbudgcKGhv4xOG2BLWWjXUEwhU2XS/MYA4pOgcWc+f09ia2nmgUxPX
	 8HWvTxtEjk5HPg8gODzaSm2O9cPVLx35E3Z04tsL4fKsyFM58ufVnDNJvgkQ0kA3Qm
	 xcICcTQ5nMcJepzgd+2SSxo4H8/ntKfBNWypTqKR9FXJyhwhgA+UZ5M4K3jjJ7YM/y
	 o2CqeIibwElSKJ3FeXmqC/IsK4cT2dvyXEwcIdI8REpkEkaVAlaLuzoJa+K8+UHINg
	 kY78Aw9Y04JKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD43C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032518279.12602.10841797804082682075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8ad44217c74adae02e16358eac68474b005d4428a3260356b21cd7c1827461
Date: Sun, 07 Jul 2024 04:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720325182
