Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D48037648F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787388634; cv=none; b=PCPXKsuwJpYV0QZ9kgmgJf00eR72tNKCLUdDBJPq+ob6FDXfBMWLfaPf0W4+LK00JgxXSyFndy7FyP6gFgJo2eiPPJYLVCUWmuxmvSTp7J0Onmih7fSn7qMqeEztseKhJLcIJnE8z3IKK4rNvab7uv6TMO2oGNxglHwdixzOO1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787388634; c=relaxed/simple;
	bh=S98MuZQN9YOOl5eJ0/vvrK2jwzzIRIIiF3A51YQ32zw=;
	h=To:Subject:From:Message-Id:Date; b=q606mDT22SrGskqSLZi9ubGiJo3CRufEStwgObMliMpZ5Wj9hjnG+/Zm0BTOeCRLUryCkurS3J0Tkx/gbQgrz/pzDQ9MoiaGen87Y2rf2y96b0Bn8H0xkltBatVwt11jTlwUK4oJERsVa8fv/2pusPF6QMaS5SKhW+afIWFMQ+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5yTFSUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5yTFSUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF953C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787388633;
	bh=S98MuZQN9YOOl5eJ0/vvrK2jwzzIRIIiF3A51YQ32zw=;
	h=To:Subject:From:Date:From;
	b=P5yTFSUIFFcZQ5a3+vDuSOODrTBrdJSwJ9J9zu9v30i1NFifF5aKccejrPeCi4gp5
	 kOfyOBkZHI91cXOP9OTR2S8ZbrneoT2xkVUy1uBsh7qDQnkekEU10NFNtLR2fbVVz+
	 mWFyHTRgnOwPnna5ppXezFoXejt4GtkwFlq5yPR4UIHFo/4mvEF4tbMk/xDUp0a6QG
	 1eM/X+agoyZW1UHQcXj9elNhX8r8AY3CQG1TajiRNmGNiIrlDAcdfbehMmAf9Xztpl
	 CON78NU+ytevWvqh0NH5QFLG92Z5jO2KuBCDYBC11GaV+9mhwm2xttWGXQLh+9tTIQ
	 gdwqthX/vBmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6523C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738863373.21990.10982142444963536990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1778325383341a8fabfb6625724052a3d26c546546305fa4e79d9e499a814947
Date: Sat, 22 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787388633
