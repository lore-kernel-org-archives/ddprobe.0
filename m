Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6043370EA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783913914; cv=none; b=FBAJvCT7kbI9lAcF/xUR2Cru9SaTIei2rsMcjhEdgk2VVUhXU3E9pNURyygAYBlmKVw6Y4bE7B+7keT0UaMY8qDjVgHAW/dEAoIwkkYBp2yx79R4uKND5wrxUQFOT6MGmkFioOsd7RH7o9GY2ki/lUCz28TgvqcWLWBY5kqdVTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783913914; c=relaxed/simple;
	bh=IN7vGW0xwVXWhgj9FbN0TCT0mhQqMuPnHsgfIPr6pcY=;
	h=To:Subject:From:Message-Id:Date; b=dRnRFPr6seGeDxd9rW5AKoFvLAGMflFwmXUyLLm46228PzSaoII0bpNAh0rOnsrpVPTSwCpoGP2Qi7X1Dc1g5gC9NXbfgCacfOAP8u2FL2Q7G6NicP2fb8ieE6DfY7cTCrK9hynGkOo3HG9zGlV4dj6TFHUSNGY+lUV9oARRS48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEmQIIDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEmQIIDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE496C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783913913;
	bh=IN7vGW0xwVXWhgj9FbN0TCT0mhQqMuPnHsgfIPr6pcY=;
	h=To:Subject:From:Date:From;
	b=aEmQIIDwrpx/KNqbOkwCUtfhp7H+SihjS3+8Wtwtd52XR5rR+t+DYkqcWnSpaX9Pe
	 Zf3K9Ka8zgKtmN0ekdPziJ4wlXXQ3IafOcefZq5Ob7s96kiUJi07ejncStki6OcPze
	 Zxm7/yunn9Rb7/1mpSGuI7DV2g8cO8StaqmykzlPk+0wrgg39W0Fh2ZAFQcOFSSW/I
	 dQULhDA667H/XzARYXGoLIEylkiZgXJXJm8AOLNCNG5VcyvcMq/DMQc6juap9pTHaU
	 qRJ9FhHoz3M7P9DLCtADaeI3q9kbatQOB764JSacSira2neJ4p6RLaKFd7/DBjb2rP
	 tSLEiyIF6efzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92AEC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391391368.24582.8233732961375283843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed246327312e382e6e28cfe6547adbae12538c5d058cfa355554b3b9ffce36b
Date: Mon, 13 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783913913
