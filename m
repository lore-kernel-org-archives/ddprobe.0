Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDE53F3290
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784763574; cv=none; b=CaAjSoXtVCf03LXPpOajc49Q69rrRQUy9ro0mMAlxv6cFFzvBuUGIH5a5Djrbqt5BE0216rMn2vUA3n+q2nCUtDB3saUvsxh+pCIrgKe/E/96JE+ffxnHoaNWApPDatp4vl8PL1GvkpXfvZVS6ZUVE6Qo/dpm3t26/llp1bCgRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784763574; c=relaxed/simple;
	bh=8ospxGrp+uvcwLaO/6o935O/wfoN0NmCrWjJPFVdUDk=;
	h=To:Subject:From:Message-Id:Date; b=nRl+5V49u2s1j6Vnlc7WGrAMuajXESlSmjGuEXj8VJgzAKrODQbnwjw5m3OjAKPIGjvYk/KW8pFgCDN9bdnCNEBYsiuuYPOb7oQGCp3ihxlWRqCKfD9Q7gi+pxKFwqKWgEBv6EjRI9RGnr7AEHroKQcLaTeOwqHZAKvNaetQayE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r58TmW0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r58TmW0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2597C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784763573;
	bh=8ospxGrp+uvcwLaO/6o935O/wfoN0NmCrWjJPFVdUDk=;
	h=To:Subject:From:Date:From;
	b=r58TmW0t4gs6+Vp6uf9ThynpaRUcV5AfLzpf+bKhdeGLX3S7yLpB0mGjl24S8KkX9
	 /BXgQcZMWw/EmWZXX1EZiZoKoCxBphhlJFKLb82PCIWv0Mi14W8wzopuf0g0XcZq+E
	 EifelWQtcPUIgj5qq+BO+/NjiX0JLh9ED+0swy6f01Ir0fXZFDxaI4tro6GvQhGwB6
	 F3gnsmlSmobsbXdYKU7yYwgv8iXADDvjzp9UQQ4dJv4DDPaN6P1ZL72lqERpqnON04
	 hvXnl+swhIFayTHkM9Vdrtfrctxo6grlvayp32bx+fN1tUR2CCuHKxl3QipwIqi3ES
	 npcu5Ri6iLffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF90BC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 23:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476357368.15780.14531053068600724219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940ec8b44af85f92304f376e0a8e1897a7f87a6704ed485134b9b439158a23d6
Date: Wed, 22 Jul 2026 23:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784763573
