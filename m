Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CE0332EBD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771650294; cv=none; b=SYuQZD2NRaQDJQjKDZpVKSY6k2HNU15RuhXH/al7ElT7GTmxDGORBdHlAtgaILnFtx7jvL4ozICVtGbIATOIx6IaU4yB8H+VQgwuXrIvCIZdTNCPUJsjtLCxA1oy5czvmaQURYbNY83OhBWXC11FTjPbYwqGFsrq8TgM91osRK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771650294; c=relaxed/simple;
	bh=C48H7Bl8jXb/Uh5lMQRrdOTfllhSRRGNr57O4ZKXUSs=;
	h=To:Subject:From:Message-Id:Date; b=ugaqyqEUhRsjn5CR1hNjVGn39Ya1HXDSJxwti9EPi1FaKY/fHNLYzvE/Sqg/Ku4sZan5M3goZXn31UPxsngvdsltjzr9h2rWF4Rrr0oXvsdyRvKPzdSlrcjaJFUrRKjZYzmRJ2Dzuk4YVpOu0p0izkh3rfTmVSS3ZC57QqnyBJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnRP7IbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnRP7IbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A986EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771650293;
	bh=C48H7Bl8jXb/Uh5lMQRrdOTfllhSRRGNr57O4ZKXUSs=;
	h=To:Subject:From:Date:From;
	b=fnRP7IbXNFmVEttu2e3d0/IDTlKKckjugpVCGytqPF0n66RpdpA8kMf+ymwdjjz0/
	 DawNX+qvbaeZzzL07c6ksFu4tUra/pbVjNZlzN/Evso3YoGCLyZseQvoLlvuRuJ2eU
	 snFYroJy6sZLJodADzHfZsg+ZMU3YazXoX4+PZyg4ksh8QSefmSK+2CY5pjfUKRAVV
	 Vpk89lvQx8aLKU/9xfHUw9CSQuklb4oFPsRPAhDtCM/WfuYOieQsSxrGgd6l+JXjiZ
	 cZQ23/inS2HqotZcnDeB9I8y6nx8D7fpDzds9oq0zjAppHG3+SNcth9IeXUGmdvu26
	 qNmdeGsJO049Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F83C5DF8B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165029358.4458.8627988867173323438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2ceeb94b0583b8ec4f7b8bc692d856c5ac62f59367bfc4673bb101af588a25
Date: Sat, 21 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771650293
