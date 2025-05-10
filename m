Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4872043159
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746860394; cv=none; b=WBKOhuljaWm98TbGgvYSSn4b/d8zemjzc/ZlMI4tWUfj7BmKJvQG/Ba+qKRTyQIq+SNdUhV5SH2WYcu5osz7GlpMKuro/0lacvssE2OYGY2lLEh97QmWlZ84yIcr8/xIkKEpdkNEbVmc0saB5FsnpcNNCRZzD010x7tLCUiCpg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746860394; c=relaxed/simple;
	bh=IpbLBGuzbJ5ohnUQxSAcBWAhj5A0b7RVPjgFfMJziIg=;
	h=To:Subject:From:Message-Id:Date; b=jxhrRFKCovNo13ZvZyUSWyd3TSocHonwdg/IwCe8OzmguokmTy+p2oPH7TfzjJqn7mGFlO27QwKMfUQ8BtAe4ZpkBh2cTSQ2Ebi7iPWC8x8nJHDfElITP+j3m2OZdIr9UtTb6bh8nN1hy6R/QaiIxeGhZX+NjHayYIbj3Eu3zZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVvhFXc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVvhFXc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C2CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746860393;
	bh=IpbLBGuzbJ5ohnUQxSAcBWAhj5A0b7RVPjgFfMJziIg=;
	h=To:Subject:From:Date:From;
	b=VVvhFXc5Ddmq+LxzPmvlU24fB2/tz4x7bMyPoTPZB/yPu4vvvh8Cmge1SAuPbJWKc
	 NNzcEtmajDITLzDLBcMOtgdHZEaruLZsD/ujNNtiSH6evTvgUj2G/YoHaRFeHigpFr
	 lTExiTH+0hdQLV3vsctYOk5S6v0k31GgtNoZkSJgiusOaehDOmZ5U9bnnm6E+Li6aT
	 fhsGuKXLZpc4rI+IqiCe81xhDSE85lFP9tH8cp1l6kM5klsaxSkj5+08zsMLGM9VN1
	 bOAYAvYSc8ptMyAIuQF/Bupy1FVbQpiLli7roqIzeuNSu0dk+E8wj8w2dGCnagjVV+
	 UEFu6IXZ4IzLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5EC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686039357.11542.6084808101610482467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fb438389dda231f642a3d31d5258c9f06933c0b6475550a5379ee7ba8170e6
Date: Sat, 10 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746860393
