Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230FC1426C
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734888954; cv=none; b=FHZLTQ3Ne1dE1yPAoTc3Bem4flmH3wOhH6x27VaMBuB0bDx8Kku/TkztdNFTtcvsCoYoLJO1T6q88NE8Jnkh2SG7sldm3aNWwEagGxFDtPxllname/3FLexvy8ssSN+R0EKhtqZUf3H2gB6xoJ15YC5XBOL0l2CIN0o5L7514No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734888954; c=relaxed/simple;
	bh=2FAhehTAH2PGuEIzyfNBbPWHYNe/qEdKD5zj4wN7/fQ=;
	h=To:Subject:From:Message-Id:Date; b=IiiQZRmCbpgzjxKjRiL/R1ZulSOwyl/wBio3J1GOyNu4GRNs+5Y5deiOgKr3Sl+tjQtPS/xnyEBCAiJTO0tCIh5RxTNzFS/JvY8DRbSTXd2EGBuFVYLJK4ng2c8vmJ57tnaJ02GWJHthtHO7mf27OUWoYl8ZuVmbVBPMcq0DaqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1Ldb36s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1Ldb36s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A311BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734888953;
	bh=2FAhehTAH2PGuEIzyfNBbPWHYNe/qEdKD5zj4wN7/fQ=;
	h=To:Subject:From:Date:From;
	b=U1Ldb36sN/3b6zXD3RUkggHqpHEB+HJQF9S4RU8HZEnFZSeR0qSMRdI3iT1OPWQqV
	 K+tW6ev+Y97Q8TMblgTRPhlkwjhiXlgb6MxZMQqvEkRPai1Mv3rdKqtKWdaESFqHxs
	 V7ffV0SV5Zegmm10PDcOP9ltHbcOq3b311S/9mIkcH0nbSB+ia0jSuNclvp61tmPYT
	 BvWiCD91QQi9IEdG3vncrS91zcVFOA10aRv8NXzBMSkjsAHMuHsiqGLEtySG4R7BhA
	 DuomXTiYxE5aYaz9zk42spUYn4L/2a6ZCZYc2KkJ0etrJpFpzG5bY2WL230hrucT2v
	 Ti31BX02MSwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A0E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488895358.22181.11665778573726708609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddb97bdbdbc7af77f17a44d157ba94395c85e776469c3126e2b03ef90f3e344
Date: Sun, 22 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734888953
