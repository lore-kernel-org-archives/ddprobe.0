Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6733A4535
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791425434; cv=none; b=nGBeiL+ukpnxuWTLF/Wu6tUJrHHcittqRQHgmxWIxfJ5XjhkVEzHq1VaejXVQ0wv5S2a1ykk6zNfjQNNVuVF/RWLf0X2aI4dCW7hdBtPeM5NdLebY2hgZ7grzITrsr2VZ1+XvQ68Su+LOKl+dHHSZD45NzUIXvv/NjSlDt9tdsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791425434; c=relaxed/simple;
	bh=1ZVh1oKRMt9aBf1XqLFA51ZnEXnJoLz/Hrbk/uuQAlY=;
	h=To:Subject:From:Message-Id:Date; b=GC6S0pFJGLWOuCGBjCapHtUXFez5kHjHL65cYMGY9madlONAsAjNToK7g6wl6rN7T/k92M6f9tTTkjdkV39mGPSK2+aGFcZLE7MMmW5a+Vq8gSxXGUXb6OWThOg5vh6GB+kYjFeWcarv8GRWeyVd5Q8Tb9gV2qsMqioEziu1eDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yzs7oXje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yzs7oXje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB227C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791425433;
	bh=1ZVh1oKRMt9aBf1XqLFA51ZnEXnJoLz/Hrbk/uuQAlY=;
	h=To:Subject:From:Date:From;
	b=Yzs7oXjensRU8Abxq2d0y8NmYWVF7V+1O/TyCsXbh72tcI1dvoB5ZUrK/lNabBoSq
	 t6aSx7B7J9AFnzdtha3p2H9gxjpiSWk3mAJEIplYhaxW0uum2UV41YgkaqsvsGl8QU
	 YQbKRnUXIxTMLM2OEMn0XxnyA6/NpzWixU0lvPChAnrrCQ5lBwL4YMMZjgq+54UhFg
	 /i8ywpmWnDRA/NBD1Y9Zhd16QJeXSqopIgrqfoyG3coWXaR+IbJfw/lt4iu/tqJ44k
	 A5YCl0Xm/cg/5ErHteIoCXQrnG5fyCAXbzxRuJxZ5l2RJ8UdGHwIn6kLKe8MK9qlec
	 4Tw8hxtCohaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CB5CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142543368.7902.6700368518739963289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef79aa824bef9fcd75bb4cb32d6becf95dd7534c9c4ccddc27486174425ef2d4
Date: Thu, 08 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791425433
