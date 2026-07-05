Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3969C2E739A
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783275514; cv=none; b=cPiCpzi433WIQiF4uVS89dhnk/h2rs4Vf/Jhxa8n4xljEUlYhI31JSgRpz1MN3H/a2+MZmbYazYO6i1AiC6K4TVPQL9X/Eysd85jjpBJ/PSiefqqdPCbTaoFy7nMpwy/ClfnF0+Z7agQGOvjh8W274jg2V43WP5G+UglfeiB25o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783275514; c=relaxed/simple;
	bh=1566YhIDmtHXqvKN/LOrfpokrlI+QHPopwzzLGFwZfs=;
	h=To:Subject:From:Message-Id:Date; b=AKqcRyOBh6cjevOZZngXfzjeIMbYBeRzKwIcTS7uLzfnO/XJBeO7eUSYLOHE6HDyjKhsaLc1YklfjN9LuxLIDEDtsTOi6zjwmng1FJ//NPCJNBr+GnBJzYeO1rtgOJAAbZdw6/6i7yqGDF1kBhV096d4TRd86YPuNgzRdm1pwVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4CtaHhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4CtaHhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27A7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783275513;
	bh=1566YhIDmtHXqvKN/LOrfpokrlI+QHPopwzzLGFwZfs=;
	h=To:Subject:From:Date:From;
	b=g4CtaHhEFyQLlsRv/6i4atB73guxC2LEcWeEVYDgVSVpB4vp5gySzyEXL10uCjmE8
	 Vso6cpIp/HD+PYiCMpteq8/Dn3Nz2+snrl97vPyPt5Qf7HufjzR9rySqFFmE9iRlpW
	 toGaCHKH/ApipudY+NlhvdMP+GeKCBkWoQIFmCMkz6E9TV6d+gioLF+7kB7EcFa33L
	 Aj/pwarV7TfGM4RIY8dC8BLhIiXuJ93aT07JGHWlx8A4bQxA1r2Cjk1Cwew/AUqCgN
	 8XvnZMybBZaBCgXI/2oiHc+wltcCSiTFlfYz8jtvFnxNlhscWkpL44u3a5lWk0/bQZ
	 4Bm1WstxT7Zag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF021C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327551368.22964.13385740768917169712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f6f2d3068f2a4e9605ea3db49c98c5789b722d0fa2eea76d4382116d4c5f03
Date: Sun, 05 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783275513
