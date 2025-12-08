Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1622821E0AF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765231374; cv=none; b=bFboKDMwL4T3bBrLi2iXOhnfr91mqsvTLTZUkNLrEgYU3lmpzyzE4O69jRYPjLxuS6T3xHIvf4FFxcdEZ5Cz5xB5WiF6z2UzYHI8ZiVL/1G7R8zM4hOH8jXMy8/rpzvTata39qiBef7SLIpNypWX7h4rfhKgQQK1w8Jr6ML7U0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765231374; c=relaxed/simple;
	bh=1VYnTOqzP+Cou9bGTbva3flDFLzjHt2zs6m3pARsnmg=;
	h=To:Subject:From:Message-Id:Date; b=D/Ul61JhOX6pVxSkI2KBHZ2GLCcCn+lRWqIcNaskqNxinaQ6H2aR6x9LgUZ2oVcv9Tl7lCyvKNvDD0RjMNLJafRA0XMUYsUsTNBtHVnqparKBJcmx/ZH4Bei9342DrJpoCkc+vjWsH9yiu0wB0fF+n59so03AqH1QGm44BnI1Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZUKZ8gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZUKZ8gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B23C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765231373;
	bh=1VYnTOqzP+Cou9bGTbva3flDFLzjHt2zs6m3pARsnmg=;
	h=To:Subject:From:Date:From;
	b=gZUKZ8gZM5bODVQ33x3M6/V+xEPnZsrO5VvtA2puDC2IAZDULISoFIfpu1oIT5QEF
	 g5GbzVacThucaYkfU3xmR/89rEA7LNIMQbgB2pd5SQ2RJ/JC7n3WE9tBGA6w/hnb3l
	 JJIGFQN0GAlyjQ7TNJgTKPAtv3LtEgwsJcndqiiXDoYIyvudHQqlaBrQUeaJZIn6ZT
	 MDVwTGVTptM9/6GB5AHn4z6a/J+8Zg5tUXvraWHARMgNavRWnosbYSRypAymHUy8G6
	 Phmmypv1WYH47hxdbZV8/5/7wJXGpRAjUasPM/aHx4H0RvogjixucMaqqVnyjLT0FR
	 I0D2n8zGxvZ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91412D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523137358.6098.15496307161173101482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f5fda9863826ae62bb723a1e6a3090a4ecb78643d424e38df5f1e0139affab
Date: Mon, 08 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765231373
