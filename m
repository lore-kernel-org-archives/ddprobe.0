Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA520E021
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748593194; cv=none; b=ntcZvWtsagArvwbEsPCWyCStEchxU69vRZZknSqnvDjDZ/9sYA5lUVUS5glrGh8l8PjsR0tkiGG6hYgne/IuYR1/wZMx95ZLwrR5ZsrMCMUFxhDDrDMuwX7KYm+aF/FyISmDX/2z9ZatNmlCanbR+Bi8OsZ7rtSKDgkSiMuaoYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748593194; c=relaxed/simple;
	bh=ZvA8NSazHV+8eXugGaZCLg1P2+3QRzweJWIlv3ACmhk=;
	h=To:Subject:From:Message-Id:Date; b=qlQ2ChEqpffD7nZYa9V401WBvlxdNIjte5mgS98M4Klu0MRDrHGNmZGenjD444HmPwvlUbMYeGY/eBf5eAvS5sgigI0oA9HK7zk8Tg23Ng9t6tLSw62jIyRD6CVtE+GyWV1lXUwvZrro5hBHeXsuvFtR3QajBZEMHX/Gapw2ptc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMgFBgVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMgFBgVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A2C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748593193;
	bh=ZvA8NSazHV+8eXugGaZCLg1P2+3QRzweJWIlv3ACmhk=;
	h=To:Subject:From:Date:From;
	b=RMgFBgVM66EdlrTVM36KcSdT49G+0WLHeuaoIYCXIPpSrvOThZhy17nUcawAJEviy
	 n19CjK6VTIhmQHY0UxShJ7qmx6SmJy+vr7PRmBm7Y7M1nrFXjP3KqqG0NJi66Fyw/D
	 FGF1sRLt6g0UIG6FLPSBPruib7ideqQSNvQ2+4Cl4Db2GQJDBSbfgYlYfE6sq0UKt3
	 gabOlmrTUqDyx2JQH4zNWju1bTEkO/vZY3Du9Gl/MwGbBqdLO/mXPQrCHUeEet3ERb
	 UUm9p5znhRoyvgRaPYBm+SVkVD1aAB9tdCJI3N6t37Rmt2M27OPUBYh0LvWgTqA1SD
	 EpTKxKX/++SiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57DC5B549
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859319357.12535.4769579120085979361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6405b6dc628e28e4578774d12ce1a96f5fe6efb7ecfa3e58ed9f3f76c84a0b13
Date: Fri, 30 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748593193
