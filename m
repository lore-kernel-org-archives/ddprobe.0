Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4892726ED4F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784926834; cv=none; b=kK8VumGOEc9WZ7PoeW55PJZ2CPf3Ftk278l/B98G2d6bVaaDm7UgudolNrx2FHAahQPBpvqVlaVQ5cjVkIO5enHOSwKj+YoitSQSuUcu+lasCV/y/u45slQr7R+UEvIjeXuPLB6kWPxxk6qABoQgVNZV2KLlbEJyu5NMvH6xbQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784926834; c=relaxed/simple;
	bh=YQJZNFCADKPE5hsN8s5Ow/3m5pcIB3nxAP+9+YcNWxw=;
	h=To:Subject:From:Message-Id:Date; b=imedKS3JF08MmhW90P8CGQ3KM8oBXDtz14bxVjRPzMgIZybUQwzBYe0OBmFwxXY3W4OwIxdZIrMMrljbu882t67cF1XXidR2D/BM3Aug1G/SCgCk501nAOggOQIf4gwrXBgxxz66ra9iZ8I1X2UPBBob7i00r084QuppDH0EEJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRfe27TG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRfe27TG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64C5C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784926833;
	bh=YQJZNFCADKPE5hsN8s5Ow/3m5pcIB3nxAP+9+YcNWxw=;
	h=To:Subject:From:Date:From;
	b=PRfe27TGRe+AQLg21EX5My1Dxu41uKGYF30gbeNJzh+X0mlVJBZfmyjxH43ObmHRr
	 h9mslpQhkYN2FPEZ3aJlJxo+Qf9G/BE10ZCqvQq+jlWMeRYnfPYXNhwXYt2SfTdZAC
	 cE97Dr2RwN7I0DiO/Ctthg7RNkFrj5XzFr9kS5b2fW4Il8uMA/mkQPel9RNwQ5uc0j
	 KdRUPbvyXp+/VWad7Ge8/sBoFN8QQeJlcYDcc/Zzz+1R/UnfIFa0eDWpiCooMm1tvN
	 oMrP6cGV90xPz5Re57MxI0RpaWjxmQpG10nKOGmglHH5LRtS8vRzqVGMU4DJ7pxH6/
	 /nYKQOppBG05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E4C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492683368.10356.3661815016987016838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0519ed44937c20b6c48ce63ff57008fc5f16f9911868bfd9fc15e5e810df7782
Date: Fri, 24 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784926833
