Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1F71D45E8
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782858514; cv=none; b=GhV/YY+LLiV3ikzl89PS20ugDbrAzKsdIrhWO1HQuPV9GG96IYK0w0xjafd3WOGQqdaI3I3G8zCMixVQghzplVapsjZzigFolA/R3TLgfwFa/w/8nar2boOfZ/KpgB1we6VP2k3/vXg1D49/qTluY2cjeVTZriw9NOlX0T0Fmyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782858514; c=relaxed/simple;
	bh=Ww88SaMQW8soKTIO+wv+2RXeLVW3HESxEY7iM7oGcj4=;
	h=To:Subject:From:Message-Id:Date; b=I9frMFtpwyf1rwpwFbBLGkc29ZwHAtcBzR5X2OM0n6HEDVTBP53ZKjkosdU5PsnuqRUUk36hULI5U7td5Cw983Sg8+Wv9HeWRUyWC4QfxrPNVAx1Ihh/Y/po2S4Z3NRCI8fXEUWgn7/dFTEkkSTwVNIxyAmAYjMVkk2NPsiGYy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ3kqPlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ3kqPlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2202C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782858513;
	bh=Ww88SaMQW8soKTIO+wv+2RXeLVW3HESxEY7iM7oGcj4=;
	h=To:Subject:From:Date:From;
	b=KJ3kqPlRtAsdLkld+UeG69p87qWMRoSoiIOiGBz7UeEeseOsJn58wjipqjzB6cZog
	 JkmCMfPs6jy+r04EXCaS0R+Uhe+ISA6LOi3JrtKqoNXIwrHU6WO+Cx+uAvCmuHo/54
	 dSTtgCos5IOeNlaHSycNPhdZv4w6ZNHNjccx4BvRg7SWY/2coHEhosunTOLWGkZoAE
	 kk8vamEfyFGlc2LBkdLoHuF1LDG9tWAlECdrfODvmSOOHAHasZKEl71y52r2p0Xt45
	 YVLrjEAfr0qJHMKofto/hLTsghobDzmj3fRelILa8Vc1BKmhZJkejKegP9/HAZN4Mq
	 ge2J84t9FPvLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A969FC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285851368.14305.179829785272864291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5637f8cf034c0ab85514acb64ec9e4f9e6e741abe6ccd25fb4617965c6f2ad04
Date: Tue, 30 Jun 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782858513
