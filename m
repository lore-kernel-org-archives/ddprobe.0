Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270013E1216
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780685074; cv=none; b=HS1Lyk6Lz/XmsiXIqvWnfmUGxuDbjemkGVa/PNW3GDcBjzyueKoXWjXLFPUf+qGnMMhcJBo/eZglXBapVTK25MG1RGL2aRqJH1T2BxBNoO24YDxI4JOLyLXyUVPo234N/npihdAYxoxsJ4d0fGOspCH8QC94ud9w65OaC10Z+lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780685074; c=relaxed/simple;
	bh=s5upv4M3o/abAnsmC5xSTzBPnAmww1gXXz1mRGLK2WA=;
	h=To:Subject:From:Message-Id:Date; b=BAO+4BGlywvpSSvcjkFk0HuNol6IMLyZLJIdlCdUgPEBIRVQu4Zjn+1LdYUqaZeCf8UmIFaKDlVhyt5QmRY3AzchPDYrLgrdBw81blU4ViM3Hjd1SBvYho67u3/ZpIwPo6lbvqj73Eb8hYVQ8E9AZOSWVbFcZUO0WWJwXuA1OyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK2P3Md9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK2P3Md9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA1DC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780685073;
	bh=s5upv4M3o/abAnsmC5xSTzBPnAmww1gXXz1mRGLK2WA=;
	h=To:Subject:From:Date:From;
	b=KK2P3Md9UjfTW5G5uATT2M/Q2ujp9miBZgUEfCe9SSVw1ry3kblOF8HeuuLITTugO
	 KxOIfVqR2u5+T99Yx30Ee/4g2RgZ5lJHspS69t6dVIl0MbrJEQL6geFiXju65gZGMX
	 WvSh0+hfNhm6b8DxXTCpa21ouCAM0xjr1tOwQ5l0bgre/yr1nPnjq31Fpz3l0rCbbz
	 6qeNY945ekeO3nZLJ1Te6/LGKhmo+qSij3ZqyyO5GH/UX0BZAAI6+wAfvtxUBpX+ja
	 D9LYKIsdGYu9cdGPgD1M2fCIO6N1fYRbnBG9Lp/SYU/24CaCaabrbyrbJq1JM+oxqZ
	 nDCLEoDlQSGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2842CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068507371.15648.2628770156844964600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4caa45d6d78b60448e1d9ba689f24decf59d471614c9040f2ad3de9e0449ba18
Date: Fri, 05 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780685073
