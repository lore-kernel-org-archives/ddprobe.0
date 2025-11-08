Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A5A34D3AE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762572594; cv=none; b=GqK4GB6VpwrUgpY9hBkAsR4vTwh6VmQl766fJ0/dBz2wxl2xaqD1NjKgf6WZT23uCugYxf/+TnfDOhedjpzLYj6uR9CkGBuc9LeTC3AnmkXW8Ds5gulbfFRhwudivm5IO2kfMDjBMUPz+iWpgIOwRSp1J7s8eiEA9jiZcYPcZts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762572594; c=relaxed/simple;
	bh=9vHCActhSaXcVztMZ9KTuXPaArfqshpz+ufsPwI07v8=;
	h=To:Subject:From:Message-Id:Date; b=jtLvyxMKyjyqI/yqa4V+0W+ckzJDgJvalQgXxz30jO5NQywEoJthaF4E48mEFKDD9rTDRDusOi/CWdvDbsH147BFbhQBik7lYtH/HpCZSk4owvicdJabQf1OIA6y3gh0A/Xlf1Hc/tGSyQR4eBzdRlJ8efCOD86RprO5Z0Yy9NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhN4ONB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhN4ONB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F1C4AF09
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762572593;
	bh=9vHCActhSaXcVztMZ9KTuXPaArfqshpz+ufsPwI07v8=;
	h=To:Subject:From:Date:From;
	b=nhN4ONB3d/YiGpqJ9J6r2c2gd3vamx4HrSuEYVIs8o1oeKCBYfaoGLLCLXwI6oHXW
	 Q1QUVXZ6BK+cg/lEQr4LnQy4vYis52c9EVfu7nm6Ul12Ub6FKYin4AXvCQLQocdmdG
	 tev01h3xXTdNIFmKxGtwCFfrTXwhzz7lbp/CWbHcjywq/n8QGwTZdE7qS9XOZ0rGqg
	 +ZHsmckwYlQZQj8CqvP1JE3Q/KX+tum3KCbAA04szCKPVQF+e2RRMJXij+I0r7iUVh
	 4RTHJZRxqt2GgoeXwLOAggZ0JkKoMW4O1zB2G2/Uknv3mafKnUcuSLY2CB8oLSbgBC
	 0wEPe1wo433Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CAACCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257259359.29395.2089058627046019921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760ceeca72df35aae79592b0518f3fd558b7afe25e519e5eba15994df5560cad
Date: Sat, 08 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762572593
