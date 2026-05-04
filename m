Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E249126F3B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777867054; cv=none; b=aQ7BvLsaP8XTFhMX/zws6/NFCJL8WdSuBHDTLx1rpmyhigREwAwPj73IWV/fiJ4buUygY5LCVi6APc6hLYOi0Z9z6kLRaBgs1c+urnWE53ybpvQfgcyGiYx4QHcBkvSqsCRPsMlg0NvxG6J1kO2wUa4FVmG7XQIi2fbpM6QPoNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777867054; c=relaxed/simple;
	bh=IWP2N20G5InGLMdNzWPTs8b06lhsF/UIsAWUxJDCD1Y=;
	h=To:Subject:From:Message-Id:Date; b=XzhVA1EpiH7UtWTBAWGtbv9NIWHrbXzA3EdZ8Ipr00+yJyfI8FXoYiUUOS0pfPvjx+DN2oRK/Ex1W/xwjldgpf0evKB8TtF8cKvBKr5D8VjFbtZ03rMmhpFCA0SJSVROx0y5XmByGPgMtaXg7We9tolm6TUfk4Ku2lVKWkPfWIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn8Wx+IZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn8Wx+IZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F42C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777867053;
	bh=IWP2N20G5InGLMdNzWPTs8b06lhsF/UIsAWUxJDCD1Y=;
	h=To:Subject:From:Date:From;
	b=mn8Wx+IZDM7z5doQCDMAEpNq4ASxNy67JiLsVZkHhYlvBVeaQqwGgBK280gdH31uB
	 Go3IuquONZVeY4H6KFP+4g0HaafYmRPZG5C2ah8Db9ifCpgnLnPResAUhA0NY8IEej
	 grQlnAMuMLcQotkyopke+PmyLJg+nbWNGcTi4AZ/a8m48Ma+UNGlkeY4+s5UrDKcLf
	 rzq0zTpsoMT2jKBIaquEokR8+ZuoQEAS6jU79ViaTbOCmRnpDoW4fXKmcbjZicuTD/
	 pU+Y/dXpnhlRHSut/zKe9a3DFRSw6BbEkqDUG+fcxhOzs9H21+Ysqt84GBmt/YvXgc
	 irmnVwhU0NCjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C34FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786705368.21118.5552260664054487835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a28c2833ff8ae0bf617f396d8d8b3b7e59ff44a0ad888b451de2fac4c25f56d
Date: Mon, 04 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777867053
