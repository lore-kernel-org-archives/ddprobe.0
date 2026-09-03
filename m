Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780703546FF
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788407434; cv=none; b=iJYe0c6u3qgynfCx1D5hugOZwkfCQS3Ms3dJuWRSeFBgVDkS7vFsopQsyLq7UODchIC9m5pAM0Zp6MOb19QSyaxBWOmdzmnIaOCS3mirDpC31onT3aEGieFjrJFs8K4PeLII3Th6RE0WKAYLZt4SnHGhrsPif8lR8tZB8oopNxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788407434; c=relaxed/simple;
	bh=qxumQUse+Q7pZxGkpf0+URRPoOtkzQUFLUOiphKiyIU=;
	h=To:Subject:From:Message-Id:Date; b=TtVO35bmdCLofIEi2ii3LUurE0nePdS+GBDP11zHl0gxpL7L/Fhuf9ZJt2q8GB94g0UCEW97v3KEpMa/M0s9gHH25LNbPgip+DFOPWTbIXf20+5TgZe2EzaNZF1KN1Fr1+Ksfanru/oklWCCgHBfTVslnDLM0le79crJfXZvfvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMz7iD8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMz7iD8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D624FC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788407433;
	bh=qxumQUse+Q7pZxGkpf0+URRPoOtkzQUFLUOiphKiyIU=;
	h=To:Subject:From:Date:From;
	b=iMz7iD8k2eAezFuJ/zi2qibfeUMddqvIlXDNqufW/GPHYfpKDvIEMPW4cj7ciRrDM
	 tOH/H62Lf5KWC1quJy/CVQ+b7SWLVdYAzq2DQlTnKk1euMwUGISAJ0lkUT3yQ4LW/k
	 9fEMyatfSuepghQ3CTWyZDYdX+p5Xb+R+4zb9wD8HCG/H3bJ9S0mCzEHx5/n1Bmvl/
	 eUxDdh6hC4Js0oaP7fWxf4jRvBug+rgTemMVWzc9ac54P5eE6wMzbGC+bPLPwtlp5L
	 5P16L89DaW0NqWBjilh4LqJ20W0z1FBdA2LDZabQtFcPIg5VH2kjzPLpiTO5Dnc+QP
	 r4cMP2rANg1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B285CC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840743369.23309.3127335806919251383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74241132bd6b515f477560d008799a310e7d9a1282f54c3032983017f88fd3f4
Date: Thu, 03 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788407433
