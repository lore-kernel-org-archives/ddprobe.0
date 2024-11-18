Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E684C13D50C
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731917154; cv=none; b=KxvoOTlnjF/PfsVm0ImEkI3ONWGek+5F82g+LlmYfDiytpPH+ropNQi3UYwGXrOtitX8jJNDVhB+5fQxVcI1JdLQRE6tEno7KVqFVQDGoxyn7E/4WdlFUkLX5b1AY1O8enJ8gzFPABrZYwDhN8viQDrt9wRwwFBYGkYRNWxqNoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731917154; c=relaxed/simple;
	bh=XZlzsL8VlHTwB+s0I/PIpxVbdoV3+LYidoAzq7i8zjg=;
	h=To:Subject:From:Message-Id:Date; b=My+B0t2Kl2/acNXD9ngNmK7DS8BXhW8J7PIGbel3Pglcs7aR0b9MwRww6feWkFyaI1BFP6cA+6WBmNk1SPn2L40GFQ8Xdpqx1s0Yl1pxQJg2KSDv59pLAHueLlHQ/37QAsJxoz9PBDFPmMvrJ1+tqcKTpbBXOuSoYRRRLGH5mCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/Z4Iz9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/Z4Iz9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF2C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731917153;
	bh=XZlzsL8VlHTwB+s0I/PIpxVbdoV3+LYidoAzq7i8zjg=;
	h=To:Subject:From:Date:From;
	b=Q/Z4Iz9FIUtCzBJlfkW9/8bKOhMNzD+8vDeQmFSvJX7JpHmzIlM6BUhGM1WsNweMp
	 xNU+Fq1dS9mQG6pzNDH3klOXh/1XcVhr+51ZuwW6POX26Ff4yYBxChApGd03SXcnni
	 9kko4pFhGLQsdIMFKU6hSnen+vlpvUhO4ulNvyEtsQDfM4/KutuaIDtiKPOvYOP2dU
	 I8N1dejweMop6a2BgBJebg8RMmwaYKUAOMSFioPUE+FClazGWWtEzosr1HIud6+3oB
	 ksviakKVdLHjTFydEeBXuiRotDLBdg7/ogY5XC5zokYNWqLuZqOG2kSX5p/ep11FkO
	 hD3Q4xBI3AhBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABBD43FEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173191715359.13320.18226689138112981350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306da1e8143a085ac0c84013dfcbdce3467cae9eec3733d67f24c9866106e40d
Date: Mon, 18 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731917153
