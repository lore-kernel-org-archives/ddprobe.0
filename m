Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01217258EC1
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771958094; cv=none; b=HwECjqiTPhJRI3BNLtsmoASzvnl96Iw2J2Xow9Hq3OL/AoGgJInX5Z6BsJ6iclxqVkXc2srq2R8ROD0pfNEhyQsj7Mb5Npo51K4HxEdwi9Dgeu/s5fu7F101Le/h7dJIpy5eH/qBjXzj9HUJy11XJUqkg3Cm/O8/u8xtfa5g7HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771958094; c=relaxed/simple;
	bh=lPPzJ4+FUE7vsgUCJF1hJdE/MVOqMgCYFq4T7p15ZK4=;
	h=To:Subject:From:Message-Id:Date; b=sVZ/S+cBOUQ4mWAu4UY7spfnOYWMfhJGrQz2KHlt7QJ/R8Q1qHkGCtyNPEHiN29VKqwbcJghHwtZy5hHuEiPMhcbUGAdRaKNqkoe4xWXXmmJ9xk1Qbl5b9vEsaUvUSADOU5/Z1eZQdYnGaAeGQYbpsPZ3Od4CW6eDjoHi6BFPFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af9CGF2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af9CGF2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B58C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771958093;
	bh=lPPzJ4+FUE7vsgUCJF1hJdE/MVOqMgCYFq4T7p15ZK4=;
	h=To:Subject:From:Date:From;
	b=af9CGF2v8Io7XO2KHyVCMzcv1nMOxkTgtdI/GbtxVNZaDWxUbSRAV2aQrK5jAjmPe
	 Zf0/OVHZuy80TyiWRAwGmLyHPyVxmhpQ81ZQ8p8qeQL9XWO51qp+EngtdMcNi5OEaZ
	 9fy1w/6wtjLhvoGInqOPSPjirdlCWIsg6UCjfjWKCW1SW4YDbU2RDx5bsYMhNNW1py
	 mSdl8drKPCRSbnjyi9m5R8oxvl6SlkEi247WYReVIDwwX8E1k/WSljTDKj+QafjAtb
	 7HMZW0vkNnZtdCKSjSPVckit220qYD35eM923dxOqjziqbCU62eWN+lbPRTiBmQCuZ
	 PwAJFGDr9vbug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91626F4BB6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195809358.17609.4273225054635831303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa941e1b921f3fa89c3c82b99ed624abfad6a8e5197e86615f5d616e0a27505
Date: Tue, 24 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771958093
