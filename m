Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F821364EA3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772616294; cv=none; b=Ych0gj4TFWTuu9cDvrWRGmFFS1oY6OB0eCRCv2RvEzahS6sSSiniGUYJCd2RY7ZuYFq0nk7UCzIP/LPZYEo5ZGhLWca9OSggPTR8OlA4LShFauAE3lvw2g+74PGPnWoBEiLBD0TIQuRu/1m6V/wfNPAA3C9Jb43uzkBZTAFSfM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772616294; c=relaxed/simple;
	bh=6F4V6L2x4NZA9B3V0PvztA7pIV1ylAID3CUEvhZj6OE=;
	h=To:Subject:From:Message-Id:Date; b=VpKY09RO0ybHux4EIRLhSWlE7JRG2fTmtb5Pko5XpuuL3dJKQNHJTLoAF4xre77pbTnkQQfSYOPejolLI3k3A6zYFuDneqR98IU1zhb9NztAM+HGriUZ9x5ZMfmw+EnTM0S8oWnkKsHAOkAGGptPLdy/HxAP/Lqa83Fpmx15S9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ5Skpu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ5Skpu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECF7C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772616293;
	bh=6F4V6L2x4NZA9B3V0PvztA7pIV1ylAID3CUEvhZj6OE=;
	h=To:Subject:From:Date:From;
	b=FJ5Skpu9i4jBXeIpyThsYRVPjxhHqdROy9klyUiyT6t5kY1Nb5VpEYOj8a2o7QoN0
	 U7Fr3kEXN/raTwBFPsXLKBVfcm4hjFbhVyfldOMAqXRttMSuwBTxiPWmC4Wf6cYo7h
	 8pFo0owew4nW4Soe/NtJIbHXpqYMWcQ+TYpEImJG0FQYL2MYTi548AJxQBvJxQOHgd
	 wei/xEoWDTinykf8TGabR5N9lIOkWGwN5ZTsfTKYLHpzvzcfR+sD5MvX+Tb6QW/q8w
	 agDr5GGSI4Dh6F5/l/INjzs5/cZtXc2v7T0bZjtqrmG8ilbjq33b6AdcDLZvIgA0rH
	 IABtKRvbgpRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F3EB7EB2
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261629361.5569.16413596863956538345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9383e27ee85a0f5e265a232c139173b192aba62f1c075edb11df49447ee96c11
Date: Wed, 04 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772616293
