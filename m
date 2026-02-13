Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3459A8C1F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770960294; cv=none; b=EJO0+q4ZExRa5BTtCZso8crARtqjv9xYRl1RXK65L9gfLITLXmGbfTl9W0JROK7+2nll3WrRvVrWOaFIcjfi3dNtPciGFtenlnHuk9PTPNIU9B4pufmJywXAdWXtxfG2SNcRJX1m26Ihr+RY+lX2ssQko15stPkir0WtIeuZRew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770960294; c=relaxed/simple;
	bh=q29JTq5U/ca8WMHTStUJQqbbbTn/AW3+i7oz6qyTe+w=;
	h=To:Subject:From:Message-Id:Date; b=psNGrLzU9e1qpeiRaHsIxvehgS1h4mY28DFpGEDT5hBeFlkMsJ8JG9E1qWHKRnGKoYPJI1KeiEk2IH6x3xAx79eVRtfR5LqxnCPb6ZDZ/0xRRcZeifyFP097EAy04Qsbzy4c6zdvLqN6DA396IUJfPQ04/4r8dZe55csPayOy2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtYKRXzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtYKRXzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E00C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770960293;
	bh=q29JTq5U/ca8WMHTStUJQqbbbTn/AW3+i7oz6qyTe+w=;
	h=To:Subject:From:Date:From;
	b=BtYKRXzYa0XWB+EZL2VH0TSMnRIxoRAnG89fzyHaZlPuB0X8ijC9kDvH8PSQzXOHn
	 YhXMmWKaT60Fu/Ny9e2pniL/6XyzLwk82InQEhLgNRNXDpJMr/xy0zhdQLX+xFzy2L
	 d4LboP+ItAVCsWlAy8VaCUuLCosAOQtGhmMoDsgnCY/omgciUwlZQZ7H1twO19YTJw
	 r6c117qEvLZAKQxxnVbAexNryB5QF8FngIw2MmKRgeX45TWEEU3VFL/el9lfZ1zfq2
	 acoYlJVfpWINhv65gNGrwilsfHetOfFKxLH/tRfd5eM+e1nqwRE8rnBT4PxZpftHJh
	 vgxQAm9kDdfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30AAEF48CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096029365.21809.494581220944691605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30867d20d863823ed952bbb81b0b6dd498044106ff9770b6d4e9ecc1ad92140a
Date: Fri, 13 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770960293
