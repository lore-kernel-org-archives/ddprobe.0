Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF077260A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747733393; cv=none; b=gpwV3wthrH1p4UybL1UbdCbkBfISyNo66r1RoNmCscuHWwgFhumfkZOX+SLJ4KZ6OI+Skx35Ug85UusQk7mCnGo6iyaH1s1ZAzNk8nQF43dSWPVTpHWrigC9iaIOIV25wLDM/jJt739SxsYuyj0Ty4j582zYc48J6yOMZDAElrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747733393; c=relaxed/simple;
	bh=6GpXKdFwBsIELu+2t6guhBKIT7h8f0qP6t82yaVG734=;
	h=To:Subject:From:Message-Id:Date; b=g1Jih9QCNlVKYb2ij4nb8OJ1zS+o8BTcU/WCHGrvFTRvsWsvttLv6jHRAHQEN4MrRB7E1rVnr6La1k9k2Q+M7HNeskPQmF9HrPurEM9BVU5ITVFOl6Is2op9ABR+1eFpd9+fjlwcJBj5O9bHmyHH8+f3SJ2EXS+NqpsiMhDJFoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6tUPwsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6tUPwsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747733393;
	bh=6GpXKdFwBsIELu+2t6guhBKIT7h8f0qP6t82yaVG734=;
	h=To:Subject:From:Date:From;
	b=R6tUPwsm/koRjnli43rUSbQkh0+lmhet8jgQOpkyI+TQSrHnEVbeTmbkDsfWm4Icg
	 T0HYjiC18ZM8Ut+RdJ0SBxOUQxuZffz0EyoQVG2DgS+UztCvP/40UCVGGyc/L4AXGi
	 oJjNC2imVC4Gmy3lTOtYIE6F4zv9YrB1LWF2tOf/rXbDHEJAkrpDU5/AUazJz2Dcbq
	 yJGe/1dz25qjpXLZASmGMHRHMvFlFnjF38o2mlPe/EKRVVQTftnwzg51nXzqdQuR7n
	 Ju/YHA4EMpg05hk3LK6OZ+QQID7ucptktEs1y4M8qofXHKv+vl1LUE/zd24PEqdBsO
	 VX1rflhWfhqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28EC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773339357.26562.14099295969394107906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c000b9c9e998292359b75b497d8389cde84388b5e724e41d81cd1782f59748
Date: Tue, 20 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747733393
