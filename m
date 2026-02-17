Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2790729E11D
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771316695; cv=none; b=R4OsyCx+5ssekVRxY1AjqoC7Cn6wBb92OMidIVzSPFb4Fsy1gAEUEQFm+RKyBRh5AgfRA3Nf6nUoTF8uhhakNvTAP4y1I6v7T3fA8Xre1WNC9RzmdSQzGKz/3i+gghHgXkMmzw5D1qXnDBvwNJYC4LiA+Akbt4OcadvG8aqzdKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771316695; c=relaxed/simple;
	bh=TBcHswxpQiE5hI4g/Rk13GfDSq/5NsE9XL5LXcUmCJQ=;
	h=To:Subject:From:Message-Id:Date; b=hFSvcVZvqc3rXPrteMiJZzJpC/gAACtlIlKzyeELUpeG3IxcsiBLKblbrZIqBSXsZumeAsas5DoWkRjRshoAOrg2Cl5k0l7oQuF0A92/pw5G/+IC5mzkjnYecrDVUc/OyNQ4zPzSu4WP1sVnikrSwK71BWw2qzB6IL1IuvDDhkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SchsBerN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SchsBerN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3490C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771316694;
	bh=TBcHswxpQiE5hI4g/Rk13GfDSq/5NsE9XL5LXcUmCJQ=;
	h=To:Subject:From:Date:From;
	b=SchsBerNUGWSxc2dxNvMLI4nsM7mxPfRBwh2DCJe4EhHuwXOoULuiYvni6Yh4ncmP
	 AFB6XvPVV+9oNTvtqjrBqD3xUfUp6rwdx1MN314Y93F3dlSTuZE+apBgq+eQSrM9p8
	 a3lB58PVB3I7KQ4QTizTqqMo/OOpJdxzNxiC15DEDYMc2DKv4/8SjmBcJd6DXNhf3X
	 EZk+6Y2bfZsMwzffBJAotpahmOB8Ss+8heOW1yNsKLk8EuCd8chX0XHkeEiIrrINda
	 BFxJ7vrB1J+UaqWegv5v5Oz2Ijlgl8eHQVKxosZc/K75lhopem1gRbZoHmfzGx6n8X
	 SlGAsu1hlsVRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2E8E68144
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131669358.4787.9864819283724972010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cac3e3b5674ef773c24d7a8791f8cfccbbc476fef16a763259fa8f3dde7ac1
Date: Tue, 17 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771316693
