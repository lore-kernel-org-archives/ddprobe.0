Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B4F52F88
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751746794; cv=none; b=tNuEc6v9yLATUENAPuG+SPzegvBMJLP0keYFSdQ2Z2ffqF55Vr107T83K5TTghMSot7tDKgOUzNUr3X8IwiQOqAfc3FtYN3KoUQHkZgs+XqIsLtNEUXpnnlchLvK1W0HyjZzgoOxz78WjWMNlgGB41U8gNUFiGKJzM/kabk0XUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751746794; c=relaxed/simple;
	bh=WdIn15aXMCrIArjJBl2cr5lI55QGfLZm67LkMHn6+xY=;
	h=To:Subject:From:Message-Id:Date; b=eBmix8lubaCj7E/45B9uI/A3sfZGUy0k876iz4DRRC+rAiq1jNINezVkl7OeiDfWqqW2RkNNCpGSe9pkvg6oh9cwgMdBErU04D4zg/l7rhinv0FH+22/AH/HCyCHoms4F8TUJfYpdwGwFEyLsAJWHcCprcn3NVmGllWNHivQPVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMA8sAnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMA8sAnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E98C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751746793;
	bh=WdIn15aXMCrIArjJBl2cr5lI55QGfLZm67LkMHn6+xY=;
	h=To:Subject:From:Date:From;
	b=jMA8sAnHZoBlQWizSkT1CltwYGjGzf2Au9dRHLJFG4UtYb3zhHChoSqthVXQD6pjE
	 iiVscMZKNnAl6lUkc25J9gJ4ONXnN/7caqE+jfVIhkU76EnXwTpDNOddSulfdbXVnP
	 GNq4PVkRSwPmV5nqZtmzRcE4tGkZqU7ioKC5sUiI8gUEWztLYwNikTYeNKptVR6OHS
	 v60vcM8ea8Pu6aquykeKNAl9e6ZTXfxSGf9yTngCLq0tgXoSRjZS9/nRN0SbG0AZm2
	 o8HIz01cIaVgFMLuvUKHRNB8ACQyfKBpHA3T34v+TXHFurBs3vv3A3rNct/IUwu/ql
	 e3UVBTACssLLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91983C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174679357.14010.1591883254815137101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7227a4ea423009ed1b30c3c15c4379616ed4833d5e586df0cc0c656a644040c
Date: Sat, 05 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751746793
