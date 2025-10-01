Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3726146B5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759283394; cv=none; b=CCgPgOEz4vM9Ih/2R7x3ApF2CHQNxKhQke/wgKEqWLFd49doYZpjqm9Lv1J7dRjnCz7kmWNbkFj13nrxZzSVDw0bMTOUfmLo1Kx8CRLYx1yLGIttDLrB/6RoXMF9vqr/xT6xo8uFNhe/iFIGEJCvoe0Sdrj3ogmzNS1nRc4Z/tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759283394; c=relaxed/simple;
	bh=KGA/I0NZIEHnppt2DUX7vomS2fxN7xYn17iOm7r4jQw=;
	h=To:Subject:From:Message-Id:Date; b=MbLp+yH0hX6gSk50ImohPmjDJcVR+3yETd4jvfeWiT9sx3mvqHxvDivXvnfiDCAyFs6BP9TIEej2g41tMkzbuLUfdhfPnm9HgbRPMWqf+skKiY809Wc3ncpDxMdyr8Z+revsdXOiBdeFyME5TRKSkxTlLLysQ81iHv3wnSCMkfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6moVi+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6moVi+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CF7C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759283393;
	bh=KGA/I0NZIEHnppt2DUX7vomS2fxN7xYn17iOm7r4jQw=;
	h=To:Subject:From:Date:From;
	b=S6moVi+0VvXhOT1ZoGdmGdfE2HfV7/CIzuGsgKB4Ffq8ALkgoqShmdhff/frkMHWz
	 MCWzDtTNWmNkB8tI/TyVg8X3zMvRwGCQIRZR/qeVFgubcrDMB2ONVcRCzsMs8Jls4g
	 rVNLt+TUAwV6RtEcGGRQS16QrFontN/8ddOkajUIknzkh9JgjDkGn+MBijYM3olDif
	 tYSzUMCmMXCRbzwQFfX6PVZLdYZoIikOSNjnfsCyHWE2mOWtQOuhHzzk5PfpKo5iag
	 WFcswDzMJOhXn7Vu8uLUoVpm5eO7FpDT8ZtDlAM3h+dqMd1jyMH+vT3nx8q5xmjvj0
	 RXFub7m3Pu4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93796CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928339358.5387.11056739863869690762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46f4fa2b7b3533527c5d40367b7adf0a2390e5af8f805f115d50af52d8c2003
Date: Wed, 01 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759283393
