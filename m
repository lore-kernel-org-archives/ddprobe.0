Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1CB4963BB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789048834; cv=none; b=LDft/QoYmS86v2Meu52uFde6xhdgFGGA/auHbFNZLf3xwzy7UgRbSobFdQiV+MoOnwz9bcrogxZY9jZdipeDk582O7pWiC6So87M7RleZZ4rRYCEfIYGjABJMJqO4wk+w94PMwmDLRP95L0b9imp6NYhIoDhM3uARK8MJj3vXWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789048834; c=relaxed/simple;
	bh=OTnogqcrcCWk8aSaDGXUrd3js03hrBk4M3widV4L4KI=;
	h=To:Subject:From:Message-Id:Date; b=TNy2Z7VPDKM/o3KA8cUdRya1k6LPeIWlGDcjRgXf0Y5fIOx0/tyoWCme5bd/jmWE3L5lRMH9LqPn+i7yGhzLnBNWisAoxJ8jJjkYPmgWJk//zBtlXWdy3UOVqQglq34zJhNlKsyMZnMzfNBlaXuDRkMGifGdoCvfoTdr3fSoeXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxCfw1HB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxCfw1HB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC319C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789048833;
	bh=OTnogqcrcCWk8aSaDGXUrd3js03hrBk4M3widV4L4KI=;
	h=To:Subject:From:Date:From;
	b=nxCfw1HBgPSlelh5EIXE3laiEIiw+KnWLjCn26v4LRR5zNDR5FKoakPrT9GYlrmDV
	 RmdoBw4A9JXKhpJ6xV0K9Z6c9KPrRbxN5NvvielCFd63NSEysI5RN5Basy8HHg0ZLD
	 a5KIOy5ztMIGctJF9TvbZzOeQMcqghEDLyxUgtL1klR9PeYqNlhTvjv//L2z8USjSX
	 TAJK29fSOd4bR9gpoA8j/ArxNUJRHZ5EyuN2pFD1yS/h0KTvov3AYT3QRM/4BQQmxg
	 FgWzCq26htpyiZ3lF26Pby38lZOVn2T5RmZT2qbdgzVVBKT2nl6fkvMSAKfzpY+xTJ
	 S21Desg99PYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A3C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904883368.19437.17323369361125489698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba277bfaba09665111c3d0e5c364afdf25f9eb2b1f7051d89b469ada18f10ae
Date: Thu, 10 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789048833
