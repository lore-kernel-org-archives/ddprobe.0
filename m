Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1457D1805E
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756051794; cv=none; b=VF6svfqtDk+MqgUS2PNqFTayCYfWAN6npl/gRnCOs0389J0zLTbPQcAt4vjnIhi+4XHNTXgJUliThOIicR9sAtyljwSTvvdHENPC8b3NuBkVSu8c3pxRf+E3X818Nb6lCr++JzobFbsUcgPS/nzumA1yh5oLv/ZOND2fpYoObTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756051794; c=relaxed/simple;
	bh=JzRHD/P4eh8NOa7X1Yk8xNR9X0MsC/sZRnZz3fJFyLY=;
	h=To:Subject:From:Message-Id:Date; b=j+VwcOAXTH9ZStLTF4MajvxvBk2/AfAYKZvaZNebEL0YHuIwRIUAAcmBMmzlGxlx6zrxnGm2gNjtOx16DlNX2lSzMfIvTt79onzmv4nnFWCgycVdJx2xXzcyUm7wm0bNZkXnMslBTH/Y3MN/3fi/N+grzEkShRjmzIN5VkgUQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiylulV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiylulV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C1AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756051793;
	bh=JzRHD/P4eh8NOa7X1Yk8xNR9X0MsC/sZRnZz3fJFyLY=;
	h=To:Subject:From:Date:From;
	b=XiylulV3RTEkJ/FF6Wx19/0750UgiMgNhf56f9jdbRBMsvLawKUvrZzQcrx25MHqc
	 2PcNUgd0zFn3cWhK25dM96c5BezFHwv5QFL+YWovHrCf/30qvqWDXh/XAIChvQ+3jw
	 h9StcjcE4PsM3/H9DqBHi+g4RZJiDJMf8nLDQQDLBXR3sY4Xp7V5qEZUA1MurSqWIe
	 ZAnLnOmAb1ySHBMAacLAsNCVXizHv4FuFXufS6pA1N1fqLCG3Xe/Bm///AmOB0nc2D
	 Yx6CWJoBRkO/aC1vVbFJzsjs9Bjs5Lv9YQcBPmh2gv50bArmw1pwVAo0CsTuS8JE7o
	 iVN4OhrgL2pnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB8CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605179357.13279.10964679941622573457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b26cc47eb4029d0a6ceff7c1d10036eb09b9fe4fc095dcf5ba60f5fec326736
Date: Sun, 24 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756051793
