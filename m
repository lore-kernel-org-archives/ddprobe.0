Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A519286D4D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784043514; cv=none; b=C44bmpYRT+c4NqARoLGM7vQtxUcEkfMpK6yFxsBerPVfTYr9auTIdJWqQdz/srW9/YzPdyxZhu78Gth+YecW5khupNbONIgYNgbK1gmt2nv7W0ZxtJ78VOJxgE9OaFEtpnmAgi48A9xUmDSY7rLiFU9rd8UNYZPHc842/FR9zUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784043514; c=relaxed/simple;
	bh=yoEiPFF/zowAuNrvjfxPbYDKQ47TOHGKXLhrHhMlJsY=;
	h=To:Subject:From:Message-Id:Date; b=Dg3M5HlDz4y1zu6LW2Fd+z1XfdUWeC19z9Mbzs6VWg5GM/84T/pr/pDppaPxP0DlxzcgCUFSWhFuEcEwnHbpGcGFvANCNaAEL4pWY365RxEIZzb5pWP5sjIg+faZGYns9BmG6VktErFp70rn9GlnmfwSCsgGLFDW/7SqxOM9Ro4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmtS/H4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmtS/H4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3012C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784043513;
	bh=yoEiPFF/zowAuNrvjfxPbYDKQ47TOHGKXLhrHhMlJsY=;
	h=To:Subject:From:Date:From;
	b=fmtS/H4bmqf2jeRSd3EZufb4HG6wTa1egKITL1IPNN1dRT3ik6qJDXFxnMIwysYIZ
	 +LgDHupRqToTKnE9U8s53Bp3M0voUOmFfEHq0HiHddPrGYweK007Yw3A/cox/fYJR8
	 SdVJ2TPjZu7L52y2+8GLnzHFufN187tnqZ2w5Gfc3viS95s1lAtPdEUPsMRG30jDag
	 z1NN63jIuzRRCGE7YoTChx8qGY/pwN5PUrNXFTdz5RvV/Zhz6B6s4ZN59tktgXJBF5
	 SnUQJPJYEptm3XwrcvgeGm/oh/R58LxUVQqozIHrGuUd2Oz8jkgR4Gsb59Oyf1+Rc9
	 3bKSWdwdxsLQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB58C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404351370.21112.5280022947748315355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bedeb62ff53a32b3292255f4e0733dfaf4eb5c9ef9e3e82895f1757897ba2b
Date: Tue, 14 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784043513
