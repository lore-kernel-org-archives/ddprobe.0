Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138582C11D3
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770750834; cv=none; b=ddAd39eSS03aJ6G577XzzvOFn8hTlNMnDORWX+GZuq4UfL6NTUxY9ZJMgSpC4HGm0QBdS9OHSwndC2uS8KOxEbzQ9rW49Jr5tT2jFclprv3/v30I+Zt3yXgkFrjpN/Zn5At4JdCepIIyMeyOP1aSoz+jV/v0PIlzhC0dKTpGHGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770750834; c=relaxed/simple;
	bh=w3sUmP4/W6Q3etYqe9SljJxgZbeIeMTkpVMDpTJfmq8=;
	h=To:Subject:From:Message-Id:Date; b=SlNzR5Gadutuvi9wE1kCUz51QV8Eee4LK1r4PRc3Opf0qNGANFGFBaoST1xBIOej4i1TCoxH7e3+2J99H1QkLX1UG3VSEOySxYCsv53MSv5HqbCSzHuvIGQppwKL6ql7tOox7a9SwPRJTM3kQc06HEw7mAeYk5DHVYEFM4reC/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HD+d5ww6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HD+d5ww6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8ADC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770750833;
	bh=w3sUmP4/W6Q3etYqe9SljJxgZbeIeMTkpVMDpTJfmq8=;
	h=To:Subject:From:Date:From;
	b=HD+d5ww6wxgniED6KLTiehz/dHRB1pPIRjVRYAMonf3+6EqLO9gtGjDVL66kBlsLw
	 UhvdPGsjJwQTLRs8xhmS1xJd8dtl3o8/2goq3qcQ3/Vyh7ETofuInc32yM9yQlgOnP
	 O+/E2oD0IJ7OrqPQ5Wg4XdCJ76V5E24YcYD+DGUsSBcLFlD/iSGTZoUCDV9ggGZ+Yb
	 swm4Care/vnQ6CtUaH/+/pxpbBRdpAVY2qwQx7+XEzUWT+cbBCCGslH5RKFLHv6Ycx
	 NKzHn01b5TJPrkCFeqosRdckcxZVUZ0gvWDbzej7pkuPiljIRN/KOXPMG0A6FnvwhB
	 /KgbhUwmJ/0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE48EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075083360.22867.6834099456061344882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626f8540ab3b56cc6bbcebcb9f6d2ea4e09a966fd18af13d1ff02cb5429acb49
Date: Tue, 10 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770750833
