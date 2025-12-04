Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280922512E6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874974; cv=none; b=uwKhH9y4HgOiMBOheRr/0M+IB8CBEFyHv01ltc6/wQXSZWLGdJwqnj+GPPcTkEx93oSxz5eHv/ox/VBwwR0UJqvDQwea47F8sASrKWRsepaB3OzYsISx3sDmPLB5PrzDXRQMo/tYsQia9NimfKzYRT3elp+enOH9k/Z2EzLXeoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874974; c=relaxed/simple;
	bh=alYFJT9P68kCKT2GcGorav72DSqQN7XJ4Acu+ZdzK9w=;
	h=To:Subject:From:Message-Id:Date; b=kvJypiqF6JsGI5dDTBwPmrqs3RE13jzkmKij0pkPWUWwXYvc8ey1ziD/YEhpfBUNAZVRpSXXC1eFre/OX7G+YsLwU4TtnxsM0AdsUc1cIL0K54WTedRFX6ygkn2vmmFvHY7np7Mb/dzM6mu21hWoczew0aE+lLwZgJgo5hMa7BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo7TolaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zo7TolaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BDBC116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764874973;
	bh=alYFJT9P68kCKT2GcGorav72DSqQN7XJ4Acu+ZdzK9w=;
	h=To:Subject:From:Date:From;
	b=Zo7TolaBNLramJlpYHW+H5BSQxWqC7ON2i28wrez+Z96ecKDW4wDbGLkV045UPnK8
	 SUgNRfGD4FJH9GktcvrRLXPdel1yY2N0GuLmlqQ8emq3kFH6nsUHTsg4IhuxQJ/Ea+
	 /6QnBBjhhxfOqFCrfi9rgeZgWBmSBof4RqUk1gzfBkE5BjLSmEvaUMBbbGpRpPkX4X
	 7h3jN6UJZSr9GEA6mFqDJXFgCXRcqAzJxAOUggzl1/TLDs61yDwRrfDvXio0J8h3JK
	 OcYhjVmigCqsoP+Ep5Flb1w/v16IT8w+hNVUwYHCknrS92AjDboa7PFFP3DR6+LJZD
	 5utSxWDyjO5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BAED29FB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487497359.22493.16840592247848481842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c400f0b86af82edeb88b5a49eb18980abbef62a30d14f8c1b2d04f33767acbb9
Date: Thu, 04 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764874973
