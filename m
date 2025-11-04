Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EA326F2AD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762270794; cv=none; b=Ms7F6iyr0skFLPWTE1mc3k13yqR1p/pr9NdybonTuIFpk2I83SSuthf+usT9oq+T0WXjE0GjHmuqMFfiE4Z4UXBGTtX2xKODCuoQoZnGoPhWcwYd8SbsFc+WTRplPc/hzVl8RfekCQEOG+PA+UQ+Jjo6UZdNU6+S6BdQar0RrzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762270794; c=relaxed/simple;
	bh=xW20nTDtkF9BaXtXbrIP4AR8zcNAWmUslfCSaGzoPLY=;
	h=To:Subject:From:Message-Id:Date; b=QvjF2mxR6hwDMR0mX8IwGbsQwzZP+YF8rbEelOvJtcAUztJZi7P972EbZVwa+lvjq5J0ATrbNRB7Bk91nOrjeRbdNgBRJ41womsvgZxFiTiRwo3kOP9D6sewx5G4onnE6r8Hr0/VWkS0a00FrpfVLNL9zt33h4D9rfZY/N9ER5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXd0qf58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXd0qf58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E766C116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762270793;
	bh=xW20nTDtkF9BaXtXbrIP4AR8zcNAWmUslfCSaGzoPLY=;
	h=To:Subject:From:Date:From;
	b=OXd0qf58rH/KOxiG0hTkZQfoPp8IhrBW0Lw069AeJ+1yLni2CL+gBv36LsNkagW7I
	 4PKBmbXEViiozheBsFKvCr7/Ke+zrDee9OAzIFlP7jOG2B6+gSMdDy625lWUgiS7+k
	 zZ2aP2vaOlPa+Hi0wLvmgSqGs/BdWzM3vN9HDccL9MCewGyJACsgzQmSaui/NUOabQ
	 vkpAIVW/7BtGGNKD9jnycPP/C7v15+auOhJs/kKhQTtFIXbBGxvUnaWEKoGZDxwQqX
	 2EfPmRupuhvYWa597EaUdgbaEZZkrp1rM5ibpU2BKeveK9vnKSaXlDGK0prMYOfu8H
	 0wxfHyOwEuyjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90721CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227079358.31070.651945080875852333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48addb67536e1b8982dd793da74c7f8993c53a2b2c82692ded12e42b1c1315a0
Date: Tue, 04 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762270793
