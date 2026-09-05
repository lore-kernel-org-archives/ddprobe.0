Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC8929AB1A
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788600034; cv=none; b=J9rFSYzKml+t+wQnhRTauK171sU9dkn4sFUDpEdyNUoJvfNoPi5zxNbucAV0M4/mTLq6YqFFXiWBG0ryLS1H/WqbhCfWY49hfgvNyFvAN/adprJqRSMEJ6cZseJHqt6MGEdM7d0iMFl1hJY7KSE9Hddq632KC/SsYN3o5uV/RUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788600034; c=relaxed/simple;
	bh=dxwdHQzFXR7NftKnA+tFAQ0nu26tDIQzXZaTainP5/Q=;
	h=To:Subject:From:Message-Id:Date; b=R+9G+P9hgXkCQF/0uJ97QT3p4Y2a8Ah1PwRT0y+uP9HQNGO4DlStO55e4fYMVc3h0U8kRuW/eqzfMyLzVTBKDQ+bfc5Vwsa1fPyVqNZPG+fQv47TUESJdq0b9RZp149Znt15+GRk3WSZ+dr+lAgwdX3iiuwPYHZRjC09ElmDRPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzROld0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzROld0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3165C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788600033;
	bh=dxwdHQzFXR7NftKnA+tFAQ0nu26tDIQzXZaTainP5/Q=;
	h=To:Subject:From:Date:From;
	b=SzROld0d9gU3aqhSkD755TEJjoX4MlbPZYVtfErpZ48MNoEEI6Cudr7A5epvjlf3i
	 isghmXp7vN/WvShHCTVlWwgO78hMv+bEyMGCkkqsosYw0bBPiqfkMBBejfdsekJ4iN
	 TbVc3bDH1z2+RvL2S/aIx3xDOyHLIyTMC/vDI48yVPHW5vF95HV3OsmScdDUi/vHj5
	 HmWn/Ugx6vq7wfnBp/kQG60prbIw6JlOq5+uxJGEVz+TBZdnSRIYFQNAEVTVsw8x8s
	 F6MM1tPGcma4goXMhWBumKBlUMMDSTY97ff2geqHZseSpYyzhicX+HxwPXWBnxS81s
	 3+dyyk94c1nZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC00C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860003368.6725.3985767783348919739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9f8eb7a717a19bbb9a1b54d999b4f1ed938537baf03b28452c221d3b346e01
Date: Sat, 05 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788600033
