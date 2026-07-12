Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4272423393F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783866514; cv=none; b=crWlJUrNIG+jL8ti5FyqYNd7jPFc/KbKGp62ZrBnvXkz9dx6GUoLOVnIULN7X36ANQvPqCha2iyQOfUjcMUZIuLec1ETReRLzrDueN+1hbGK/jzoSuLkS5VKns+kc/d3XofbAUbvcQWT1HKynhezSXoYRmcYLN3T4ybEGZSoipU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783866514; c=relaxed/simple;
	bh=PD7DRU3p5KQiU17sGWs+AKI9APzYalh2olfr5Zs/Jyo=;
	h=To:Subject:From:Message-Id:Date; b=VO38BEERq6xF3AQRXOCYi8UbVvVnNGMw+EUMJLlxixDDeCeJ+47Z2VIoUz4eXevYfgmLwJt3bHb21/lBHc83YL1GDROHxBhtSJDypkLVAK5yTdLbz7LJdZZwEu6nRSyGfvt4aEpcInkvF9umYteeEMPhf1OczoDiAbCRxx7OYlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI1D2VzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI1D2VzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7F6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783866513;
	bh=PD7DRU3p5KQiU17sGWs+AKI9APzYalh2olfr5Zs/Jyo=;
	h=To:Subject:From:Date:From;
	b=tI1D2VzQTH6cedgje974nljH4aVG0xMhz/i1bxnucEWl1odAWzDcHDYUHGUbVkQPn
	 AIj/POzmhawJhCTK/jz9Czz8IVxGLPcHSSBDupKVt9kvgTJi1VE7urUSy58n10ZbH0
	 ZTExc20wQSS2ENLH3L4X9oT5AYpOMiUhNy8xlfLyqt0INttx8ZT1Kq2CKJZ53Cl9EE
	 rZbsYHoAnYslu4pYnzgxdREj9L5uEc00KfHVm9wHxdWK3OUJmskVi3raktN1/3vFUQ
	 RTfV0b2oHi3ROQLdkQTCpAInxg/f6ftwIXIjoXUd0zU3N9tkioo/PKCN9G9UcBF/MV
	 nwyt0tr6kuaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9CCC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386651368.10549.9022756185393470532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc120fe857aa05e46c4bfb539b225798a1d2536a66d8847b5e682154ec82b64
Date: Sun, 12 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783866513
