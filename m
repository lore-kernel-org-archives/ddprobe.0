Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D710F255250
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747045793; cv=none; b=FKtGzobm76gqryPyXd5Va9TehC0DgMJhapvD+i9jrbor9+dAfrHcRf4nZZoN242ayZalmgJjfV2Vd9hZg0C1nkrD21cQTr3BdFNSCMPLWwRD5GFeJis9l6wY0iX+oOhloQ5pkbSptLZSsM0/piNl6UL3s70CG2KgWTw3DM+VKmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747045793; c=relaxed/simple;
	bh=sMM1gWuy4uopZDdetXBAfmkLj8ut+aSE1G/kRypQxbY=;
	h=To:Subject:From:Message-Id:Date; b=lLekR/13INf/CqZcUIfMScZ6FblOFkLW1k5HNJXEp+2i/EIZ2ZdNtsh+PuhOHxFfLxpvWzQMrseWXvULIAXM41dyP5E/HIjhYoS7jNwA9YvAqJ2XuutQkI0/t6qY3UJXCStWOFO3FQNMsCnd2aScvLh142klyc4nr580AaH8XaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgfIJav0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgfIJav0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED5DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747045793;
	bh=sMM1gWuy4uopZDdetXBAfmkLj8ut+aSE1G/kRypQxbY=;
	h=To:Subject:From:Date:From;
	b=tgfIJav0d3dUXdKq6wZ9xlThBGO4+uAe1qjNEnC9p45c7d4fj3b5/hkKtdeBkrztP
	 lSkuE87FgrlXUW1r+Y8cmyrwD+pvP1+iivVhhUwM2stX9g8yhUH4bQBxw87j5bnDM4
	 U6P/VjjVV6jA3V+s2B0JTQxhSoyHmj9l7aslAo4ny85mmcUw6Hfe6P1eMBz/pVedbT
	 Lb1a0KBOCeDc2G856JgxKO940xdDGY6j+vyNWeExjczApBEw7XtEiHbXrPJ5JC0eMN
	 1vzp+7RMUMO8kCHs/UZXDYuzOx6fxd3W0Z3UBHGcvwIP9VBkbvq+UoQWLjaGaGfnAB
	 c2eSraef4YZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1AC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704579358.3276.963844342338128817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e76d5fa252953220918eb9adf00434abb50c0ab213d765013c35cdc0feddc15
Date: Mon, 12 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747045793
