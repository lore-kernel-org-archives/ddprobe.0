Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337982DFA3B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744696195; cv=none; b=nDps+SFmH2M3Ve5qeQ5L5s7S3Ow9XA8OWQOewp5LQweSW8v/bavCYp6+hijpZ4TZHlV8aehXyhdXhpnI8u2rOnCEJF/fPaafA/FNxoiQBLtYsltCCaY40uU04l6x+Jr/+5xm+QZVcQeDfYNIPEAcvc65NW3yEiax1nPBSCtID0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744696195; c=relaxed/simple;
	bh=HVpre5E+5j7q8P0bV83OisYyE0nc32AuylsfwyG6LOc=;
	h=To:Subject:From:Message-Id:Date; b=aPO7+svLzvdoUa7LMZXg0cKgpod4k7f8AxGYBwxK0MR53xOwFWr8CINLlirpzkYZHUEyvUmMPUouM169VI3bY4dxqKH6PuHEhxKNZ38KReGu+T9EZJzZgtEMD0oiko5cN3Hm6r7srEtc08szybJpKtoD2fc+YWBrPYLm0DiQz5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqXxa9KG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqXxa9KG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744696193;
	bh=HVpre5E+5j7q8P0bV83OisYyE0nc32AuylsfwyG6LOc=;
	h=To:Subject:From:Date:From;
	b=TqXxa9KGb5lFsA+TTXf32VsAPcY6hLFJTm8E7TPNV4lQ1zQuPAKsN7nDlEuF4ol/K
	 UaM4cjs35nUYym1a3qeBgI8Lxm+RZxVo0Vyu18ZHljnV2cUSt1Ep+EVR5iTxF77RJg
	 jQd+6sFJ1tJ0kmANl/TcemDmqthnB4WicvSdThvKnU/py8jK3ln0563JdACw0UAyDA
	 iHIMoam5D0oYkNYEnPzvDcbwL554dkM9F8RxWG0P3zBEKCKTarYlcD5zzgBv72jqOJ
	 4fiOb5/D7v61owHnVQOQOtvR46AQEtFeP//tyHeimbQRJKnXDV0DVADGbV4wghcuLN
	 lbRnb2EArlrFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CABC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469619359.18789.11377021489619992568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3600283fe290e0aa7859f4d5653d4152caed0de12413c7ef86938eb1cd60ee3
Date: Tue, 15 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744696193
