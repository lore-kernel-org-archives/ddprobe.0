Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEDE2F49FD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776577654; cv=none; b=KVmWGTHU1IVqSCUrKpCFPnhNnNHNC2/5CC2KAAR9bQmZAjNLOyi8zR1jL9acMD/VF2QHbICLYo6yHqQz78yin3GrummWiWfDdc9WbPhTfyh6evjPhuT3vi0TSuk2cqaEAHGebtLy4pedwHjzxKy/8xw+0nj1Eij1lspdBm2E7iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776577654; c=relaxed/simple;
	bh=S/mIsh1b4PdXudvYqXe1abKvtQHwq/vCAZiXwZjzTEY=;
	h=To:Subject:From:Message-Id:Date; b=JSigpTNFCgRH2gSpRvoyaOmfqVCTgqds47lamv9KyY6CXARmDKT0W9jzih5xu2+Weap6cSpI0yegXfCsdBry6IYmEhKfgfGCW+HAWDwNjZ9JKfvK/kMQD2oldD0WoweFInM49b4uqNO32g5gfL1z45P82SRAtTPdhpA33EpetGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn6PTyrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn6PTyrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEEFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776577653;
	bh=S/mIsh1b4PdXudvYqXe1abKvtQHwq/vCAZiXwZjzTEY=;
	h=To:Subject:From:Date:From;
	b=Tn6PTyrVxf/wQmcuQt9WRfG/nk7kfw8GotNVFwJY3b7/hy2dnsAvyOO+GVSLAFhni
	 FgaqNPy5zDZJn7Lz+2pfjjJLVZ2hKZLWrcSIwBgq9To4P+v/CU8NIXMOgpFGhQoeab
	 3MgXCqiZY8huqEk1ytODxCkxgX7NcYE+HuVSV42IW2ILuSBDBux0y+CR7CN31cPZgQ
	 o5UL33QJmkZoR0f8x1DiYbEAf01ndc0tM1eDE0fQJJMO50j/7XS7upArVNYj4U9hgU
	 1sgwCPNEm3ushAfK7RhDYWT2rksnixPys/F6n1UU5CmqNh6EGBeFuopkJSUpXP6633
	 JCjebFq9QiRiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB18EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657765369.4365.6716109185786630302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1febba8d44a01421b90f8c67f33ed588004d1628b5be87bfa3899a13aa20402
Date: Sun, 19 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776577653
