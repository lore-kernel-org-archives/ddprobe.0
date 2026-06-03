Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4169C1F0E34
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780502674; cv=none; b=pRraCLd3OGHAQdUoBjWadOf/TWnsRMPJG2Zfq1T30pXzzrwmQFCsentN9DmwREAnCJ2Mc3YZ8szdk1LJF6XHPvXRAa90lLNIDsypuwhPQjnX0Uvktsuq9R1Tu1bS/vgcRTl0NMOZxf+Lqhwl8BO6c837gUatRt/Bonq/wIopMjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780502674; c=relaxed/simple;
	bh=LszSbhVr30uNxlrtMdu+03+yR9EB9QMsml6sNvWxc+Y=;
	h=To:Subject:From:Message-Id:Date; b=TJQwXdFmUhMiG7L7F+f+Cbogl78j93c/S3naDqkHa49aIVBpL1zlKAnxuvt06/8HzJMhjEDQ2dSKcQwkZupN7tKLigAeLE7nOdK618MzuAR012vDP7SnsXtjqnazjSZ2TOuUTiIi0glARfWu9FoqPc/NeRjuZrUjTUGBoO52Y+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY/RcLtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY/RcLtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CE7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780502673;
	bh=LszSbhVr30uNxlrtMdu+03+yR9EB9QMsml6sNvWxc+Y=;
	h=To:Subject:From:Date:From;
	b=FY/RcLtu4uxeM1SdCOq+KhOugoB1VCzwQpujDW6vxuugIMIYCb0dGjhNZ9PBP89rk
	 9on35po3rNTEFiG4LHvIdNmEd/b4SbUywwfmZM3+suLv3VWxEEvxtIkyzBOyLD1hbO
	 3RJT7gHbpszGBNHhyWqQHBERrFGutkYrpXlrxtTTuupL7PDUvBnpdlCSnqttAjCQlP
	 vpWsbCrGclu51vFvCUoinXoXBAy8KB7sszPiNJvEFn0pi1LfQL5nJpaBZctCnhGpiH
	 ZPC0NNFIrK12g+gcFyQP2f0TPyfxbAGsm4O4ncNzZxkejpZ5I5De9L3TDgsm4SgTKS
	 X4nX38GxnyFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09ACD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050267369.7050.16590806915244603407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01572dd2d84621410079b4ea1f18dcd1d9ef1b68e8c1ceb76dbdb1c3c56da6ee
Date: Wed, 03 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780502673
