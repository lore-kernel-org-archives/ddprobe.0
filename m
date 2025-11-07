Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420A7328B79
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762533594; cv=none; b=fpcYEWT0776zao18KIQcN/CuyeuymZg3XKX0V+MoFB/xDn3mVbTWXKI9GGQ31IUmPEYx22se4Rb1Mje5nhRaVeCW1CDYmadOU/0GI1vjQ7fUtunrSiAD5mPl6Kf/h8hbo4OPaldx3CwKHBI6BcKj+Hozf7DEwMNBz4ooidFVl/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762533594; c=relaxed/simple;
	bh=jRiyhXIZW7rRIxo4glL4ZRu+/jQ8/xwkvIunKwUdcUQ=;
	h=To:Subject:From:Message-Id:Date; b=uBkpgPPkkcVwfmXoYqNUEeNm8lnViXY2HLcl2dPwrnCY9LIhulhOsDcpvJCJxfwbWL5+nsfiB637JGHpKRPV2gotcw//rduhBzbA/Fa318494PEVeK0e5Nsv1R8tu3lvDCopZXbwn77Axty/yAKdweQSfZLLpwMRmRqM8haKsEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRbyChRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRbyChRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E399C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762533593;
	bh=jRiyhXIZW7rRIxo4glL4ZRu+/jQ8/xwkvIunKwUdcUQ=;
	h=To:Subject:From:Date:From;
	b=ZRbyChRbF5MRR047XYZUIDghvlcsYh+LGqpxSTD7aKGGnR0+VmkDl3oe4C0ChLw9L
	 X8uWGb7LpgT2CdXhzNGrpROZ8wmmRcZwWfA0fHABilfyyVswGC12fMAdSObNZBTpKD
	 RZAAWOqyxOxyplxH5W+XGSLuLuqB0g8aG+PXgbm3R/GTvp6qPJ63Awt+Sed7iv/Okr
	 A+OndlV9SyoJTgNIa0pqQNipXWUjrrJzWYfm0xF3T5Ei3/fUmKRS1U/h91JNWz+ZCq
	 c/NERVwu2RuxAq9qye0u1phqNipDnCx8sAAo6p3VsnSEwjr9TCQg+VN9L4KBc3gBnK
	 mVgC+bfJvW0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B4CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253359359.31870.11685475899927641173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6586df641ca3d8cbb57c75a6365432a4bea4c0628709b24f1d988da43b1c7171
Date: Fri, 07 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762533593
