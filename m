Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622E947F6F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715368343; cv=none; b=VhAMrjiLGgzgyCT+pCp89OWaL7qztFtaIbVsI9ysPpN9wgZKeRjvW3w55x4ulMGIPNESWbhwPU2xK3avzvTcmdVp1GAIMzOy4g2gLmZlRzJ+4j/VzNqHIeyWf4qGFpPMz1vWGHrIWrwdsd7YJiDXSFymuCPq5vy7dcAaHVzFIWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715368343; c=relaxed/simple;
	bh=zaPxfVEmfGyM47SqH1V0zJ18o9X7ifV2PeM/8rbUo3g=;
	h=To:Subject:From:Message-Id:Date; b=k5wxnYqt6AQuVj5b0IRUz8jFsS40lDqy50gSxSRKX/121hQemE+WsF820Bh3jSi3yYr116oPRlMo63XeeXvebtYbBqbbpeGB7snzltORAh33WptO0NEfhTJFIEHpVppAADXuhA8/4m4BGEmwMCggiLYAgfgEL8IIdoTe6JoD/Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUpfxNMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUpfxNMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CB6C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715368342;
	bh=zaPxfVEmfGyM47SqH1V0zJ18o9X7ifV2PeM/8rbUo3g=;
	h=To:Subject:From:Date:From;
	b=iUpfxNMY4zTS3I22i3bd7+ZvKMD1aZKTlqXFWCBAjwzNjRhO609l4L9NMx5vAM1is
	 kGS0uabLsGVn4NPPEjgbhIuvFocWcQoXF4t2ESgNKS8psM8DRx7kyOFI+2YsfxhJgP
	 2huiWDUe8BaJGIU8BgElleQxP6bvmmZy0Kv3rWXjM2AQCYRG+ORt2W4CTgkXaJ8O+a
	 E+XDcMseRM7HavQkoDRBD4huumgxj2scOuzFlqcpd5Mi2hhgm8/OLDrJeMp8sSmYtq
	 E92k0u5CuzPzvRcpVPiyzTUZEG4jxVK3BuMC8AE3WWdGpLTQrycck3bxRYBfWFqO3w
	 LN6A2l2UzL0Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C290EC25B75
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536834278.26719.5253012000685563097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77634bb6f927deb90c0b57cc8603dd28b676881868d2a86d29e251e6c7753220
Date: Fri, 10 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715368342
