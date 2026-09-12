Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B08C25776
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789195234; cv=none; b=Qm7D6wZBn3xl43RvzVJ+bidvIB3ku/n8I2mMrU60xLkvccCdbs/dnUMsDkum81h2B7G9pLnn4zcsZnM0sxHFywqZqdVhj0S2TrEZa1OMxFLEJ8nwykf7lCFH2fOJwG4VkstJ2M8qHcv9zvPmcVRhr2xcgfHcBpTLCg/CPGd5x60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789195234; c=relaxed/simple;
	bh=lXLEsk1OoIgHdq5CDijyr3Ig8jqjqe8tTBCfnwopHpM=;
	h=To:Subject:From:Message-Id:Date; b=udQiauMmhRnLJz179w5sGqfk5OcLCjSGBvxIG9VcB3hjy4qQb4/1V6GOtUlyp+mMcw4FjathmCnAivWokF+MyNFmkbphiZfmWR9emljMI6BbWnnujwKaYwDqdWNtcfsm2yzAiSdcxv3WiVgGx/cvyRUCoo8CN9H+YR0Q3EsqlFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG7JCgoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG7JCgoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADE7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789195233;
	bh=lXLEsk1OoIgHdq5CDijyr3Ig8jqjqe8tTBCfnwopHpM=;
	h=To:Subject:From:Date:From;
	b=sG7JCgoh1qHsx+ve6wm3I4Y/jbkusdrKW6t2XdKK6twGh/qO+hUGBm45EDMKeZ2QX
	 x51DhShmHPPYRUlP5g2mG5ByPDZ/YMr2xI/aM75d1CgeFJy0D77A+JELDgGd8kt7Ty
	 waITTJfp/hcNR6j4GABDvZUTNcYwMNX4KpI8u263p9cdaD7hbAZA/ZnPkP7sqpXXo2
	 JUx3OqyFTTpoaDnI3dhlG+YetBUKehEeIQxYZ8BkEpYBdjEGpkYCCjdcKXOoQF3aIi
	 KEDbp/8sSOzydI2d3rm7cgW4rHyvmgwVeE7fE2Op4fmLlOqAsbP4hstKkxqITUL4H0
	 57p9PMuhxXPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E02C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919523368.14414.7346254036664243007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b3abd92f3005e15941fc4d06c9e628c89461585deb728eb79f15cfcb3adbc7
Date: Sat, 12 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789195233
