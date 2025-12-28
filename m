Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D7A2110
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766884434; cv=none; b=q9tfcRoEShpf+ses42Z8oBdZnfUVC18ziJifowGR2damLvsVk7lf5zXDFgEnKawiqcprUFa5w9V8H6c0wVURzZ2bT5PazvMf7t7QXbOwXtlDiSQT0oYkZtH58pNw0r5HDD+17B/xALEer4geyngF3zEpzBoKwl/z8Db9KLqGpeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766884434; c=relaxed/simple;
	bh=NxHseBc0QXgJfS6WdfkfEuwyS2+yUAEVK1tC29BO6SU=;
	h=To:Subject:From:Message-Id:Date; b=CpROzNXVSROcB0hl4oBL0iFLv/2QiAkwWLZrdT4mRNQ3a0F8y5zRExlWZ+btmz3L8nPofuLgZ3/Mcw71gZea2wTREAX4dhlMKzmPbCwwNJdufw6zLFuutC7ow6rkIwqj9GdnhZUIBN5f6JvuOewkG93mPIO0Q1AFiH6MyhpGYEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1/JvHq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1/JvHq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAA8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766884433;
	bh=NxHseBc0QXgJfS6WdfkfEuwyS2+yUAEVK1tC29BO6SU=;
	h=To:Subject:From:Date:From;
	b=R1/JvHq67tWuWeFABaaV9bm9FZkkke7jrYbEkVOiQCyVI4e9QQafWA2ssOFiYzIK7
	 7CTzOnzw+q3TzRi1a90F55Gy7utVo2opSD1EtTmn0AVv5e7nOompspzlCQIi/mw9lG
	 +L3stqY7/jJHQksqRALsa17DWgvQSUPViyBCdEl+l4wVXOqJ2Bxhw2w3ged2J5lqFW
	 NQkEjK+dxsh0KitHli14JNbAH0lAMAwMOmV0nAyq9Zun8wfWh7PjYEDMfcNF/jSTnH
	 b3bqe8K1HB7rNKPFfqo1JAG8FZCkAnaPzzn6+04E4J9HPr+lCpwFjjl835Wv+moFK9
	 pcKSvEJ+iSdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D49E92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688443359.1191.5344363555817443243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17425395558c5e90f6f1cf5749e79529e78cadd92ae063a32996de10f05ed38
Date: Sun, 28 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766884433
