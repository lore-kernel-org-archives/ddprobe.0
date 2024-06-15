Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEA017BCE
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718435303; cv=none; b=du3RIPlIClrfBIN4vONNKvbcFUmFFBYMPRq/dSGaSYykQvYoc7xHhcaIiw8N2MlZ7n6d5iBZ6DAvaQaxkoR9x2syn9IS451i9R1ZEYVs8nGQRlHisPDiiUg+jisP8iE4Cb6gZDZFyM6F0/0hBDrtCK2HcfxXtLuWED/QwqjA4j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718435303; c=relaxed/simple;
	bh=PeK2t67gXXEYXM3iR5qwD+0YxQwvvTRrDKn/RHlmzB8=;
	h=To:Subject:From:Message-Id:Date; b=S5sdP2hpWzS1aQgV9EvbKgZWzzyLf7ztV7z0k045n95T6F1qfBKWnm9CBG891w6ubAgT3griNRM5mp8CiJRD20SDAbnrDao2BRxHag/csmo7MrbMAf+CVxn8OGoiFKj7Tnis/pIWC1OSbF8l6Xy/dgX369fL9Ipug8Jf/zBcMv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMPsalVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMPsalVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D7EC4AF1A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718435302;
	bh=PeK2t67gXXEYXM3iR5qwD+0YxQwvvTRrDKn/RHlmzB8=;
	h=To:Subject:From:Date:From;
	b=bMPsalVHHToERbf8h6T5Y10PZqHyi8HVbaXqju4HSsXvTiWKf6W0LjGXTnvQSJB2m
	 diXyYMn2wKARgSYEGe/PfbooExJNIT65stH+KjyzZVos+zpdJJhAjuMnuDsKBEinPk
	 N8dF9Id0r0YRQxBrVJDGl1G2esuZFh9pBE+smBuU0bCyICndmncD90hqmJwgh5UhGm
	 rsvPL9kO+KQ1KACC0MRpgPtymAYEkIa7IdRf45JvRsIQyITiyf44Yqmo+ugd+/L2Um
	 GhVBDTqQwg/y/2wsATEObGGFYuL0MCrV4GFIe7vFAhcKWvQ+kF1Hc/Af2gswGtNKpp
	 Uup/lGXz2l2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADD3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 07:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843530280.11219.15772176122143631966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341fb91c6df8e9097a05ae679764384f0d921db7530f4586c7b3c5d1870cd061
Date: Sat, 15 Jun 2024 07:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718435302
