Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1659D158535
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770885894; cv=none; b=KA3OO5ZvzyThjBTKhstmVQdbnPYsp4pWJcPa1NgS8BjnqMbopptOjB1WsSmODR2+yN93KNOxdh+DxJc5OHEHoSAJl4gG5ta4ssO6s1+PUaZnNUnd8TRp5lBKCs6FPD4I8U7SI+2ro1gr3cV7vIfk0Ma4HbQVm7r6rXyvrIXcvrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770885894; c=relaxed/simple;
	bh=sXmrmZTwHtEzJo8z0Obq0flGsl2bZHPZdzSFtyagLUA=;
	h=To:Subject:From:Message-Id:Date; b=C1lzwxGLC6zgOJUum2lWLeD8Bu3qTjcfe5ZLImCuV/Tr1IHotO87jaeow7DjbdKuPZkrZp2MfxQIFcuF0MhtM5tQeafgqk/EExVBLv7So6aZ7/sDPGkDxx3taDvIWvZcNhBrBmg0fEzrR3mT2nutW8648wIrICkB3xoDTuZ/Ixc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I68a0rAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I68a0rAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3BAC19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770885893;
	bh=sXmrmZTwHtEzJo8z0Obq0flGsl2bZHPZdzSFtyagLUA=;
	h=To:Subject:From:Date:From;
	b=I68a0rAXpaaDDI5aLoYJ/1HyIZcM6KLacgc31N2fiXVwq9AbjwskqSNDHDFuMNPkr
	 cDhOy1MnLbaviIEZ3Kk+Jm0aKy4GGzcdN2+5pBHXcSXEB1MK2rbyD6oiyzhYGL2UmC
	 qsRWg0h6iZJczDqjIaROODJf+RAezt5uR+7r/Plampnno2569IaZZFDCUpGvr8sPqW
	 qAGLh4DSwLMZY92Z4Sq+tTmuUcVNzRaob8qp8IzeSWCzQSMqEk97bW2hZLlrdrzeZL
	 BPaEjI+BmAr7sCpN4hikxPXdeErpOmtNGDgu28k68Hm2jJzvJiaALGJyK9R14gOFfP
	 a3GWvn9HVcLKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D87ECD6F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088589360.28147.412598116790134289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd87dcfc6b5d5687adff8920976ed2e498b4804e78c2682244d7b3f7d7c2c92d
Date: Thu, 12 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770885893
