Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BBB372688
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773288294; cv=none; b=hfD/uLfo0CclEmTu3zebWPqSLLpdQfMZCF0JrRnRjs2JmDW+i5vfJFLxDXQf2Tt4wvVja/3s3zoISMyzTdYQ1IWa7z7SYo4GIhFB9XyuOxuCItCt8pUFn5QMBuHk67AFaRIZ2hfTI+Ly0Tev1ZQQG7aIBuFBLu3cpy6WftSx7kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773288294; c=relaxed/simple;
	bh=r9WoOJyTolBbBfegvUG9YBSCBSlFKFSzlphN64bxRyE=;
	h=To:Subject:From:Message-Id:Date; b=QnuCEsnrkM9PmWhH55ygxkqRuENSHWxir0UyC9+dNU5cT1wipxFHqkT+VWMM+QHSJWssOSol3CR6Cp+f9VepEkTR6oWhVDMZY0q36umMB1xHzrXl36BxBWNQhhvn14ISYXHBvxIHoE7t6seP/O0+zZ+gCEixcFGccjrLRgJ91YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPnMZYwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPnMZYwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A51C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773288293;
	bh=r9WoOJyTolBbBfegvUG9YBSCBSlFKFSzlphN64bxRyE=;
	h=To:Subject:From:Date:From;
	b=rPnMZYwC/+P3hjPfgiRF1B38j4oZFRCgz2J4y2pDeM90Kd0IxNMqyQIcHmEcF80Wh
	 wH+b22tmVp3VXPs50si7ApNYDKsj1GHteaeM/8hXZV9oV4RvY6OySnhE7/WNttT84J
	 69fG2jfswWJEbYt22wGb7I+wqabQYWWAS17PqUDT6JaBCy/FjXdldMo/1cRLOmAH0V
	 RKKiikwUysCF9Z+ZhmOUvfjXl+jxxDNfAwjJ6t2tRggP/Uf6lvzj2myP+d+ox87JjU
	 no0CixMUx6mvZ4iWU0IYKRD2XJL7OicHVtWnTxY4P08IibzePSrXxtWt2nHdL4CMoo
	 fB65BGs+ezXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A55FED2C4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328829358.25576.9000854485920856501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231c56a3d94013d8c54606cf15562d2a60c1405ec055922fdba5b74556bc8cd8
Date: Thu, 12 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773288293
