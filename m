Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2580F45C1C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724879755; cv=none; b=Ir7QRKyqZrZ0zuZRWr8MiwgREPnh5PnMjBmN6yMYbHkH/2hI4ulS4C9B4/LCuoY2mJNa/VXNL7suqYiU1Di2sLqOoVS7r1M/H5gVrssiSsmgkBhNAo2gjiM93Ah6jtnKOzrATDGak/9yJC6rYWpe87jZWRvIA+4fKwObCj92/3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724879755; c=relaxed/simple;
	bh=s+GyHz9DHIYJhaM45pTTIhmgO1+8kkduz8gm2NZuhik=;
	h=To:Subject:From:Message-Id:Date; b=fH0+4kC0HTay01FA60u0SNBSIPr78KrI+FIYXiNgQWA5goGTIuweKkmY5s1RyEZuxfHX1Qwq6nYlEdp8zgPAuuxvtrIzBMgyMbmdMcpCXBq9vnEB8pSi+QMc3OLgkQt/XMBRgU8/lKxcKloQXRtQyjP4PiVBMAEJZcoyvhQVfNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyyDF/F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyyDF/F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278BC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724879754;
	bh=s+GyHz9DHIYJhaM45pTTIhmgO1+8kkduz8gm2NZuhik=;
	h=To:Subject:From:Date:From;
	b=uyyDF/F0qPprQYvDABCqPPTk/IWTCZIBJ6RntwP6kboll5gs+CCtgPAez8J3x1Un+
	 f046SZg7CtrosmVftneJYhXyPDN7gwzZbn0OMZKyhVMDdUKmKXC8DJ8jXjQT6ECOlk
	 IDu1UcrHZXoS7A/Tk69iNXjx1jjDXG03bOjQt8HeRwzlO0/WmpNd2iipiKslVbRLcM
	 y3IQUr5LqtktAsSjxGWR5zMG1oSxa3oQKo8t8+1EcuYohCATbCpTJdQ4xbkYhM4hxL
	 pDn0RELeDp11VXufSW7ulhB/z6ZGOaBxvhnrcyIsmrcOEH61QY/eHeeiKqfKbF1sxr
	 ciND0Nu3UmPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A4CC7113C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487975359.31221.13615721774482847399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d96059f5030dd188fba1efcc6dc5165de3e49df12821e662bf9e2f0aa988fd
Date: Wed, 28 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724879753
