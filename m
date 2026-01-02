Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C54F1F03DE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767318234; cv=none; b=BjQbgponExJMSk3iLlVS80eQWxoIb21Sjo+o0V0x5Ey+yJIaj0u0RcOWoWhgqvWgfAhU9vu9bmHgK9BEUeaqcHiIb7Lmo31wm2/C1Db1UMXW7Gh73cF11WnMOihm66GZXtlGwOchdKwovegDuUbfKW7fLvINz2UeH0dGO5n/TdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767318234; c=relaxed/simple;
	bh=VdF3jA+CB0pBoOw8Xu5dkJ0Ix+f9c6Q7t/cCpkaCvs0=;
	h=To:Subject:From:Message-Id:Date; b=aCJnhmiiCHNLt0vxjo6twvEID1YigozR3+0GfFcr89aqeD/cQRU3Bfmwbik98+TIZckQlPCRDLl/d8zZW3iKLtWep43jbYWueMLjudcy/wjTBA6s8UK3gxb8m5tJAt7jX/RWLIu3MGSlOz0i/FiBgoIEZURT3R3aHsX5VbSHtJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD3I6tn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD3I6tn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B84C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767318233;
	bh=VdF3jA+CB0pBoOw8Xu5dkJ0Ix+f9c6Q7t/cCpkaCvs0=;
	h=To:Subject:From:Date:From;
	b=tD3I6tn2YZOhukqeOUthze7IcBil/IVmEWrtAYbjEXXFo3EWdt66b6ZT9OgWY76Ka
	 lkPvTsF00B+nZJD+XIl2kAKUuyvEAMuAJK11qKYJNDYVBzP7ToI41bWYejQDyol38E
	 yn8jM3if42iTPM+7wMy1AjQ9muPQgq1v7rg+L5tV2QQbJSuTAqPIdwbZGqSJNBHDqn
	 61SVN2HcIyG4A7k2mCphz8pny5d5miJzQYYCRHGWF7GSHlVIqfcsn7fvCqTrkOLjxb
	 c+wPziEBslAxQ49YxNG+utCIrRIkfrfoQ9h347lupDcn/6deG7nzVcrRcTqHdKksjb
	 o1hllCeP1Irqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F4EEB57B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731823357.2900.3504589259975617465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca860e6e2538d24de3335eec50de4cc697ce83270cd1c8ef11bf67dc136968c
Date: Fri, 02 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767318233
