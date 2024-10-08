Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAB41E0DCC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728415554; cv=none; b=elF2ZIshuihKoYVTmBYM/tHzG+sBsq79HZ2LgvrM6vh89AbkV9uxrBcPVp20o6hbnsMS1K2xUNEfBDr5VrDYdYBt2IEuVaqOwjuvrtrfzrpCAf9no3tqMHVmhQjsEvwc9ITPfXEOJm5zAAkh20+hgCr2Ebk5e46REbHQvexDSvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728415554; c=relaxed/simple;
	bh=xyBMyPnZz7znN2VE8p9cXKJzXJk4GzOnZY+QTm+MrjM=;
	h=To:Subject:From:Message-Id:Date; b=j4F1MF/iQRNhWw7H8s0TrG/A6JW0peO3rl2T/IuzkxdJwh8qD/iF++OM6paTyXsTZ3W7mjXhl6uAudlvaC0n6FWSf8XNXw1+jkQ4JXDGshENUqGHdGEAjcZybeA+cy6cuChhbes1OVMcehS2rIrsBXsTg3BOiKWJCyhv79/6mdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu0cqXnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu0cqXnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B017FC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728415553;
	bh=xyBMyPnZz7znN2VE8p9cXKJzXJk4GzOnZY+QTm+MrjM=;
	h=To:Subject:From:Date:From;
	b=Mu0cqXnLPOvAKVDarAYVtos4CkFrhLnEJbGgQVMy591PR4aFgWUBiC5IU79fCQRff
	 FUDPlvnwHKRPTsDm9RNo11H21di0+rRX4X6ym+9+C0ymxMgJILUlVY4b5QV0TkJAAY
	 ZPpduMJ38y1puvli/0FoTj1OsV3XzLMwHT/+YOz8Y/hh+xaQkNfDY/1NTsRHfvytYV
	 984GNOWJfAqNZpJ7GMEoECbQr0+0SjAqFmSwd2WCMKGFqczGln0C8sRIpMXD09Rydw
	 tq1jLhL0E7QPIiRAS2qgoXXlUTtdt2Apu3rCtJc6UWfmVmjCbriroi0zVnB4hebvfK
	 PsGG5Feg3Fwdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2B5CEFC42
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841555362.9231.1006450418247361125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c8e50c258d00d4c1ffb65037c45fda38effa0959a3feef84b9167e45596301
Date: Tue, 08 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728415553
