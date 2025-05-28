Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40A220687
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748462994; cv=none; b=gsL4ed8G+Qb69WNbzjm7ohS700uvJ+3g9TG+0RSdtcVHdgP4el/T3sT+RcSxWhGvSw/kUAxUZtchFvF+ROe9hZzTJH6EB6KxVtUFdnxxcE5LuzS6rr2O4nrtGBrotMDQ2hmMbr+tVCjQAc7RuCTFghZ5+anXu/w6yzN5XuUeNig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748462994; c=relaxed/simple;
	bh=VGRh77ov06kGO5orS9ZvrMIiBYLDNoE/3G195gEvDpQ=;
	h=To:Subject:From:Message-Id:Date; b=nhE5o1f0LYyfb5XGCspRqRsCuewf/Vks5xGQkHYVxPeTnWw2bFHFTkAdrwB/HCuC34T5cypS/fWySXOW/DPB/8JaYFCxA26t7EjVvZJ/sXOaRxhmYudPWXwXOfPp8GIgbktofkR3O49jEj1U1OAgvZRt0ciJ2uphSOhm1TIvIRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3DA790j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3DA790j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748462993;
	bh=VGRh77ov06kGO5orS9ZvrMIiBYLDNoE/3G195gEvDpQ=;
	h=To:Subject:From:Date:From;
	b=H3DA790jg5KOma9EvZPyO03G85+vQd+00tq5Ygjp/QITHnMS6c09RBZN6lvwRUAFG
	 +wipmgWFO48N9ro3GVNQ8ROk0UBm6mTGr2hbLm6mRtu+Qwsj89S8uJvjXaHmy+3Yp/
	 Byt1zVDtmBU+UCKVAFMmYRA+8vAMRBAuoxYgqvsAQKD0u2aTDWIpPMloRWZfqWmStP
	 om9jJF0pfj2LV7KO2v2HM6rfb8fGS2q56Is69qHzVDtF+vELOoerz/QYvEizCsaCCA
	 wDF/g9uZsK3qGYcRS3YXmKkhvTFjt6viwtLPyCVRJCISuejMWC1wdOWi+AkRhx/b8+
	 jP5uOu1vRPDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F091C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846299357.24102.12030292314499435945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef603a0cc46064b87a6ca20287188616e569688990b7744614be5761ecdf74c
Date: Wed, 28 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748462993
