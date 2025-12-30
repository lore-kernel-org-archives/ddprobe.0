Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26030469D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767073434; cv=none; b=ssCDO7kGHjp0kbi4Btywi+o+1KQ6JNU9TgQz60i7bLuSgI26EH09+c2l2ISlELMu7KU+zLVK4kNsrFJl4hdaTmydMXzl0AAGT9dma//wicz0GINXjmIBo9L1vtZ/s6Z/BzipdyXMwbx54PQR6wUlyyMLzz0xyb85kC6t2bmjjtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767073434; c=relaxed/simple;
	bh=xe2oSbp10IG/jrNJ5SIZTolUqp3yKRrd5fiX0UrlFYQ=;
	h=To:Subject:From:Message-Id:Date; b=ewxwgqSNYzCBVX1uZxhadurei2z1RG4CH6O36QyLqZBF12OFCpkbMsfpjN61nZQUsnZi+0YrmYvrhgvdZjF1xIXYYLWZ9+0gMI7ASAeTsMJkesxVzI/ayE9cxaXU54H4JM6XXtba1Fvj18QEBTcQN1zARkcfZ9mOMP1QnFifrI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SouZPRQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SouZPRQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C9C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767073433;
	bh=xe2oSbp10IG/jrNJ5SIZTolUqp3yKRrd5fiX0UrlFYQ=;
	h=To:Subject:From:Date:From;
	b=SouZPRQJG3BtpHHtGH6Hktc2pC0+pSAxRB4RnE+TOFYhPcdbPmmFKfBj6jSEByeti
	 op5YZ4tdYRx7saZSTxkNGsXIjJf0djuzEvPJAajVYOmZCANc3f0if9Kv6sbfD7Fee8
	 svJuStdp2+QCguaXPS7Q9Jf/0wezVlE5BeqYGVHG7tZXnldmKrQOReqth90AR4aTHr
	 NUEv51ubFeIphTof8RIpG8ZCKa9bPcuPEDreMVKPBKBoigol2AJywcN2fS+hswNSvl
	 eXmjgopzI4t5K3puTbSmH7JTi3AmaXTRWSAWM/1B9QBHQBMKPnmb7hcGHPBoY2PoIZ
	 nqLDZGQkQP2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6FE9410F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707343357.5285.13692244645442946820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1a5a748e7b64f0455caaf620daf8e4be6f04af95caef0e8f4c5978fc58e85a
Date: Tue, 30 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767073433
