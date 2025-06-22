Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F931EF38E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750627194; cv=none; b=PRUmNKQj7iS42dG9Shbk4TmdPFIkxJWs3a74gIeCOhS8xiIRShUke50RgmDOst4X/FyOXf2qVgWaXQK34T3VJBd+MiIBd3A334QHog+VHdk9ltTnQlhmRnWldqcQFr7Faklf3YLL9aCZim97UtzHxSenk+am4uOxzn+am9l+jpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750627194; c=relaxed/simple;
	bh=97zyoVJhUD2TT6XfoxKd4kKmLIhplKzxJNAm8VfvvEU=;
	h=To:Subject:From:Message-Id:Date; b=NuFY80SxWIMfKyFSwL9o5zgaHAUcKVR1d4HlKVRszfT94nkJslQJcCJGV709m7w/tC3CcsjBXrY2H21Omll0gnIE3b7eYghUcNnwKSoHISdmLnx9p/eUjKEJj/hD9JDpcnuKU8Bs+hr7tE4q+Ir3thuz12MBv7JbMuMn/ivU+VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEm8/Xoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEm8/Xoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D5DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750627193;
	bh=97zyoVJhUD2TT6XfoxKd4kKmLIhplKzxJNAm8VfvvEU=;
	h=To:Subject:From:Date:From;
	b=TEm8/XozNVi79VmR3EFs7ArtSAuL1iA0E44wGzzxapzjzC8VL+npocdWhvQrNBbOx
	 u48G40Zpl7xaco9X5lGFeIDK2SW+Yq2jqCZLxrauW2ltxZ5WWEEo5cltXv8CX9+Ebj
	 /FdGUbl5F81B2TcNLrtlbm3jngseI02+qBNy2v82AVLh0v9UhNyY3lqETuPnLtnOoK
	 ck628ngtHB2PdFgmpZ8P2EFdf+XJ0XWZxV9InT/3riii0KwKmZi8mqhybOsQ2xFdcU
	 svbkAS/sMNUyfNkINQ/D5j+ztx1NgRNyJDHL33B9NlUttEhcuudTpf8aYHZQXwYtjh
	 pmro508Y+13tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94485C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062719358.8609.7216889126250600204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b10727160cdc7eb08a6bd03469457f9ee9bb80ef54d0a9f618a9ae75ac15fdb
Date: Sun, 22 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750627193
