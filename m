Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E431755A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716736463; cv=none; b=E13b6DRfJW0Us+TcUMRRnVzQgHAAH1smx+ZgJ/lCLPyjqze/nEJx2V1zHpXwDxaG2PfjfQrDEKQVx1hzcX/RngvhgpKKBscaHtHfjm2QZp0dxksDaBTBMui/WYb8O257gIFxRBFp+qlzahJdmyYzUJYu/qjPsRthr0wPX7zoP5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716736463; c=relaxed/simple;
	bh=WT28GlDXKboHD7UgLf1wn0sbQZ6vBgloMZ2iJh+7Ybo=;
	h=To:Subject:From:Message-Id:Date; b=O2NyxAoKRieBeO1VpK4M7A9IgCSIFAH0d+wS0DXtoBZmAnKCbQWUYTVsKt4hXuoAx2Aff1s/Yc1ShMTNvdT4uztA7V4O+aeNALGUHmxLnQ0FWcUdRVtdUBUKWPqn5Qppjhc0KcV5cbpowAhmek3LI0/MHkD8uleezrkkf0gUnSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQ50w62a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQ50w62a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E095CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716736462;
	bh=WT28GlDXKboHD7UgLf1wn0sbQZ6vBgloMZ2iJh+7Ybo=;
	h=To:Subject:From:Date:From;
	b=lQ50w62a09BoociUxZ+nChhQiFp849+pCvgIllBjW8ahilUkr4Jx5bjZyG4iFX66B
	 857y5/l6JS5F7kQc0sVEWxuqVSbghFsSx9+VHmn7lhHE51wdY96pTRy/A8Oq2tIKPZ
	 0FqAgdZbDz7GOCM5mf8VkfI06g+DtBFOpiVZI5VyrwvdiBcoLys384FvWuR0/fC0aG
	 5EEwUIpjLsv3siXKuH8HAxToOkHnEuVosQg2/Bch19qgMQy06mw7xisLlE2NdnvSbh
	 6S+msWAlVZ9LAN8YfnOnZ9J3G9CHNAXm7nS6Hsv8+Q6xc7/prDRw1WREMeT1T2LI3d
	 s4ef0R3V5iqdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA08AC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673646279.31155.6538152870709326820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3597cf15e8e1bdd4275a000bd2a53784cadb97e114161e70fbbe8a64848712e
Date: Sun, 26 May 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716736462
