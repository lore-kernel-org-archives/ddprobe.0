Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17393B52E7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785394835; cv=none; b=EsPlqBUg+AC+gxJbjLBjwLXd1gkew8IuPpcsichogdt/LQxH90ttHAZCiYIM2CYKfOHOK1ULe5KILYA0N4YDlQ4FQDoHqRM9P54eKhW5EOXDv8dED38NO2QmnlHy7GaXA01Lmd8ZeM/EP4yFR37vo81o8MOZef998osM4t8osJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785394835; c=relaxed/simple;
	bh=taVVGXyOATs76PYwRb90YUuh/aOprKjlgarvUTNCBhI=;
	h=To:Subject:From:Message-Id:Date; b=LeGh/2bi0qLLB0+fely4UeGFk+hdXglnHxu1BWoEHtWKUf+OXIUawZyHc64LT0Qq68vSvBB6FGJ7KjyDlDCddOIr5584EvFhMcnl/7HsTtvrDeLx4mzsOz8pNEqtcEknqGIjO4reTvvFDfuQdpJD5k9MskHecgGK96lBww3lKZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB8HgGkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB8HgGkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7571C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785394833;
	bh=taVVGXyOATs76PYwRb90YUuh/aOprKjlgarvUTNCBhI=;
	h=To:Subject:From:Date:From;
	b=EB8HgGkk1eKTY5uAczUk+oKBZlvae7AxTrB6LHeP96QPjQESpBX1msEfK9bLTE9fB
	 Yg1VU55rf1+LM2SYVhONe580VB2+eqysy5WNXJYEbAhpCj5wKYAbZljM9titgo1MUT
	 x9K2nPx5ATVh+maWSAAiKGhicMAEpJryaxFQoMc3Zwg5hp6pKXq5rhbMO+de7PslAY
	 Lnf1l/+IMLcpwbLBp2v+Ni4kguvzyGEepiy6ItEh1IkYapgddwc8qJSg7alD4hPDfO
	 JJNhRZsd8Jyia1QEWVhMg6kCSkCM3vI97MNmDAeOgmQLjwE+IoPVU0X51MjcZIypsN
	 nY7Ua9wmfVnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA51CC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539483374.23302.18130473289236412977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aafef9b27fb41bb43f27e4b59b3535bc9ebd5ea4bb7779376e0797b9e50ff2d
Date: Thu, 30 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785394833
