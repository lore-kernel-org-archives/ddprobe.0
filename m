Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE3714EC72
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715085143; cv=none; b=gnIKGXZrZeWYOV2mTmcGYkvBFhNuuKZ+TEli2HCiKcanilj3DKBIvJLNYjdexizrrcD0vK7YXO4hbq1FJNfGXCcFBC80NYJzFjHrqCOjFmWqUABHbWXn6O+reBWNTTTJtXoK0V3BCVzyTE82CxKJIkmkNjbtVNBelsalUy5/c30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715085143; c=relaxed/simple;
	bh=y98AWAHMNVzxffMgNOIcTOx5w4rl/3e43f0Yjf6DWiE=;
	h=To:Subject:From:Message-Id:Date; b=OdbmecugryckbcHzKZj9rF2Z3NMOV4fr2+vXPw8ARwRbBC3Uy46jGO0EqTlnYZPbsY5yzoKiBkMHSZbjLSNyuRTziHy7Vqtw1RCou9HEYP3YTXFx81wk9xxUiFAT7b+nmRESJa8NauvtmMRt9nK/3K9sEjTJgvvkyV1jlJNF90M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCXQziFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCXQziFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D8EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715085142;
	bh=y98AWAHMNVzxffMgNOIcTOx5w4rl/3e43f0Yjf6DWiE=;
	h=To:Subject:From:Date:From;
	b=HCXQziFt4hYLVj8NmaGdJpZ3tNtthh42DXPELDAuFljQGKXgIRmILk97YBEJ+ggOG
	 U/kL/Rk7OlznoqTuc+jkz+FOoXrGcdZZDMnpzOeX7Lt+Fs3DeYo0WDcnK+wnX1VC6Q
	 Mb6tCJ5SvF1TsSRI7yOI2IKNRxctZ6lmpAivyeFKjV4v1mjbuPsUzbmj0cAQovX/V0
	 1oD0F0PIWkm4FbC8Pi1r7BVRgA9dG84bCP2EVmGKG4jRmk2+yPhiGI0NfOe0tNhmpD
	 9hm2WghUfOGfQ/kgjgiiahRt0MXXFwL7k9Zp4pEU36+Z327nN/ZTCcI7p2gJuhQ4Of
	 n6FBUK9oXIryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF3EC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508514282.28873.15355547606758975529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa562e463c5daebd4994f7a20eb188d72dbe9fc2cc369e60c1bb17e89fc15e68
Date: Tue, 07 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715085142
