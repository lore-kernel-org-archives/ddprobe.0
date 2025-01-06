Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C052146A7A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736135154; cv=none; b=UXwEnUkWJ6kzSTO/R+t6jT0KjTFL5ZXiZMwu3G4cBT70B5TU3VWGGPFQM1DnsLVaprbB7WLNisoK7R69XtEBmeiNP8zx900pfxA/50BoMyRYxnROdeVJABuGJCKixj8JryVqQOcGu917FOtmwOSTt3ZAKSTK4TdAw0mul7RFK4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736135154; c=relaxed/simple;
	bh=qJ+R+N1ZJX4+emKhi4oL6kqu1wldchDl+BAXoVl2F7k=;
	h=To:Subject:From:Message-Id:Date; b=l9/E1QgwDGTeYiI9qvAuS15uCvOvJPUc6mYks7kafxzhObzRVFYUajsUL1rEt1NNqBopS4tliq9Y5D7k5Tp+twvTWVjSbLxJ5mElzOtvwmbYxrcRpQLFhGrLNaqEo2UbBUNhMCnxWjMIQ2Yb7oIBCr0xKcwL3a1lzqy9wyWN6I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/MTVdgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/MTVdgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6263C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736135153;
	bh=qJ+R+N1ZJX4+emKhi4oL6kqu1wldchDl+BAXoVl2F7k=;
	h=To:Subject:From:Date:From;
	b=f/MTVdgEd2a31kkyYiIO0ymiQlIkh7znM3lQR7/vCfCgtHAZq7Nv5gs1ZhcAbfOyT
	 Wkc9cQa2jZidHYipoj7spb4xF2GBbxiMtAYhje601q+42itC4YcCnzQdL91kIO3jEA
	 1MdyvbzPS8FwjGcnmTCLynru43X6b54JZCHRjFJ+HlOyFNBqvDlFCly59vJ4TVGBYx
	 874F6VJA2B3UAflmdWX5GwHSfNut8Jnb46JqxsCc7X8OSdsU/Uc5gfwZXEmKN6TwxI
	 FHI1ZMW/FMByLoFda7CBsNgFBDykRt79Sj2JoI9E12Lk7X3nAkoOvwfh1f0r+vCwwX
	 RlQ/rrroR/D+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92482E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613515359.2481.9569444982728566976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5079e8ad2d8d014c0fc5de748a3b87a1248c0a03a1236c5068da45ab8539e3
Date: Mon, 06 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736135153
