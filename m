Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343A31E847
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790128234; cv=none; b=nqI9tJovVQ3wXzJNUGE08ADcQtMuUSKhDI/4Gt2bQnstqVgZfEwRuuncsLiGkPosoxjdz3u3jHdJhCL+uKH23riyMT3wI6CEw/G8XNb+7t8OkOqiw+5/d08AmdvJWkdamF7I53GnS3ij5c7Uspl08MWon1hRtJbcqqO9Dqi28fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790128234; c=relaxed/simple;
	bh=KD259eUy1A2oSz3e3FwhFYOZnW2e7HCa5K0jt4Bq98s=;
	h=To:Subject:From:Message-Id:Date; b=HuTuV2lsE6KxYVtGBJBA8jZ0l0y1rFMc3u+shj4gh/OvEd97K1fqPOGuZ2jP16VwXKr76+9Zva1qq0w1Q8Yb9CsD9LuP7xXDWYiiKLJB2pPgTaNVEwho1oI8b41/F4Wdyx6G2UcnPI8V9hLayaBLnfPxl1nrvpa+7AGRejjKHpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9tR32rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9tR32rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59D6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790128233;
	bh=KD259eUy1A2oSz3e3FwhFYOZnW2e7HCa5K0jt4Bq98s=;
	h=To:Subject:From:Date:From;
	b=Y9tR32rGPNt4NzFNLrf4IK3E9ReDGgND6lb1KHsJy4wCsuSLtC8RHe8kAtPt9+6m7
	 c8J/8tVlFoVwEMS/7Zpt1tXaGdHpn4VbPUI8yHkVlQk8UcQ4J7s4Uy61Ot8/+lHiGK
	 909zSWYxAC5seJcf/X39Z5ZG/XLQuop+Dp6uzsRsydHDh1BuYGq/bu2WmZM2gJGvMz
	 ppdjZfYMHHRQQyn7x3fNNffGkCAY1IIGOZ5g+70FdkG7W2wBFSly32eoG/Zjd+0mkx
	 cmThN6HdhFPdW0UzDjRW/GCOfU2xX0Ck9zTgLGlxUFOaDhY3bhal8hs19iXHFzBdj5
	 wdoQleoQjEw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEAC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012823369.32617.2359311165375603578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921c028dbbe4f3577cd1f4796b19727011e4f5e72119a30d8731d54d9f7750b8
Date: Wed, 23 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790128233
