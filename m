Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4249F40DFD6
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777092454; cv=none; b=GEATTGJgnECAbyXObXsA49YmFBcqWv1hVNAbkBlt9DE3Hx9/Q6HsqGRdaNqOvoTP7W8zMQg3MV3MuYEFCK7L1GixrWWFy1Q00SMpVFBHV+uPhLsdZqX/oOiV++7lzmNFGcg+9/G6HIs6IdJO/XV0Zq2yIVS5asgbIj5VEI6wzQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777092454; c=relaxed/simple;
	bh=MqdnIDWCI1aoDSrhaP+1ZwQpfC3twfJ6pHmMUL7a0+U=;
	h=To:Subject:From:Message-Id:Date; b=tbtWZeEOkTBeM0Wd+PXlVkBKUN0Z3qrA2uuCVbx0b8bsnLpB0B0bBReE1g/76MacoWXdVeIJTKGP0Ll4+5qvRuHJmc1WbkU5GswRC7gneMUstVaj6W1Tflr2DCXIT89wQiyfDmAc2p5+8qoi0xzJL0Pbeh2wDBjFQl78SCKD0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwNAG+7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwNAG+7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C1EC2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777092453;
	bh=MqdnIDWCI1aoDSrhaP+1ZwQpfC3twfJ6pHmMUL7a0+U=;
	h=To:Subject:From:Date:From;
	b=lwNAG+7JygiS/CyQiUtN2nOuS2jKItyZopPebAqM5/UWIGQf4AAEkKpyN8zsB6kFP
	 M2phvneCUEhSiB1i2CBF3sfAgJwLnVvyPrDfEXfuGUoTQ1B7ZZgMylpwClf4p/5wMy
	 yZgnhx/mc/GWwnY20DT6aX8T9tROhl0x5hIip/aOIZ25H7jJ6PiJ22JZFi95yYW8SM
	 ZnZ3WFyyZkmVVLnLtpzDYHbb6oTvyh8nDoX6X/nUIxK+vN7izmo3/J2da6HR3vsyIj
	 qOrNZyqPEy0vWnHlSj4pCy/RC9x9yYDaEc5dPuheIbhnESr27xCtgeflHBxbblgF1R
	 0/3bSBliG24cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCAFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709245368.10462.2918430930545714768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7297b547cc354a9ae193b1a64aecbea9b1dad04859ad2fe45ea6b0b7fb6bbf82
Date: Sat, 25 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777092453
