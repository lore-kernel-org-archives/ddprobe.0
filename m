Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEBD3CCA12
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781685994; cv=none; b=gItaS3ELWPWdp+e3jihKuTRe6LTtSU6mQJVm67sOi9+lXrgu2jovy+1zM1+rHgds0Ykd4T3ACreJrYqpQcvV3PRPZPsMj6ikxPmJFxFFqVwiN8TocNV7/2qUDzkEyOyMnxsFlxbJgZp8wN6F82YtUNADCZhEFfEZCGihwZ0rpvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781685994; c=relaxed/simple;
	bh=fJexSdF24l1/uMAz90OpdH1OYzZVnIK8cHprykrnZlE=;
	h=To:Subject:From:Message-Id:Date; b=mgdbjpmhqm7na55xg8Srx6WFeuBBMYguqpT/+OKWaAvP+ns5xBDL+r6NlyTWYAuChiffozIao8x+4s0jCp+EYp8WyA+ih4sWXp2gPc1Zu1SB2MW96CKqQEUwNSwXB7R8y5qmyJ46y/cvKZo12Bb0Fzw7qTzB9xAbDfZYnxtqTSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4/KqG27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4/KqG27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AD8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781685993;
	bh=fJexSdF24l1/uMAz90OpdH1OYzZVnIK8cHprykrnZlE=;
	h=To:Subject:From:Date:From;
	b=p4/KqG27MompVDCjdQ53UWMXbO6YGWdnNzQMcvoEj4YymdeDpEecnkVgNyWVnMd2x
	 ofZ4hs3tx7o9cnt2LtYwF3DnZUitka+NbORGNqVtcYF8KONX5BBajINchzaXWwGN2J
	 fnahfsFw+ij4WsD8fxBHOZJ054iBko0DnWUcoiSReNcJqnmbNDlxwL+o+FBd+Szkt8
	 6rAVOLZzZqZEQSXyQuBdU80LDh20yfL2WH4PxLC4adOXCoErukcEcZuVtBV8Nti2if
	 vKGtxKWx7bMK/A5tw5mR7F3Kg45hLc3CwsUeR1GSt49EySfRVnvFEiPAX5r/Ojb9oi
	 8qo0JJXnq4voQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFACD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168599368.12087.5322027858741453215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72c2140aa85e28eff6543f3920a966c58e72c44828f8d7423ec905e4cd10b08
Date: Wed, 17 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781685993
