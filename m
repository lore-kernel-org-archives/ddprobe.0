Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0B581AC8
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741742934; cv=none; b=Cx1g2HulW/k+IrCLBh83F4DbZXivcIMN91FHr5MFIY4QCJw9mgp3dkgEr2gIjA1ZhMleVDo5dqddQLTPUmHnX86SsgordvvdamWAMtvbEcrrOKp/5eXGx3xYJMsveeXrt+m3EaSh4UOiTH2ntNTaua5y5RQO+EJbtVN6oOB4+v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741742934; c=relaxed/simple;
	bh=TrANEg62ooksj1tsxmgtWP3BPJOcOb+j4M9Gre3eP7k=;
	h=To:Subject:From:Message-Id:Date; b=F7tABnHDD5RFAwxMkqg4fvP2lvChKClN0A4LTXD2xPYuQmWXhoJ/MFOfNPIlQQL7WTCsNosH+sa/USfrRb5lMDYsHY6mvRllm693DMrtm0xAu6s8PJ+5EVNc+a+MMffk/l1PrFbozapRc0Y230VAl36jJ3AhAwS+eGpgKCEMMlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3oarjWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3oarjWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4890C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741742933;
	bh=TrANEg62ooksj1tsxmgtWP3BPJOcOb+j4M9Gre3eP7k=;
	h=To:Subject:From:Date:From;
	b=s3oarjWYl5EjRPcry0F5ocIpl8mSQdJ4eIU5tNoeS96HsvhCyEgoRgAggYardc/7A
	 ZbO7tdyWreELBj3PiXOFpssY+VnhAa7vD+7ZqO3MFvBhCbXuGMs46qw7ffaU9e6SAr
	 8Si2uBIfJTe27WL6Nn5X84zWTz4LOi1OHbdvnE1VwrhbbkGNJtFPvZlSKg1iu15ST+
	 Jw6Fu5re5bkNxQ+Wh1pwOd/UGNHK4YOMNA/bxmv0c3cRRuuQA7vSP/E8YPm7P4O9g9
	 nnfxI35e5OOBr5dg0YO2UeXO3WfcLqi2+dD1WPZFk21FUcThfieEhOvLvts9tyb9q0
	 jMhnVr8TieCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6CC282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174293358.24924.6014172163456661163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6efabec6dcd94881ddc9fd06c0637c126842228d82e4e3a9125a2f0da03688
Date: Wed, 12 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741742933
