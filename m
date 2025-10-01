Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A6927144E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759304394; cv=none; b=mdWfr/Ml6KUw2JLnYKtc2l/xdleu1jmJ84/xPA6FIFodOlKsqrONj3QaiuP7StWUtjFIXm+/4xER6p3sCOvYAwXJuQeZguuD0+PkkfDJJX4PWDFDvPuZi4ZeMYCIW4RTEhZfqiDOqP2LJVGZdiIAyihS6jqcDm3eyChbB9RImyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759304394; c=relaxed/simple;
	bh=hnP+/2Vtq3KUBDJJ0PzyWmR0Z7E8qZF0iUUPDPiA8Bw=;
	h=To:Subject:From:Message-Id:Date; b=jAblRBVmuvKwqqTBiGuZXKHmhvRNq3+w3dQMYNolwm87ykiuez5x1F5SDkIe0XziB3EdKfOz384MGs3mRkwZ8zYYreSVf2vm1zuLPdwfTCVselBYO3UX4Qei3tIf369dtOXMRBZLTHfUJzTL4UpvUW5YwFmiucWjIxsqU6cvK9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7ob9VPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7ob9VPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACD7C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759304393;
	bh=hnP+/2Vtq3KUBDJJ0PzyWmR0Z7E8qZF0iUUPDPiA8Bw=;
	h=To:Subject:From:Date:From;
	b=A7ob9VPcCz6lJttYqBjQ9v4nC/sMrBP4jgNb2WBZ5zQqOLgOiXfnXuTxApZ5pctZe
	 WtC2orxINkIGu51c/6/N1I9j1jD/u/vev65onGUKZnwYNG8ZsTqA8Mzf3jpdplpZwu
	 N+E7QrzCjGSWExKLqPFGd7oHc5R4YF7eT8QfT1s+IjcBp+QCy4fNevbWqL7B96w33x
	 xa7Tr0X2u1JIcrmUJ3Ir4OX4M+FoYJC7fxcE837rpsg1pNgkn2QfN0QU2rA009eKLK
	 6yQfVD7kjK4NiJOvRCGYUBKlqymKQE0E0KjfDqHDYJ8/dYVeb8rSUSU/Fq9BwSNfoP
	 g13PsLtdbzvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DACCA474
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930439359.17888.12534042431693376091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d0bb399774d49236ee6f414f169406c8465a5cdcb2e7e5c6a96824a617298d
Date: Wed, 01 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759304393
