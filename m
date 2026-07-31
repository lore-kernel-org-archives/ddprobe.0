Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CEA2417D9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785473434; cv=none; b=EiROIUaTUyixuaMwoHBXBl0XYGpNSSHQh0LnEfx3OT3sJv7mTHbdZipSNsZC4gmL/hyMMfwg0no9mjabBLd+N39tK6+q3XUIBDjHsyNKgVEBKgayciZ7vp7VeErPesAfhrYmeZmvCzDz96Hntzg5FKk0Q0oyO4QHAO1OSaEX16o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785473434; c=relaxed/simple;
	bh=M87K0HvH08km2FGFve9HotmwetXaJQoFo/lb4Nu3VMY=;
	h=To:Subject:From:Message-Id:Date; b=myrqpi4mo8VyKxQgHyVj5yNqbIs/C63v05HWpPy/rvjjvyI5Cz8JeZr7Ly5suQobUSNOPwHRgHOOlPCYUIcvYDZORKKOPYxoLtu5f3wLvxjCIYs+CryLEVUXQFcdSlFOVo+H+KTF8a40Kgdb+sVRYw4viKBBgasw/kuY/ZA21G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR7AfOJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR7AfOJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9234C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785473433;
	bh=M87K0HvH08km2FGFve9HotmwetXaJQoFo/lb4Nu3VMY=;
	h=To:Subject:From:Date:From;
	b=IR7AfOJdxmda9+VmMiskea78eM6n5Q52LVQ2S4p3cioEvMALjG1Uu0iiQYARSr4+q
	 K5GKlUVZoNquEHTg5JibZevxT2bIhZDK3TW6mRnBf6f59QtjEMxQ4zEvBVaRYjLT7H
	 kfPTpSEc3QKPCR30GCt1IIMbM79w54ClPiKkW19pUt0b/ND96Md/b0DKY+gE0g9nUE
	 ePD/BNvfV/OcXyN/kSIdGWxzfIIObWp4wquzaXawXeLTtP5evZ90cowyDy4rcLNQ+U
	 O0NzQ3p8FI0Sr7M6JgcQtBzUsg8udquQNeI1+RVvy4UQUT3UNQRGSWXo+D4/xhYPGF
	 5+qD7FshwTQPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3ABC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547343369.28746.10322419642101647823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a9c32ce4f3708fc7755772a6c24999c6c501a7e5758c86406d09ccba5ab3d3
Date: Fri, 31 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785473433
