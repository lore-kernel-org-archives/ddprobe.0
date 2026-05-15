Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FFF3672B3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778886634; cv=none; b=tbpwRDaLp+JydySTD6j958BjR8F3PAL9eL3jxYPJC8ujR5Ocwrz+GXHeWDkdcLteYLM/FRdoYzngCtWZfdIOff6bqT2fIDzFpDbM0IoSuQ3ZUzGpEWHCPEx/CLFt2MjeGFbiiTmJlyppKRDKK4gVlGTtMgBGPjuvWo3X6pM9SXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778886634; c=relaxed/simple;
	bh=lVbni69ln3oZ5DVF7DvKn7LQ+yZZqSJQzTqIi8iUE/A=;
	h=To:Subject:From:Message-Id:Date; b=JQLaJS5Q54klbivA50GLkh65Ww4BpqqG340Cip1VP8/ycJoO/s4eI+HR1xw8p/m885q/AQHT+YOkDR37BWsjZr8dbdQUVt7OXeThzFJXWAKy/MBA3jD+JDLhx+Vnnl+0fL05Gx110zZRfHV9pSRXQSj4uwSzqrUnOCBFAMYNm3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWHXh3ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWHXh3ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF463C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778886633;
	bh=lVbni69ln3oZ5DVF7DvKn7LQ+yZZqSJQzTqIi8iUE/A=;
	h=To:Subject:From:Date:From;
	b=YWHXh3kaTllBzJpKuJs+10pZDUIDyGR13yHaR2FPL70a9sK9aMzqijx2c6UirbyNe
	 vg4PJX4/5wNN+bLYcxDUKdiTx2xXcc8BErQ95k5BTo2sCMj9T2LfQw7KR3fhnTBUMC
	 qgYVTrnzbguz60UUrYY53oUDaZnU45y5mrzBUKAgW1mASmw4BKhDGq1g6yboNVLsMY
	 7QVWUYL4Jic7FSodIxC7TAczTZP02yJtvI06XzNzQZd7EwzELANLH3m3jdtIYlqeJD
	 Bu/iOZ99wBJzUgVF2JzkkKnTnELzXO+oCoUvpDcLMcsEV/rFrozQyUyO/E9MMh0wTt
	 6wqbpwKuMe/HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE216CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888663368.8810.11336254323312205687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9dcd1810dd2a8da5442a2450ca2d568262e40b3ddb0c38ee5c05f025a78db7
Date: Fri, 15 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778886633
