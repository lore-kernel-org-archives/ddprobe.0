Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0A5258EF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755523793; cv=none; b=oWKv5YQPkpGzomWtcBP16ritiRcFBTrkIWCdoTN/6BceMmMONEZdrc9zcdWLaEPzJ9fRollFGvGfYa1H18ZB4wVHw3G04FGYedUWELJ+rfAsvlnBJtlCLBkKPMUaVnZ2Bv07sL36T45At8zdYCZGLmTgXUg07WxgFPG/J04Tpks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755523793; c=relaxed/simple;
	bh=X2vXEy4dWfxCbjO0vKe3UcR0qhSV3XYyelpFg5NvEMM=;
	h=To:Subject:From:Message-Id:Date; b=NM7lMgNGi9K5JXUYrteF/1Ty30IYcIxvMzBTjcaOUHG5NTgyyjLXKI/FzDHvTRQqxLDWrwKd6AgyFvvk28aFhmhyHQTGIGEfyQo5p9gKHxlhv5p6HuRoMr0DUZHHVL7q5+JZtcvjicxrI5EoKvCXKUt2G6MOu9qKy2aUjObC1AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoVxBwFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoVxBwFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C890C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755523793;
	bh=X2vXEy4dWfxCbjO0vKe3UcR0qhSV3XYyelpFg5NvEMM=;
	h=To:Subject:From:Date:From;
	b=OoVxBwFW4yIzyP12ydL6Z240urtaKexbqMmFtsV+CCmLrcetOgZeMC7TqMMT/JLAF
	 FRuS0Fi/RkIQABo3K4EQVlma6Iq8w7ouRYuYJoZkTWKRFVYdmIYvMufj1mlPjBOXmk
	 YTqt6mc+gn6xyAOSs5en2uc2TNyc1yvpXUu2F4qLRkwuJVIMLjVxeTpShHFUJOhhHV
	 dqiYgBqQ1hbTIraZe5IJM6lzJdXng0o2Qj248IrTpFymMwhlOAyK8uCrMHq7sbEyxO
	 70FlC94lXfXmEQFsyhG/VA+UcXde8L7RxuGOyTBpuq9Ya8hSQoNoqdiYEvFI/eLnoq
	 y8TuxapgRr8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA66CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552379357.20505.7900265931909550975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbd3788f8026f67f8b774741fe6d89c2dc7582cdcef99e8db238449452c7837
Date: Mon, 18 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755523793
