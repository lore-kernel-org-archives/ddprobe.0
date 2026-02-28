Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249BC1D5151
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772318694; cv=none; b=fIotx5BMFYDMV7eYLOrx99FF5HD92X3VIYQ4Fq0vlTO7bctuGHsjfvkG5NotVbCeDlA7xoTCE0Qt6QHOScFY1UY81vZrja+ZhTXECMPefjVNaC44iCrpILF9rS66I4SuUbXyFfz0Vv2HEQQqQbPj4uboa7qyR/z+LfaXCGv9eD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772318694; c=relaxed/simple;
	bh=GI0AGHcAv0xzfeNmetpHbAgoEOvcbtapNfT+kt6+5h4=;
	h=To:Subject:From:Message-Id:Date; b=lQ27DTkao2NKi/eHBrc9W56fy94n8kRY0Xd1O9WfSnhAeF7Lrq1AB/Ge/XtVJc5w7MxFjh2dkbQhYrOVsJ0c1aZBH0WfPf33ZdSyyXRv551nlZO5i0EUdWwmkOWur//UDkgCf678gbCJFk1kOcDX5rJ6e+MeaktdaZ7jK8iBoxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGuGUiKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGuGUiKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22DFC19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772318693;
	bh=GI0AGHcAv0xzfeNmetpHbAgoEOvcbtapNfT+kt6+5h4=;
	h=To:Subject:From:Date:From;
	b=AGuGUiKAaJ6bcILbWcRAtoSYgEeS3hffM4cioybm7mHbhnDgdxuxGoIRba1OHobgk
	 iz6wQTQ655rNtE/W8BxiX9psZ4VQmA+q60wC/Nginh8LqkWp8uqA/x7d4DpEOdvlk7
	 Oeow5+pg27cLQOiHE+ie52uAlGF042SWnlr4erJILT11GDEZ5/lVCwCJeOMf660Dpe
	 T+XW3ItK7kM6khdrkD1RqpJLZLx+Byx/Tmz77KJeqCJd5Me8kCeEQmmvCpzoCEU9xJ
	 ikecrBBFkGJa8bCurqqeA0dGJQH23ZXRJlymbS7jhJX33CmDZ1ehKFYRyrcmfFtxgO
	 0ZANAgbWXlGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F9DFD0046
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231869361.14441.6106347159319265924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cdbaa39c08653bb2a8d6e7eb465a8553ca17c504cbb932eb15a6b2dc4d5229
Date: Sat, 28 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772318693
