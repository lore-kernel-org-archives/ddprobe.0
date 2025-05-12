Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8BC184F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747008594; cv=none; b=BnEho+zcBMev213b550YVqsXZolB5nnHvlFHs7CUB2DtVxbNn0TKsymvbSPQctb9amvujDee8I9hKik35o4F3dJ56hDXABSBEpp4i6jXIzlcarV9/rYSmSHc5ru6mTs1N8Jnabqnf9CmzFmsx2Ot8reztB2+Pb6dwNYtIVJDc1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747008594; c=relaxed/simple;
	bh=WvE/ACj/7QYSRoJF4WT+IcAEoL5mHeda1nTvA3A2/Yk=;
	h=To:Subject:From:Message-Id:Date; b=faOIhyrYVg/FGFwU3VF669Re7hCPHmWTL0bMH+SFDr6YdfTG6XZshtD+1fcKMs2aVFul0RdtC2ABEqJc1IZ0h3sHqKi76c1cXs7kUNlEro/6yHnhWAmfKQzjkbq8QudxPdCGI0ZtxsN9bitvbXhaRfkY0vpzVQu24k/PW00VH/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZbgPbYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZbgPbYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747008593;
	bh=WvE/ACj/7QYSRoJF4WT+IcAEoL5mHeda1nTvA3A2/Yk=;
	h=To:Subject:From:Date:From;
	b=DZbgPbYqdNjTWbvvSjfpwJSWxHPQlk+LebZGUtKTWBxlKXfOmlWTH5GFedxSDr20k
	 zD4nxyM/iaveKBYCZTal8t2BMPaMWLxflIQMNUJnrQmYxAKJ2dAblZ23rXyveFobOG
	 nyWWSbZETpZ1tHgvYB0W8Crr38gnF8xqjEUHy0UXB//7NeIFIp1GKE588hLw5Hy8oV
	 eyGPM3P8gLWh9NoLgkCEZVBn3H4w2RJIQ9QE+rn121F8M8aAjXrhHn+ygjHaZtKsKg
	 IiKZpZvomCCNpHBtmnJ55zRB6+OihGjoeVAE9hSa3vClIrzkpNPIi1SrTguKG/37lU
	 64rgBrOgMXV5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97435C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700859358.24018.16840065772407400985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3898b19301e390b13e230afaaa2f86aaccfb1ad2ae430b4c68d8e8ce85fc4a1
Date: Mon, 12 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747008593
