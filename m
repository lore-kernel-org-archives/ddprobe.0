Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2839F3F6C59
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789678234; cv=none; b=iXtA8N0GqELE0joE2BjIvuq4ITvYWRugjvUCOPjGxbFHLSfJX/EAT+4MNdth6879ueJLWUW15VTv1lsZ8Fh7Gn2Qt4tgKStyfocjeqp5sW55vY1wbSAkYLwsJ+2UdrxS4Z561VBDhbiZpGOjFtQYo+EZSAVUwYl97fholNQmKUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789678234; c=relaxed/simple;
	bh=b1yC2rZAsU5yNH72zcOjVoG7l3c5Xu9UJEsM16dnBTo=;
	h=To:Subject:From:Message-Id:Date; b=nINeVpOjDBbW/KyC9Imex2rYIoImS8wNNBLb956lqgd3KugSKcaE1+EO3hlAp4bCdZwwq7aO18//u31/KLgcn0Fu1fANWngMt//1kRDD4YweoeJ8IBsmvXKg/ESoyX5RPMmdUSqMhuBagwUopxFnc3Gzn88P+gtTHTbthLv4+hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEM7iu62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEM7iu62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36A5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789678233;
	bh=b1yC2rZAsU5yNH72zcOjVoG7l3c5Xu9UJEsM16dnBTo=;
	h=To:Subject:From:Date:From;
	b=SEM7iu62GeGWJlqpXdpNpoYxhMSglNaKSOpkVrnTi1zzYOtVhQXpW2z/LNDYaC1ZL
	 5Abaj5MSKrqPW64Pe5hKCfNd6syW/AiF5T3KSt8SWblWNipA/JJj4aciqKj8tFgBR0
	 f5Si1QWxwn3DtX91yy4nFePvvxhalc9XSHpja+9rYBVSdBuYVOkHUQLx15T2rMdS5X
	 lpZbTWHptXaL3XMcuyh4kIqpzxCMncZVxaHSF3HJBxU+GhzMRWdJX2WwaYHmN3k869
	 Zdp/g2zRkoZQ2krXL88LijWjZ5claihj16eOkfCDbWZJxyaOWmvWbHTRSKxpWV0Eho
	 BPcieavREmvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D2C982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967823369.11184.8270546521144687981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f03b7190244d4c54bef1aecc729acd365829bc021343e6f34d95d55541ee5a
Date: Thu, 17 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789678233
