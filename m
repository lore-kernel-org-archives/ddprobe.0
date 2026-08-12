Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396CE345ECD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786503634; cv=none; b=SBy5+6Zx5/a8AvwVWEvEfQMJNe/Jc+wHHrfjsW2NaLy4M+JPahDhPTf9okIPOQEoFKygzs0aHB8GLi5TdZB8Pg1fmrvEiiEPdln6hHdgGlAL9n1BtoKvmsMs4e9PbNZj2yBWDhcunQfGwAklMA214fkpkDDXxe57jTjDJ4TINR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786503634; c=relaxed/simple;
	bh=T2nj68GeTu1xJw2wGzDiGVNCOwu7bugdIpsKRgkQLWc=;
	h=To:Subject:From:Message-Id:Date; b=Q43Pirn0KBEjCKBxOypZsKuhMxRPd5y7+QAxEC6C3VKZhsAEbgkp7h60UVTO08uZGD2p/Mwcdaym7LZ5/nOmGNAItth+AHFZwG4oacW/+DmMnRCq0bifbLOPCafe2jLtI+clgMPTE07hrPcbiQtgq4DrqucwX+YbVoujxzv6+BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkgsnYh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkgsnYh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA41EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786503633;
	bh=T2nj68GeTu1xJw2wGzDiGVNCOwu7bugdIpsKRgkQLWc=;
	h=To:Subject:From:Date:From;
	b=IkgsnYh1klbgJK2sQT70xRtEIE0oUtWBL7yhqcMwmNh3DeKJTJFF/myTOmzGM79iC
	 naL3uA9onzN6gOlvhN6UWOM8h+1Z0FSwgVbb2BrTl9k3Z+SVHFCyOScw+l4AHximon
	 7S9nT3wYDz1LuH157Gw4ouw3NbPWIxsktP5VDG0b50Yj3itAex7seAqhp4bARjMUp5
	 K0cytvuWYdmF1XJS3qpUzdpm3hxwrWj1dP60qXT7nTMSK4RG72hqf/fRR//+vcf6xc
	 0N6kbN6SdoaoQo+mLGGvnBdPUfaifOueLOThg7CBENL7TlKnkx/FOw5zQOxyfSmioU
	 /fhCQDLGsLnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8810C5CFC1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650363368.12349.15963926023797017992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a5169f5dceeec7761b5c5d7abfc0b46f286000ba03ab956d99944dd28316c9
Date: Wed, 12 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786503633
