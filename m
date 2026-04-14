Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D551A23A4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776157654; cv=none; b=ZCU4ASh3byYxMWutn/uDpXCHrzfbOosuj3OPtjrGF5WhW6LhWMZczNTEZV8HFVNPrkJaFwuBhUoV3H4AT/FunO5KMcbaWjtVNLIGET4/xkgXpU4AqYreG0ZcesBlxRENUjx/eN0syHoDMtyG7g/uv6usOWfCLdEYixbTxdKThH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776157654; c=relaxed/simple;
	bh=a6XXVQM1aVrXSxys8Vyoq70Khh7i7ylzeKa7Uw3g5cg=;
	h=To:Subject:From:Message-Id:Date; b=SSKrVXZsY5T93DGQ3QvXNDE5xTNu99YWUz1jYNFpJo6y6qsvyEzNG08S4qnMMF/OCwrdKt1wRLBmyBjRTeyy4Jujo2DoZ+V1FmXnxCSJbE6P1wNfJavsznsVo4+TtTdi8L0uMxHK990YGFr+zuKi+S5B4fUwLdrkgd0MdNJ5BPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCUXZf1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCUXZf1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9A2C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776157653;
	bh=a6XXVQM1aVrXSxys8Vyoq70Khh7i7ylzeKa7Uw3g5cg=;
	h=To:Subject:From:Date:From;
	b=VCUXZf1GjKS0sQJPWD6Ub7GB98gOp4DnJ0vMX+mdDBUKkH/uOZV94m93VyArUFTZQ
	 scXm1y0MFBsv4NjxLr8lhOdZI0Un6P9YXv0yQSU7BaDbAAud1AIhq6wNvSUq0Kgywx
	 VFgmky1MPEeOjVLP4o4N2mH2sXrAmtkqEUwmafRSMTbcaM14Louecs0KrPTg79r3Y4
	 Yan5KrmDIzmDy1NlpeqPGgLgREbL7BvHxtCcgCFVaaLm1Bh8R2oWxs2GyrugOfbuPC
	 Wb9Otoup5kDUS1rFKlZ0QM9g+2XQr2MlHf193/gxRy+XUopUys8RRVWauvfnVsJUb6
	 0j3M76QTYq/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBEDED7B8F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615765370.1041.15348999368189652200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f5106d93f10f9277b2848a83ecad8bfbc1a0185fbb28ed0094dcb143644150
Date: Tue, 14 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776157653
