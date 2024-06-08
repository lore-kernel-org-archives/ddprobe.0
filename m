Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E906FDC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717810043; cv=none; b=bMYQXjX83IGpQAZZvDu/NNZeCD3ZaxT9fgnVXNeS4Amk/8DwgXX5YHMHZFZK3zB2aYx2FmycJh/7wddDuLU3ey0M0CNZ61ycLzxwuPRU613ejM6qIP8WOQtfOvMCmo/upTOPmzYQY+rI5XxqlYm8T4LerTz68/mwpcDlL3uEwOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717810043; c=relaxed/simple;
	bh=wJC3hDx45AJzafL0UvYGKaPAhJ2rr8wOBLRzwRgpp/I=;
	h=To:Subject:From:Message-Id:Date; b=sIlezFLnGuiBMfRf/7G2CV0fzkosttjxfrMCbnRWDsrSVEL/apOHIn6Z52ogaSEUvqV6sVmj5bFL+cVRvJmHxRbCuQQdcPzPay+pMyLPUbkC0Tk/kRJtbKyfc9ulHLZxlKWjfTj6E1OZUECSWX2ttEwG4La8pCqvIo0G6X+oFSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYAUmFxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYAUmFxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED679C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717810043;
	bh=wJC3hDx45AJzafL0UvYGKaPAhJ2rr8wOBLRzwRgpp/I=;
	h=To:Subject:From:Date:From;
	b=TYAUmFxv1dkuZgDN3OSN6Vwcy55EaCeAfDLW37W8RcQvsI6P8UXu8j9GAR/KhqjAC
	 dYQLDbdfYZulzkrrxYbUSTb28j6Jy5A1FehZCtDGEdYmifmtAJgqUb8fkmJVdLFAUd
	 O1oHP/nCgS/dindS+aNDqw9FuzzybTkFgrtdNwLvDMQnp6PXGL4hOXHu0a0jcjO5G7
	 52ICoSIjEY9JVsCRx2zNFqV+NqlC6vGNRggl+CIQ82Yx9TcQB7SANvx2ya0MBPovNO
	 +goSa50+AynpEgMTSMJP8bbeTQV7AiQmtm58DiNfQzIa32Yp5HeXpw+91eKWY22ubU
	 r8BVizzGqvwRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1F8C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781004282.15953.14148811833932629669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882c0985b3c745a66d5c9a95fa9f31179ea0e91740440b40f59e0177b5306e8a
Date: Sat, 08 Jun 2024 01:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717810042
