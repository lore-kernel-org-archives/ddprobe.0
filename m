Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194692EC083
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759913994; cv=none; b=CsJImoVf3uhl86OxGVpEG+pEH9iRktHOrEHuFkdOIO8j4XTdw0Nfk8sPaDwdnXiH+HhIlBzK83OuItvmIyCPsC7Oh1anoZxFS+urytNJEQsct1LUnDgfo9NxIc88kqXdpJdxY1+GXpfWchyeCtK1iVicjIokTGQ9i7r/4ZQ2/xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759913994; c=relaxed/simple;
	bh=AZ1EvQjrSagXA38Mcyh6t7yoklx1NbFeeHKBEKe9v04=;
	h=To:Subject:From:Message-Id:Date; b=Q+FT63FE+Z7Cq0ETNx4xZnDVz4cOsmmYmz2sFwzznkijY4VJ3FESDwQc4mhgFxEwTXJFeY3QmqHmeubWuG//wJms3VGd2fa8r16IQMYcyTr/qi94d1xwIO/dPCSGCvo7XukBCKAA83sUPL24vJiWYLZuK47zkD2CaYqCJX5rgJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urUfYm66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urUfYm66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8223C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759913993;
	bh=AZ1EvQjrSagXA38Mcyh6t7yoklx1NbFeeHKBEKe9v04=;
	h=To:Subject:From:Date:From;
	b=urUfYm66l7vKFKkwz9RzHXNyTWStttzRMmzAJZaeF7m74Hlj5b3hFcNbcmOrl1My0
	 mLIeH+OOPEu/sDc943ddA8Ta4hkgr3uBYwD5VkW0ovHci0idDyGaxbGMi74UJiegfs
	 e+9mbzKx9Xdcady1K1oeqeU8pzbwPi5OxxMeR52f6clGnt1AB4Vl60LegCtQJd8jgo
	 DAumK1EYuTTiuB5qykNKAhW5FKKXiCjx/biWea4Ivdu5ETlem4H7Th6euX8txzBWZp
	 afA92i0C7VyI8HwH7N4TW0mDFu1bthrWxR3gqNGB/irYS+J7oR7ElrjfXkN0xIB3zk
	 t4VAClJ7F7Wjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991399358.11552.5801386914640746903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c8982f76e914694dc4216ae696d416ecc0f862223a6d4716f64c5d9ec4ec27
Date: Wed, 08 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759913993
