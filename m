Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E45C23ED5B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787137234; cv=none; b=kUfonctLB4RUxiUYVF4oz+i0idgwuJpTZ0XsIVjSmGMLTZhcQ36ENVnmWSRVeuiAxrcFFZaGBEvPNpuAbqfCC4vye5YZkSiz16uQzLySgfWOmOYQ8co2R/5EAgGMw2/L/IIVRX6G6Kh65iWm2QKYWPZLaO/O/fGFzasSimQ7wzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787137234; c=relaxed/simple;
	bh=9JhyS76gAY8soPZ3dNty+HPLWvVHevLPqNdHFoS8XqU=;
	h=To:Subject:From:Message-Id:Date; b=kx9b3NNHPNGM3Q3RvVOG4eYBmHxyB5tA5uPQxsVA2yZ7ffPssipY08V12xCLZVZJP0O0SsuPPebwDH0+1/8Gbe13lzTRm91zGXoFpMFgGoTUafSA7qL7UQuURMnDdfy5OhhR/gSIN+ViLd4U3Lq6Qy45z9otgLIE+WWrx6ZzkIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2h9UVq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2h9UVq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4502C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787137233;
	bh=9JhyS76gAY8soPZ3dNty+HPLWvVHevLPqNdHFoS8XqU=;
	h=To:Subject:From:Date:From;
	b=r2h9UVq0Ak3+sqcBSrHTDY7T5M6st+Ef6cnfKCZVE3CU0AIZpRb8RbxHvxgOcduk0
	 aqNtI2TOR2A12opJZVMzMb0stp5Tuqe6m/LY1tdREfPV5jJD70Qu7Fg4BKASAC+CMe
	 NOvA0hCYGA99RhhH0kZ7nxQ8Zfsl4CK0fRALXftielTI94UvEeF45ntPv65uK/pBcu
	 up2jvm6oROd5il4jBVlO134eMXh5pp1rkHot0JmkqFrH391ZUNwTD1OOHgRogwZ5NP
	 w322zU3VgYznnwNFOOhDQM9AGYMMXYYL3/en9kmOcO76FE8LJirI9BhFiBmLBoWn8P
	 GERi2usS07YQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF6C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713723370.29804.908089744282814457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b59db67456555f4a46eda8c38b39de9e9dec41283d2ee3377ac8d00c70377b
Date: Wed, 19 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787137233
