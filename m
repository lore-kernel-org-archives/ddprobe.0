Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A942E6CA4
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762875594; cv=none; b=PlYd8GNv0VoCDdy0ETMicPiu+hGCqN+B/xV4XIb5nRU78c8BPDLhQUJgg1pvQyywDj39FZAppm243F2S1V2lKSHs4XwMMCaVH6nebBX5e1uOKRfSmW+9mLZpdaFJTQ6rwrw1TqMxXM/S8y/0rSKHwd228DGVg4Wi5hyCkiDbjsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762875594; c=relaxed/simple;
	bh=jMEP3Jl2pv9DHu431wm6MBOcCH7g6dd9CMTuj32ycYI=;
	h=To:Subject:From:Message-Id:Date; b=j16uArEiHIVMWvaZK1edU2iwG9qAmyrEZkIcZHfA8zLaJa5hyiiqhSMUeJKZnTUXO3YdfuDECYkYxSjoa8Jrig6WoA91PXod9pJeaL2v3ozf6ptEeaCuPdTIo8hDJr/IRLunLPRXMmuGaJYPR1PQfxc6Llp0VSLjOE+dxCAbUo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agqqF0/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agqqF0/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4148C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762875593;
	bh=jMEP3Jl2pv9DHu431wm6MBOcCH7g6dd9CMTuj32ycYI=;
	h=To:Subject:From:Date:From;
	b=agqqF0/owvYaFvwRMEQwYJo5dSFaVlGtAbWj0uMe2T4HFvj+M4FPbnLnWqhI74GmJ
	 dYxPPfZgiaNUlSov48AH8PjRkeBNCDspVyHiljmEHlCXMzFNuaH5S6rmgFPzzrO5jV
	 6x26LGtZex3/KCwtoGjlhAmIvT57XFjdsqkUlIy93zKKJ0zR6Hh0m8tl9DZYqYxrlh
	 jK/W+P9DeEtjZpAncP5vYF/baK1VW94LcIdduXcW7qCoTYUd8+XIdGNC8W7qM40FRL
	 PGEiB5sVDSC4xEyvfge48MXbWTYYY0w0UU3rzBMJMNLSkrEXUJToR/3vKdvnyU1P2U
	 9p4wAyFiS18Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96FCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287559358.11236.16078366434843708573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b13b2c7ea0bacc44bf577d012a12a42da4c65c41b04cd98fe9b8437de360788
Date: Tue, 11 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762875593
