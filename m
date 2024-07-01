Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3611A381D9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719829463; cv=none; b=h3E8NzvwbB1dZXrxha0egydO2JzajlkxGCcSOyPONJ+zHkysRiuuUeq6REa7ppABo9wtBFFYD3+TSkr83/+C/Z9avFnE9FVlvOThDDunD9bCtpJgqzDQpWIELr6ZGx1IZms9PcjVyn6cvEAbqriRO7f2pNdd5nkNKO2ebwWD0g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719829463; c=relaxed/simple;
	bh=1+G7L5QxA2rLYuC7nox58m/McIgUweEBl1JSZiQMLhc=;
	h=To:Subject:From:Message-Id:Date; b=NYL3IoVIuDVmhPoEa2irLiGnNLUjVti5jtAYdf3FwJHdLvMItfjae21BDcTNSPHrIwK83NpOXoziqUOG8hOIBhcU6TO55oZNcsIP07OLtXmFWaFNMeQ0w0qd+CTOKOFZhdSn8sU7x3usOWElBkP64gBXpwdfGqLXkklms2f+fIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4sR+Znr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4sR+Znr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B23C32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719829462;
	bh=1+G7L5QxA2rLYuC7nox58m/McIgUweEBl1JSZiQMLhc=;
	h=To:Subject:From:Date:From;
	b=Q4sR+ZnrgJEh5vHvK6yj6n1OYOM2Zu3lNBg39LBs+fifClrC1r4McMKL3dW0u4Dk1
	 gBDqwkhFjCqQO7GfuGzt/01IAGVupWGZP07K2Ff9atWIfVW6Gx/YCgzLB3eNyW/RJq
	 WktoYtUsrBpKv1owuplRCWrDg5+wMTVeb8VSOtp78h6qgq6uNDF6xhR3ODOQDsAh1m
	 QODJ1Z4q7JsyVnRpH4ldtpvI0Q07bLuD8b4X2TsIlxoomP5W3sePX/Xspg0SrsuLxu
	 jvXINIUJ+im51w5E9cXp+R6DWqe8iP2+uhW90i1NzezGSwu7z5ExuI6LkM/TbuQX/6
	 6QlMst6wuue8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF23DC30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982946277.12947.8007145113887600125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4aa7a79f8198ecb94eb75fd1bc781b4c21082d04bf8377ab67c3b31879837a
Date: Mon, 01 Jul 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719829462
