Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6FD1A01B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739629734; cv=none; b=M6u6qZiemJl6tWxR0oEmcXiHz7Pe0WOTVuSdU10W6t7rbJwCSrAfM8hL4ON0Xev6H9tKP+O/GwMUJZTK6SJfDgDhG05lP152MyP5ie+EweKJwfxd1Se9hbeat5PBtmMk8wowlnzBvYgJH1o8zUo6JVb8RyJKWNdRrCMAvdGTySM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739629734; c=relaxed/simple;
	bh=k/kf5crPUx10h/UMZEyuhgHr9EKEhxlPzxYWdN5g1h0=;
	h=To:Subject:From:Message-Id:Date; b=fxiu3/5nZ1RG0rrriYBgiN4iMg+6afqR6kS9rA/H2DOYac/MOGd+kNS4br+hhHA/US/u1z59ilZs+X7Hlf53XySQU9AmUkAAiVqMhyHUnTaOMef61qxGmqpHJWFDcz/IYq4eEBaKpc3TOQAzWHelooD+abIPusbMkE8XMGyyPCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDcLlJ25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDcLlJ25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D5CC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739629733;
	bh=k/kf5crPUx10h/UMZEyuhgHr9EKEhxlPzxYWdN5g1h0=;
	h=To:Subject:From:Date:From;
	b=XDcLlJ25ObZqlLaegb4aivH9cL3C+mLucFLd387TbQC1cEQREY2dk0opGP3zzoo2X
	 pLarX2WUYxoGsp2JQQGPhJ8wHW02yiC79TeQwpaEuqUtiZ4uBJSEznjSYcNPLSCr4G
	 sqFw2by5ZzlHwc7mroEg2e6SaHkmOdQh3lNmH0AT3IKJRWms3WTqzjx+AQUDAfcF8u
	 cFhpSy4YFDpxWQtyEtE0vsgBLqW/WaB0sqE73LuI/2rMA/r3ITxUWrbyXyyBMCgxj+
	 iuGdb8BB9ph+9Jf0i59VIrPKP5SsYzgkS+cJ9Fhiminek3bESxeUOKPKjIOidyseMu
	 XKT3cH4slCLRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B29C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962973357.20048.1853508300053314767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75536d1156937877c0ac4aab05e1823979afb925a13931e94a4722377f08603
Date: Sat, 15 Feb 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739629733
