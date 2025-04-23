Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDBAA95E
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745385593; cv=none; b=VtKi2PlCEleRtRizObr/zE19JGFUhwFuVRIp/hdXvDO8nA48qskHup28pdstr8eu3qC2qMQBCinWJylZt/vMbXQf/+4uj7BjE54gpbagwa5OEo85VfB1LF9/9TLER/hXqxV5jNK08UCPxXNqrydin/gq1EwQqjbUSAg3NdG4oGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745385593; c=relaxed/simple;
	bh=Na3lWoskewD1KUY1XW2N0nep4XGI2YIShfcWQJFSDjY=;
	h=To:Subject:From:Message-Id:Date; b=g1QGh7xSgz4XLdRmLtbrAeBWiw7KE6vzpezW1raVCEhBUpHGW8Z7oxS8xG1QqrSU1uP/udptV6iGz0Ek7DiFDJbpc5uUFg4UGlHqb6KPn/EigqIfYYlCP/jhTB/Hf5kCPZEds5PTJOw5aXL4l3P/QmHxxgG5ES/QxW3nCUh2J2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKl57FQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKl57FQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34CDC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745385593;
	bh=Na3lWoskewD1KUY1XW2N0nep4XGI2YIShfcWQJFSDjY=;
	h=To:Subject:From:Date:From;
	b=oKl57FQgH4o48tW4T5FayhXDZuSOT/pcHM5exCm23+MG+49gCk3dfAHlfG1uubKZx
	 udezlUqtzoGyArRKuUXI+YegvDJbyQeco3jnyFzF6rT/66bILBO4QuT7d8ww/6kIp5
	 A9J1l3xxIIqI49mrBD7Pch7iX/N/QqOK0kYTp9+vBdvTPwBLfI1Pu7enmdwUD2kY4g
	 6nZAa3hB8jHSSrPt42tYdTLLzu6Mj1upQK3aEClAYV+88KjpayVOnBPdY5QLRBWTe9
	 6iTw//x3//EkeD1DHwAKKaY2LPB7M7mzvSls2ohg1taZDCO3Kp8mO0TTk7Yo+baqV8
	 gGg6t8yPRlHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A4C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538559357.2248.16579225321692150418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5554363450323211122b54c2c4240d80d0378764c8bd4acdae2c414206bc6f22
Date: Wed, 23 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745385593
