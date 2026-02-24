Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF78271464
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771965894; cv=none; b=KEB2eIN+oX04vnN0U6IwYNlGNgzeb9UOgDkj4Vg1kIpKbgQSoqZr8fo8UH1zXpQL1/cT2RbCBHaxQCmbGaWQF9S1L1B3fouOkGHzJRxzA3rpeGteaW6wF/HLxfxvHJvdMyBPYio8c0TaVfarMg2v2N+JVXsPWeYTZy66dmxjGvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771965894; c=relaxed/simple;
	bh=+CkXlp+qIV7fzT91NWwLFCZb47RqNHTcojGW/yqH+Ks=;
	h=To:Subject:From:Message-Id:Date; b=hHq7Nv8QbcY2fmPhS8/e3mWc9AqeMUN95MJjV4ksjol3OYTQeKyiT7NFj0UT/joWiS1qjlt9QT99M5E0VWDdnwdgDWUeeavRLM4w6rkddAOv2CYq48atv6+DOXPKuZ0UXVaUq8x/NHZgpHMU83rJNr0/Yyj98OTttdfo/jhMq+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndA5HCnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndA5HCnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A421DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771965893;
	bh=+CkXlp+qIV7fzT91NWwLFCZb47RqNHTcojGW/yqH+Ks=;
	h=To:Subject:From:Date:From;
	b=ndA5HCnNu+1MbOAMT34Xlen7qnzVbI9IfvUVZP9RLYRET0FkRxHQTHeNolMyoIXrC
	 Ge8eV82ejdRBj8dVn0Wmca1LSfCGZfUYHSN2yXvw2ubKcL3blq+IySH+uuJv9SPHuB
	 Yt5m695fmIPieQWzm1Qks97p5I5fCZ+p2K3IwkaJM8IbZPVr1FdnBvPiogIFJeiE6e
	 VEMopfl9ovm8UTu67TQHTtCVvnw7Ofjfy2EPWBBE+CcJu7Xc4YeifKX7iDcE1npvYp
	 y0NfGgYQO3c34+FpnexDgncNEA88INR/RqDlCIUbwkxplv/POV4pNGio2Xq9PK5bUu
	 BMoLOgb7JPNpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2EF4BB84
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196589358.7571.5261179171900295182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ed6d25a536838c22e2a5b713b03c756dc1edea4e9864b2f1379c61c4c32226
Date: Tue, 24 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771965893
