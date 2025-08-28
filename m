Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2A322C9B
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756408195; cv=none; b=BgRsLM4PsL4A0j8a9jA2HhTj0dkYyHO1JmH81G+etQUkP8iVDlN3QCh8N1N8f7azuJIoqITPcgB6hd17dYuzMhSNk/3vYdtCws8KopsAIdXklcLhHbxm3bEqta2/XLrK7YKjKitMd5KgvaNy9UHx8fbS4oPXIyRSlNAPIAz+Z4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756408195; c=relaxed/simple;
	bh=uuljVgZOGgIWkuiqi810rxV9BBgujwJP7USZMmOQBlY=;
	h=To:Subject:From:Message-Id:Date; b=CspuqBL/3GfRQo4bnkYSncxvZEjg7ScZIP4/yMz0vgg1aG34ns9hRKQrodxMeMSmM1ev3yvak6ypLrfFlugnpLBfp+kduMPFgvnJYFlS1NOvilKE4UaVqxe4iOh/hobd5TKADCdrDOn/CzitjG4xD8/chJMH2cNo4HxvbkB9DKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKXvy5lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKXvy5lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE43C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756408193;
	bh=uuljVgZOGgIWkuiqi810rxV9BBgujwJP7USZMmOQBlY=;
	h=To:Subject:From:Date:From;
	b=gKXvy5lvxUMJhpQJoKAel4PjB/eTGamQPacdc0/04psjIwZrOZnOAcg9t9M1TUsh1
	 O16P6ZEObRjd0+YM91FQcNFlu9sH61u9rmO2VVkuakcL4Jf6+VHr5ZstMJ7TiLBH5W
	 xPIcqyb39GKcgTLBPMi16Z/pnx8O8/WMtZcWFbvPfNADDII3VrZ3kB99eKP3LYfKEX
	 hwHdodtp2xouVai8eLuuBMDUdOf5Cac4xDpa9X2t3tLbzRR+8zQrO8gWWYvaq7Myek
	 vUifSR8bsBnhHbzc1TzCliUsvlZ896KZNLk3DnHNHEm9kq/DHI8CMC8W1G2a76tEYV
	 O2bV4jq9aVMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE8CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640819357.25807.5808314524532272075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae7458509b907f932f1ce30f0b1a120c2b3838bca2b3f3f93d725425bb6de94
Date: Thu, 28 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756408193
