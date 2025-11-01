Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432192D0C7E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761993594; cv=none; b=c+8HSPyDAEDCYvJx3nq+Cu5ez3uVfKd6HPGs5qACnyGaG5hq5i+e9Tmtr7LRrpyIkd+4G/5xar0qJm6txdM/rgHf8opDNBjj1hubVixZiKcur0z19PFHoSva5VYyeTFm0mBK4blSNtDPkKnKSTFUy75Mgss+r8m7g0RO7VoZrb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761993594; c=relaxed/simple;
	bh=2PEUtaxWpT+hQk4TQi/yO0LdU9hfFWzIS1z9en4xTQM=;
	h=To:Subject:From:Message-Id:Date; b=HXG92+KFJRh1cAeBYwYx5F4P3Ecrt1zyL8UF72LkZ8gQept5t2xeCG+qzPtnJP4ZOuTz69BE0AOvYQQ9eq/XzNBnA2NUfHM2vEkBEF7khH97FNl2FKV74DIBgN9pygLOGx+t3qh5iobSeEUXfmZBgT8HHSmbw1HyHsDEqZmrfWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMNckhIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMNckhIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BF6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761993593;
	bh=2PEUtaxWpT+hQk4TQi/yO0LdU9hfFWzIS1z9en4xTQM=;
	h=To:Subject:From:Date:From;
	b=QMNckhIFJGmrmG2PXGxWAJ+4q7r4C3b2JL8b8j/rkxIjnbp4oouNomIkIDh9x0W4z
	 uDUVaw83hVx7yMtEnG26XqBvIbjWu6q1ORn3X0Z0JjwQR6SYJp6fwOA6B2hQGt951u
	 cFftX21Ga/YTcy861JCOn3Ryp2qtaQBbjFu9z0c27Nr2sftVn+Gk3rNzl/G8mTtv67
	 tP+ak/GX+2I3+aIGvSI2qivXpBnEXKFbgk70cLLhRCpibqsq96PQ8SbbIObaaUKBH+
	 aTYHEnKPFBlAw2pzvfgz2BejMR5sJZVMZheOCT53M9sOrRgmVvgecNxuhIuDsYYCV3
	 SW+d+6qmc5AGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1CECCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199359360.1334.14590487638330201497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7e837b292f9d610b57d00513b5da04eedac569a89b317f4e01a3f7977a3ddb
Date: Sat, 01 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761993593
