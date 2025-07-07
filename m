Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EC423D282
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751926194; cv=none; b=txK5gSBTaEnd09QAlNrfFe+6k2U5L3xXHA4P+nVYOP8iFSc+XRVpo/N9WtYK3rwWtVMcxRJ9dOxZnCWhM6U053cYPVPOLhizH5acbswDH1P+4vJ0d0ce0MMkMUzivHZkAooDDyCzQzGOHDwQlheq/ahWUcjfhgmhRx4gAsCz0fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751926194; c=relaxed/simple;
	bh=6cNG91jqTREgBHn7NW9vyCiUuKk+wawdqTsvN/B+uoM=;
	h=To:Subject:From:Message-Id:Date; b=OMGAJtICEHcQ78vM5ZJU819xF2DSi18tpcYmEAxIhTR60ytD3xGFE2GQ2SaRq5JWcrX52nseKz4m/pxnhsO20WQ7D44Csjvnzax6apHb2zaGu36zpZEgq8pRHjEdsJSoTidBWSCx9epsyZjbSR7CEodR27XYwI74IjrxHAaU3aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWP/EPGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWP/EPGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDE7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751926193;
	bh=6cNG91jqTREgBHn7NW9vyCiUuKk+wawdqTsvN/B+uoM=;
	h=To:Subject:From:Date:From;
	b=MWP/EPGzp3E8Rp/GyNb1yMSTMpvK++xb8bRmoKwmBQwalsaOPeqBSBPo4AMIGaxWl
	 SGQ3wpKgEM4S5nUWTLEju+OgPJCtpfynm5AiyZpuBGsf+OxveCTbFzapFv3ZfNqulB
	 9Wwswb0ClWYuNRtxvqYKtFSLI0qXVXLfBLeagqj2A8VywpVnRPLmLG3sznryMGpoUp
	 xuxsKIhSCKrMvgqx/7jR9tI6rvXeSEmiY7MIcgBE49AIslfoF2SB0/o0lG3zKbgp/F
	 ERyxV6aPccIE/gWzt7au2xGLSlM+ywUYuCyp2WmAoEXh7PzQzm4oWah0yS9J3f45vq
	 lZcVv2t83BRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F911C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192619357.30049.4296999059833083275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86582f2dda3e7525eb9354105837c1a64eabe9fc54810881963775e627aeb8df
Date: Mon, 07 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751926193
