Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054EC13957E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759716594; cv=none; b=lCkhAgWYU2KGBElAVs/nZTnEojyYzMb3vjQAtf3Oc3vg227kNhX4pNUpCjzjbjtgLAhTnqGszVoM+LHWOZDykqzmSPX4Da0jLYZTfKwMsz878i8rBhhS7d5Hx+rdojwcigtSfd4xqjStYVeTOZGWXV03SN9mCvddC2uppnFMEJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759716594; c=relaxed/simple;
	bh=kpCm0+gG5iNNfLkVcnuWsN/vB1nWhqbgBSXg9kAFfG0=;
	h=To:Subject:From:Message-Id:Date; b=flA07bLWUNmOOU7ClbKRvGKtLMZMhGKMfkoq5mR+yUDD1x4hVONy0d8msvKVVHoPNYkK96Q0ss07oHyYmu1d8D7Hx7gKQCpvis9PQIo3Urm+dJas9sGIq4uEwpKtsgReW3M3c4BPRQzeIWjfSQ5mthy0DvwdTENG70r9xK7Ragc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQhKwOp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQhKwOp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F7C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759716593;
	bh=kpCm0+gG5iNNfLkVcnuWsN/vB1nWhqbgBSXg9kAFfG0=;
	h=To:Subject:From:Date:From;
	b=oQhKwOp+cdOC/kYk2dHzbJ9FGzBFmevvkEtkDbSl5zgCNNdUU1nab2tD2wvPzr93Y
	 COVH2uWJFhl1om5VrwWBP/GwuXvCPeo394ZWPdvd+bxG5PA4QdCL65DoMt4fDFGriT
	 kWEftOuRSSJ+9kI8W4JzSyEKtgJ+CbmZnyYBh5ckwKKxwTwJIXZbPab8eLg4tkCDCn
	 dCQbHYx67Q3XpcRtJew3tQDkpsUgsjiifP05cCcqsbTwqIrUIMHhgCBhC/X8504Nuc
	 c4HdjjGD4Eia8xETtxdSKqURvF6EJtEU5XJ0sqXZ4g2kfgGbVWgyjI15ctbKFyV41l
	 krBXdJk3l/PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94977CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971659357.12065.5209622891872733561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc57e978655f47ce50b15d6ae57cedad1e41a35bc69204036788443705f757e
Date: Mon, 06 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759716593
