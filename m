Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A1D1547C0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775720734; cv=none; b=tHgfkgANnEzasWMUyGK1GhZ7EdAR27Xwpo2oUY3V9/PFjeB7CqMwuklkgPSDJayx+5TdOqGpWa1DAu4qCUhkuC9z0s0Ac+jTSim8c1EHoA1yBY8Y58GSYlDMlLcN5rkiCfhkn7etuGg/T6X/qOPkeglkYHRr5C3qqVwX81fiSbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775720734; c=relaxed/simple;
	bh=kFLW+2erZ0+sSmQygNx66+jlfSd9p3vDNJmaWDkmw7k=;
	h=To:Subject:From:Message-Id:Date; b=gQsjiNg6dgmxNyCVqzMJtgekaa6ZnKVmG4bSFjgVzi7J+V7dlDEYxF8Gd4ah0g1lwhSvryoyzjhwldndwdPlvyr/81Ki+fJPsuJVv5rg3ltH4JevFqSW9b5m7i3AMjVGKcx6rts4ystoJAopEsOwjOQWmAg2vBM6cjYJ/Jfj5uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV7yvevq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV7yvevq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBACAC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775720733;
	bh=kFLW+2erZ0+sSmQygNx66+jlfSd9p3vDNJmaWDkmw7k=;
	h=To:Subject:From:Date:From;
	b=TV7yvevqMaxRxUtKIAWLmC1yupTGt+/+o1flwLE30VMGB5jW6sF2pMI3fmVj5Uufd
	 NgoTJpSM4k9qmYlDJzxcuBdLFcf1IkifQQ8TwFkdDYz1L1XMqtVoli7vpN7y/3xEFd
	 Ntu/yluFbHYRMQLVqQswLCA9HcYw8bLxRnGqozhsJpbeBEQLYNnbhsRIint8GHaQHc
	 48hhUBQ0tUcM9kI1PcztI1xQFb2hXQ0NA7ARPbwikXW6I+Fm1q3Y/m9ofrpDYhyPeb
	 hhDT5xkIIg4ov7KeigSmE39gll84sLc35Ra4rKqxfe9Mxc9UxA7vDbpPWPpc3OQihz
	 Ypv/BA8FFH8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC00FE9DE5C
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572073369.30503.4378266410556069384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37e699691fbbe2ade13e9ee8a85e0ec118c2b050d10e7b1b467a4a7f69b78f0
Date: Thu, 09 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775720733
