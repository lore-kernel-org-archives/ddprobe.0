Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C20D4F474C
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790961634; cv=none; b=HfG4diyUQ0BQtUoijhUUu/9hnTgvYVUbgkMCHhy52zDmytD0qKymNWTPcc/rvqrHjpbo/+m2OIPjbBliX0ttEhjFllJnrUmePd0Q0a/jN7ib/DivxoFbd6YLh0OPU5vjCyBeniz9d3ECp1z3bRRMPj8wDigjSc6k7Y79k4mi2P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790961634; c=relaxed/simple;
	bh=nrkgITIgbwZdJkbO0xKyi4VPMiSOK5Uuns0gtcMZPdU=;
	h=To:Subject:From:Message-Id:Date; b=cDPv2xYj+gez90nNzWPSPvYdMZK0JqeX/LjNz/A9bT44iWwhuJR6D9yGXB3ycWO6x1HiFKQNmHZ+sNBR4C7IZS4KRGVxOQQulQXG7ppwKjsILj3yi/Hc+M68ZibpqxjC2oRAlxMqCd6B89Ut7bP6gS/IWxM/7ZLiPQp8HKJf870=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUnSf60x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUnSf60x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC457C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790961633;
	bh=nrkgITIgbwZdJkbO0xKyi4VPMiSOK5Uuns0gtcMZPdU=;
	h=To:Subject:From:Date:From;
	b=FUnSf60x+vSHJNaRVjbVwQ9VJYqaoMX2wsSEdYOyAJH+19Ka4AZhTeigv4XpTzXmL
	 NmkqaPGKrokqRx43TbLlFpUm+1eO2yez8nfHcYgdg8rVlPiDqiNP2xVlB+ujTUFpGM
	 CA8JzqGLs+k5ifpQYUss+BBLI2Sdch+CSI/LI+77e9w6H7Qjo856enmqFPGnEivK4k
	 BgJCT4s3kjk/mlx7jFYvkL3jH4Tc3xrGcLNFAyVcqaVgo6P86bwgoCuArVuAjWC1j8
	 t8cQC9wTeCNVlQgjCCKT8k6m2t8W+6+uo+UTEQ6ubMTVRVxOkmuMfoK+XoQvO5RD2v
	 5MCbrv2p67XVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5BCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096163368.17080.4455693043635053921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b0d3614897f5aa0f894653e84245e890cf0f241459da2adac955dbb19a015a
Date: Fri, 02 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790961633
