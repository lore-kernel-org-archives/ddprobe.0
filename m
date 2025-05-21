Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EA21C5F09
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747848594; cv=none; b=QKE7ZvckrL+xDNR3KYUfODq/NGuV/7itv7z9CbgobK9TT0f6yMbieCZV5YPzRsRP0WvG2FggZv5XXO0tJQkhEjk/uUeoJYMssAYmmiTWFLGxGYNYpa0kvj2fu0gxX/a3O1AN+vj3FHdGQzpfuYsJZE1w7jwM5qmuBD6zlJ9M10M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747848594; c=relaxed/simple;
	bh=6OdMWluzbW7JtLGRToVqWuS47vQdbdittExU2PdTHGM=;
	h=To:Subject:From:Message-Id:Date; b=f79vVVahZP+w85NN8ENqDsufXWen87vLeIEyf0SqFsmNug8IbXVIQG6b+Lx60ZK9/s1VUV5osdsd3bwYmo3Mpigde5OX/e/7bdEgElK9qH6ulMhA9LdRQXZweFqa20mJxpmpLTCmE15JVfc4IuLiR0KlLgVzXS8KOTmWSJSjYy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKQtbbL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKQtbbL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E923C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747848593;
	bh=6OdMWluzbW7JtLGRToVqWuS47vQdbdittExU2PdTHGM=;
	h=To:Subject:From:Date:From;
	b=uKQtbbL+IZ2T2YDmNuAuZs9d4f2hV74NElJ16S2qvksMcZZ3uyuA5Pmz6chu6qWxs
	 heFvvYlBqUJkXdaUnyUTe4J32Lsmdrf7R17ZmOEaEMFTFJ7ukGfl/WAj4lTQCGhc/w
	 B7NQOIffTHbVZdqCU1r0nPSaZTchCCtP1JBSVZ0ylE9EzOTMYBChkq5bqHD2uefWEs
	 JULwz6FdUtWm5orau4Gr1Odn3mcvZsjUtukHDvcFJDr8pLOTCd4N92tRL3+2NK6W6h
	 BP77+KPsfAJR2yGi3jjRYKxu7mUcZD/1+CtZf9kEP0ky7cArE5pFlzOfi1TgPGx24T
	 8M+SXkKvfIATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A41C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784859358.9751.2512295393498352847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df1ddabde93a6395841c4e753913554d5eb80b3eef6d42888b9e936d083d674
Date: Wed, 21 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747848593
