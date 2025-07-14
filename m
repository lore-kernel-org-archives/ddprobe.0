Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263601DF26A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752490794; cv=none; b=Kjd9M0JbVn/bruA/0JyVFQWS0Itl71XBswlA4AZqBhzfYysQSrlqSH7BCYUn7X7Yf7YYg0uA+7zTsaSdCx+UiDjTm215LEVrjGqtUbCpMbrpqA5IK83bAqNODBVkfEiXyutnwymEYz3cAO8OU/6vt1hxPyJNVPIospzV1nwJENw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752490794; c=relaxed/simple;
	bh=WxumDEwJW/Gf4ScUhthbUtlg0DBtFbYuWX03E3wsqiM=;
	h=To:Subject:From:Message-Id:Date; b=sohOiVdhETKFhcDG/gPe7JF3EkceMLoDPfagfPydT9O4Ei3wqin4csn09WTK89vnSfRfHGthvoeEiliOFZ/nHEQyOgUgYYmFognxAxKT4yOCW0hlGLTmhClVJczDm74wBd1yZx0aKePrnbPSixIe0WLCc1cQaYaDtJmsUv2Ok7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2B4zMlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2B4zMlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF61FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752490793;
	bh=WxumDEwJW/Gf4ScUhthbUtlg0DBtFbYuWX03E3wsqiM=;
	h=To:Subject:From:Date:From;
	b=r2B4zMlh6EyorpLA59coVNL9UDWahH4Utw6rfMawNiuQqpa3nRCuGuWWX3GAvaE8N
	 RP6D2MK4tik/wFNJixABrU7UolhSHHCBlT/ui30GYeAY0fBmX9Vgj5qbhvGazpWM2U
	 k+jrQ3MOoGNEWSPsCndl4rIli8WBPNO4VIpPW0V9AuKsQKzHpR9gp+pbmRvRyrQVr/
	 hgkbzXSlmHsh1d3aPTyEYZ4A5Xe/tpYoloH4s5WwrSXT5qbMC8Wz08mG16Bg+0pzAy
	 VVaQLjsP9Deam71wjXcImrrxfmfMVdGasJ2lAId1KbkjcQ/yZKYx3P6pMtqzK/73G/
	 1jPlWpiihV2dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6C4C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249079362.30960.10791343030504221424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e36f568c37ab50631219a6b871e899445425a460994c22431c999ac1ec180f
Date: Mon, 14 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752490793
