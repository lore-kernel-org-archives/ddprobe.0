Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA6C1C286
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713822623; cv=none; b=cbOfnXSHBQ4/YVfxpoyv1TggInomQS4uYkFnAJJxcGUF7e1VB5WqlHm3Btdi6REtIt0qzMbIFUwthb3d/3KER4/aec7++03i/CQxCzhixUxccjqdxtxiEdv0wdAfWNvOXwa/PIVJHY4PQR1UHPlFT/B419quFyawXX0FLS2OO+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713822623; c=relaxed/simple;
	bh=ckLcD5TGVrdNPFu8oQhJnAk7AWVlegO5iALXO0fjAk0=;
	h=To:Subject:From:Message-Id:Date; b=ZLx6bHgG2Lj78kWwfPydBNv1ZWMaynGfMC8HDd7yp5y98AqIQ1Dfu9m+2m0bQdebEqY2LOqDknvUS/GGK9mFbgTbiTZknkvaT33TZMTf5mq4JhRlbHGlMEIyCA76GhY7YUU5T4YM3Dr96ZScMHlD3KTBHGe5LJq44oU3wI03mtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFvBiuX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFvBiuX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9728C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713822622;
	bh=ckLcD5TGVrdNPFu8oQhJnAk7AWVlegO5iALXO0fjAk0=;
	h=To:Subject:From:Date:From;
	b=vFvBiuX0SRRge8jBFyubVZA6PRJ8u4arQnc2Cu4A15QHANApw/xxH4eslAkRZQC3J
	 l+a5QcjzvpzIZao/VDAxbFTNaW9EjVFiqUNLooBPWpebMlVgSQ5eD3cUlfsyzoLiUi
	 vdmTXbVpV0geRdzwPLnpJ+QCV8JK7+Do0Aj/Bracg2Y6Mdan3Z6Jzcs5HhpGZMlc05
	 wKVkLT9SaJ4Se+rGaECfFL6yH/y8zRNQIeW5FDzd/fQp8wBEq+L+ZXseuWB98lEpbp
	 PzYZd24d1AtxCuSqog5Jg41h86mKNQnBNOUOZf0JXgNKFamHvkuxAbr/rLBjcN8vXl
	 Z1Oo5fWelB+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2F8C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171382262283.25818.15696681503144909046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29afd42b72c778ebbbf012e157e199715f0314af5374320c231c00354bd2128
Date: Mon, 22 Apr 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713822622
