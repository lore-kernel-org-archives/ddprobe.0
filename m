Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522A02C11DF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781390794; cv=none; b=rZsc8J6MDyvxTIe4rV6m30nmzbgNsKcDz4PyRw7pBdtxs2cAebOvXbq9qnahLfS/xoQnxElsqa5UhNdaYvmdly1tYEgcVVfHvrRyLhQN7tetzuIx6Um/8TYG8hBI3WIpDjFqlZXHa/Y17K6x1Nbv8At14DDSLkZKBEzkswIDrUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781390794; c=relaxed/simple;
	bh=+aIPhaVeewh36is8WzWDT3X8D4Xr4Xjm6COEa1efWCI=;
	h=To:Subject:From:Message-Id:Date; b=Zp7kjKNI0OcGwhJYcLQqdBNU+ph16Qp4VX/sEl7evDzjMANHJBUt14BO98Fn6fGEBcnC0cDmpMQve4q2Rv/xMr16ur3zhjq2MV+nfY1UL2pDrrB5VWLUpTXDMQcBiajA1Ft0jrZ4FYIjnavWC2smh4kOo+IPLCN+C+uKBCubqbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hljpjCKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hljpjCKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD295C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781390793;
	bh=+aIPhaVeewh36is8WzWDT3X8D4Xr4Xjm6COEa1efWCI=;
	h=To:Subject:From:Date:From;
	b=hljpjCKaaRpF+PMkRYNwtI1bsL7m/00gI0rxBybUshS2spkb/QsaeTy3kZmBS6Uh/
	 KKxESFw/3Ok3WfDn4GP4Rm4aBa4bxQcSiYCwQf6mTIYwLM2H9EcVWiDzvqrAdfRNfj
	 vQLHK6ow74+MDE3Nvpx3WkEMCHApah8MM4xQO+8jOfHphLIp6rcJqA1PDr4gga+fVI
	 7HlSQmnp8MM5mcbWJ8quozObFv26gDI8PUGHmd8M06uMZRJlb+V52iZjBx0dEFy+YJ
	 odKj94Clm/PM8X4TDnnsc7yYB288DM64MoIehofOkvVUoQJ4n+MRGaFAi8v3VADy+n
	 S0fIaPdwC5P+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43E4CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139079370.9593.9153122667350214661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05b5206cf0b5c64383fea2c988fb79d479309d5acd372f4cd92e6975b8b8b83
Date: Sat, 13 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781390793
