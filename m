Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9BC2EF67A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776589054; cv=none; b=Hv3DmBopzGtte7v+zuTPxqD1lbjU0+i+nMJkIIQAbM1QbsDaIbRqQelTuiEbOmZe4nBDFkc2aJn3Tqg8a8eZkS3BrAaqNt7Blbkm5kcz8t+bWjdzX7H7qk2qAMA2dP/nblX4sID4bZ3DRtBfikPScFfzWOHA8ClJCM1oNsynZvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776589054; c=relaxed/simple;
	bh=zK/VapuaWmRbEsSlsuNNXy+SUAP1BgbGNuClbgodufs=;
	h=To:Subject:From:Message-Id:Date; b=X/V5+yl7FrVnb7zdJXLtst4IRPlH1TVZlttmolF6B/Qht2RwcSERnS3r27itCafxeot544BCeZEmKa+tq1axxLe07xIb1MysrHvFQZhf/tkgCMDF1try5OynvzoBolhUGGd6VAJUwd/k4EQn2oP+70hyO6H+DTf/p3exUOwAhcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9YRcxYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9YRcxYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB45C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776589053;
	bh=zK/VapuaWmRbEsSlsuNNXy+SUAP1BgbGNuClbgodufs=;
	h=To:Subject:From:Date:From;
	b=G9YRcxYmKdnRpPg3Z8kaBEYcel/Q3eY9h4H3Kb+XrBZuXl8OCBR0i/qHjP/3ND3wl
	 S6bZUSjcNuTgLENIYNemnu+jc5fjEISwWP/AmMS6kRmMMMvNp25E50NetfsPc+EZ8J
	 wUQtm3Cm3GEkhU2wJbA6W6A5WpU7gNaNNGD8fWW6c+DnwUVDLa32Mxd2KaqGbBgnmX
	 rfasZSOifcgd3TBucS3MN25eGGW40SREYd8soH79PXdgnev4FSWGQTy+gGhCwnKobP
	 vTkxCjuIEjoGeMJLovLRe3vGuNmZTXt5EyjCs1cAJhY7yvBK7L5jKz2YQkp0/AzSd/
	 zT1SQsX3jnJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD9EA7192
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658905369.4745.8051183345816986841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb11b7d3451bcb0a21186f7a258b030646bc63d3ce30f1d80121439402810630
Date: Sun, 19 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776589053
