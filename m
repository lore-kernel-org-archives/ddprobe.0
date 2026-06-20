Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420FC394783
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781964394; cv=none; b=qdfbitxPru8K+jkdCh0U10pac0ylt5S4cfF5oJgso2wxkEf8Ir9dBIlO0qRM+mJDrV/CG7oIDInOwsxC//DXxLG81tvYupWOME5zM+lCzUvRkkJTO53XT0AN3xm1OcnGli1HtQLBYEUHP+4iEuy7XEebAtMQjZkxrxabpc6cd3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781964394; c=relaxed/simple;
	bh=G/zQCsSa+It/+b2JnPU0Z8kEpSBJxMRwWDNJLrW3XHU=;
	h=To:Subject:From:Message-Id:Date; b=b6s0BMu3s4Yqt0iIN3y+DdMYA9NxrH/wSiQBTBBKPt3o+Bzx/InBGp2TRVvztOQdUP5mPh6CuLfqKKlYDNRQjIBv5G2n8e4++t+YHwPV/zME5kNaLDyUYzxcTYrewQKUx9cf6w4w4K8ZxMliOOxaGuq4cfBzKdX6jwnsGoF6FUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzd/IlNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzd/IlNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9679C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781964393;
	bh=G/zQCsSa+It/+b2JnPU0Z8kEpSBJxMRwWDNJLrW3XHU=;
	h=To:Subject:From:Date:From;
	b=lzd/IlNkAwlIPZcAoNICajdwMny6D/bLK90rAMNYTcPJoTbKnUcdbLRsGuT+c/rZh
	 muVmrZevwjAMrPEmokc93mGC+LCzGm8eQ2ryBN3/Kwy5otsss+6Kbg2NKl8/ifeTkn
	 t5CiqNdcfZblcz3ZJLfFRJMFi3n1a84DwcFRDXOaIfI6eXTOhtrSAlmrT5IcUb8AJK
	 AGFmW6i3IjT3KUo7rk2I5sNCtVhYqathEYJXWqmJQLnU/kWgbnuDMBcfLZRvCT1jhR
	 +kRmDiovusZv7OJTv5Rbtysq5tIWW2XFi+GsOlvfwnulAQ4rboIw8bMQnQ1E7sfjxI
	 dQzkjKzlo+h1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEEECDB46D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196439370.23261.14283245994659124775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d725128fa56a3c5c42bf4f0ebd37f945d3e7e872551cc6c454547ca3cd287076
Date: Sat, 20 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781964393
