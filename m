Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2FC47F58
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715541743; cv=none; b=JJiQit9H2vbjHeccTPb1xLgbY+k+EePf45GcL8XhBNVGlqM6yH+CAlaDAJ84miyw42egJezLNWZ8vPEqFqQ4m7i4OE36A1mSpvEbSRpbFQrGZpgBJNCgzAsgfeznJ8j9YryJjIlpiy/+AYjg2QILBnB+pMFI4TkXMd0+C7eNYMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715541743; c=relaxed/simple;
	bh=AFVWEkelPhKdWAjdv8zALk+lokqNjGmocEqxRO4LRJw=;
	h=To:Subject:From:Message-Id:Date; b=gWPGJMnZezbvVbPnMyRJ1/X5rKkrAthoXcVhFs4lPU+UfvxHp3+36rB3x/Eoro5ldjNxxnpXwWMBUIZHJ26Ane7yWNbSiR0paVvk2oUpurUNs5ibLN97vAXhMnGQZOOr3JBO2PJkVrhReE7v9vcBFO8OVR4keTy28mdlne5OXN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQ6/h7FF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQ6/h7FF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F24C32781
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715541742;
	bh=AFVWEkelPhKdWAjdv8zALk+lokqNjGmocEqxRO4LRJw=;
	h=To:Subject:From:Date:From;
	b=UQ6/h7FF1IFS5N6ZK7xS2QG+9YuWqPqYpiQeBmaJLa7DpzfXhLur8o0SUc/GApCRb
	 ZuT+xwm4kofQDZtGsxwZdeiPM9cYpRdN+LkoeTVdIi0VIbhvpK8B7jwZqEPXxZYuwH
	 gDD0dfLdavv4JjY8xPZMC2hcMmDtWA5lBryvQpdPEqDhvwxi115qUNFQvJzV7y2rSY
	 l93wMz9AENdC2ELXS7mbwaXB7OT2kGEVFyN0Xi+KCV9AE1Rbe6SBCc48ik6Tc7RVAk
	 o1VAKjYZKVySw6iGceh41IPA0IevWrcCfLV84ZS7S2N+ZJi1b4EkPHtPnSGq1+yUwB
	 XISZGvDfD4j7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3B3C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554174277.9356.17324086734700586186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5423e63fe25d3056e09a1623df699670a1b0de523fb5443cd1bdfd7abb32044
Date: Sun, 12 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715541742
