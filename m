Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9CD3ACEED
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782194794; cv=none; b=cDFH5XzX/dAn28jITodcvRqvFb8K7yMMucuVacktKJlk+8OHIiHKYGL+d6tBMA90IQQieFOBylmo/2XmTTPLsASE05PZOdzVS7m/A8yM+0d/v4P5UwK7l+pPl0uX2Zc88rDZt0l+Hw6rv5WtUPrBIHKj5dCB78yCfwOJutqNp2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782194794; c=relaxed/simple;
	bh=7grSV0yNDAw+/R1hPSx/wQX3qKayCUlb4rPCjRQhlrI=;
	h=To:Subject:From:Message-Id:Date; b=mIjyIMJRcBG99rbSvM7DqTm/B11lVmXQxIoIYqvQf1OaL+eLMtWg2a0zxxdr6Fx8+74hy7p1/VnRrBibygn12PHgCPS5NgU1R1+70xkvc3LA6/NBC/9dWQAQas/SxwPBzZX3soPSGwxXsL3/exLl5/Y0vKEk04pkQkX0lMB4BxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E42Wh8Xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E42Wh8Xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DBAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782194793;
	bh=7grSV0yNDAw+/R1hPSx/wQX3qKayCUlb4rPCjRQhlrI=;
	h=To:Subject:From:Date:From;
	b=E42Wh8Xor9nfSUlcUgK4HMrR5OFP75WRdce8k4Edj6GtiPd7rSll5dVWXqO2RuRlW
	 e2ufDo1OrcM+rcHjTukWmA9H3lAfgpCD//JJfjBIzbBfScAc1HhDAOr5yW9zwfRNcL
	 nqNpWOVmfy5tbg9/Jqlt5XWKkyE955N6qRWrCgsoB+4VEbCzOS54cBApMgY1dslI5M
	 3VPxI2iToIK9h6sloYu1p+a+7eD2S5j8KZwt6cvlPhySDydABJMUyAkpcFXqGTjZbU
	 KZ1/SeHNC9U1o2kIW/eeiOne5AKfC6PBrGYfiz9E/QRblOQIKki8TZaiWN2upjNFOT
	 MmHP8deLgktAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD762CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219479369.23481.25848182888301667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ecde8b8f2e45c41d4c41aa015699d1aa5d20f5cf66bf44ab293cb693d36028
Date: Tue, 23 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782194793
