Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594C8515965
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790029834; cv=none; b=s2fkDZtVOcvo2lh2TTwx1yFTe1V5Zk9sVxmxiQd017mgM0q3kyXmvY6JPuJOxY5Z2DuV3XC6m0AGxoSdTVe2oUuNw6gVCoVivKKkbpxW2byQ1pGiiPsrIv+aTsEEClPwPnPjq8+bH3WpWY5GRyrMOM6Utf+5uDbk1DSdm6W+w84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790029834; c=relaxed/simple;
	bh=gEgrGwhK/QMZ9FxGE00945eZ/nxWpHETtTdeEQfStr0=;
	h=To:Subject:From:Message-Id:Date; b=BaHizl1VBY8takQi+zaiatAopZyvqunVChtXIR0KyT9C178uMjp1QHuzp1xDmUS/zZ1H+u/EZKPv5sGANUP/SHreTfCda9TD2EDFlbhN601usMOk57TXD7eb0pO7FkJDEdXr3qe6j0AmXpY5vZ2JVs1b4XB95RbEH7NEu+9uNvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adk4Ost/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adk4Ost/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF09C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790029833;
	bh=gEgrGwhK/QMZ9FxGE00945eZ/nxWpHETtTdeEQfStr0=;
	h=To:Subject:From:Date:From;
	b=adk4Ost/uyxux689WXj5gp/3JaZF3aSC7m2y9gdaKsRj15N6VX3dXhYD5WQ9/lF8b
	 SyT32cXSixD9Tcn3gzXFP49hSXeN71CZcxn1sozTECeDSiI72mU1GbVGpm2hSwRsQx
	 Te5y5VFzwH/JYKescNmoJl6MjH3FM9imJT5lR0m2Grhe0/TEbuLb9TcuVxHY4SiV3g
	 I5BX2SAXYNUw+cG2g+wRnnMzM8eTIsqr2cMid4dVSUMWr1a5vjDm6CTVVkL3B4s8L2
	 pcixxTVCAwsMzzlsS7BW1cGM5e3dxpkCzynfGOkh6JodyZYWRj687Hp8FDBuh8iajQ
	 xmgtg26NfOJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE538C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002983370.17101.8173036485684630271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122d080a2bd608b821bd28c30ece5e1c81a13be284670c91fb2bc932abca7116
Date: Mon, 21 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790029833
