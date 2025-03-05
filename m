Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FFB215058
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741172334; cv=none; b=KUvY3YTdMGrTJKNwmo+/BEil0cSL7D/OzyG+v8qc4+1Kfh958lbd8A9bcWNX+4rRln7onDHtA1coArw1txAsaSWjcglC+hy3qo5ui8AyYe7k8UknYrrhFJ64v7jQNKtNV/HnH0rPUuuwHUyxm3sZ2toQB45ibarPB05ERW2aeKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741172334; c=relaxed/simple;
	bh=LG191tTRT2robk7+ISusxCZHsRoUP2/hkM/95MPIdP4=;
	h=To:Subject:From:Message-Id:Date; b=Hm47bO6U+CQ/qYaovORFD0WB+RMFVapJBh9KObeH+gQDK5MCiwitCUieieutBljfHQ1n/KRWiJHe0g7H6r8ONkv0/k8mxpHAmXLY2D2BgZovtWhyn3qb0S1dhkAxlmxTZegkZVFSWakmRJ2ebwCDZW2leSoob4wqfj6dr1cRpQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv2MnF2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv2MnF2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A5BC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741172333;
	bh=LG191tTRT2robk7+ISusxCZHsRoUP2/hkM/95MPIdP4=;
	h=To:Subject:From:Date:From;
	b=Wv2MnF2abKtpASZLwl3Xl70eIBZ9zNhdaGUFxkTL6Fcvsbn1eSJlSERuJrf37eFhV
	 DOzolYVBXn0TL1ggaU7l57Pk8P+5kG9ljCjD4+w+qtbUJQ4Y9txOk9nmMpKu6nIsuV
	 KCqtLdrtxsRv62NYoxrANrdS67KwAT8xa2SvJEYMHFwP5R3lmcC25Er8CClTp8pFY+
	 KMGeHTpFV6PK1Tl5D4i9FkAcdX3iZnv2Q8dlfe7hTucXIBjk+iLau8ugc6d1Kha3dT
	 gmnINLc35+e17105Bp5mIi1YYCSSx+lIHihSnOJ80QS2hfehU4GatfPSU01GjMwr0J
	 HbKwCDbkvU61g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E50CC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117233363.18053.4589443148570897130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68889880758d4e70ec6030bc301910892536b92504af14dd4f566249df330d20
Date: Wed, 05 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741172333
