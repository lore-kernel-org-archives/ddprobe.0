Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408EA366DC5
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770038634; cv=none; b=BSVmgEQQCvd45F1w/g7kSQ8bLbu9XzIg1x11nYlHM2EBr3UHUh2zoPGeiCsoQCB5b1xhp7Cms3mQ9tDVXRpjsoEs3OL+DCiYjiKv0tSqJR50p8/xh27rX/IZGlze2QrSmhXi3O0dgXqJ4yMK7yV/YpHkH5cEhvbjBD8Myu0S5fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770038634; c=relaxed/simple;
	bh=uNHzvkUGhqJWgkIUCsqCGG3zCXBFQNOcVM9/ipcz8T0=;
	h=To:Subject:From:Message-Id:Date; b=N3QNMh2dyNsKk0WfjBcf6IrUpbxy0SEEsRrNLrB5nAYRsy4GDzPBPrGX6CL87Ip1ZaAoUC2YonLuvLB5oz+OUMAIvPUE7M4JK2+4pCx6BXqMYh0jJHMVwi4geptgD4dlmXh9g/r06XAm0lU1a54ThJCduLq4RxcFVthT8en4T3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAZNycQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAZNycQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE907C19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770038633;
	bh=uNHzvkUGhqJWgkIUCsqCGG3zCXBFQNOcVM9/ipcz8T0=;
	h=To:Subject:From:Date:From;
	b=CAZNycQ6VtyriLLOIVuyBp6+PMBN6zpdFZkmrDt6cjm7BnPTUQTTNF+aWMieehMnM
	 1HwyF/ClIKyYHk7sqj8e9aA8EXE/uO4eQtF0scWk9ksMMw5PY8ZnxzWnXLFnjE036W
	 T8pub8P6et3HJvbVF5e/EJLQFVussx4uKpBYyRe698EkzSTBnMbnn11QtGOPI8s5o/
	 s2y3b/Z7AH/kaHuhXTdKcuhSn5wRqSGplQTytEaiydmDnBte8Kg5tTuXJ15/5PRyjd
	 4ywcKf6ifIul4PE+sW7Zj1U+O1nKk6k9w5y+FkkovVFAVZ1AVTo+SsxY5mUUul14TU
	 7INmRH4i7l5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C29E7316D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003863364.22042.15861296801166045162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827a874ad99d665956d36e219c3eff0360d0c69874917bba2f098238793c15ff
Date: Mon, 02 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770038633
