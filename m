Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459F32AF14
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748629194; cv=none; b=U9WhGMOQj6eS49du/t4ywd8UMZsPAR6D5GB36fgramnyIcFih3WpCPBDNvVESExfOXP0rGlJST9n4wr/tVEdxKHEaa2qBmDxQxQQwUoHrqC/sn4esKPsVjXAI4LVwl8bAJefmUsah9pGM7lHnbmjyf/rtaNJUmuBZdNOFTqzd2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748629194; c=relaxed/simple;
	bh=5DyLT2BkagYNk//ISB/UTjPAJc2Njw3iPr/6cIelyjg=;
	h=To:Subject:From:Message-Id:Date; b=mxuSqRjieLRqJwW8k/pjsF55AuooLKeqJax0EfkOfzsJLBujZVrxJLTM+MbgZ0nX5db//jnMZ46iZSo5ci+eulNGuTaMYSvsKgriQHVweDl+cseKyFWw3g0jV8cJe9AiqzzPgLIpb5QlqtUVQmfrX665aWD8zW9s6+ASM8EcX2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKXMbAmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKXMbAmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A49C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748629193;
	bh=5DyLT2BkagYNk//ISB/UTjPAJc2Njw3iPr/6cIelyjg=;
	h=To:Subject:From:Date:From;
	b=vKXMbAmG8s6dhPNmK1RkzCWmVYDdm23zI+edofByz/pLFpera/Bn55tnqzfZ3bF5t
	 mw2L1cVDXViUdLAWfOeBi3gJJU+QInRaccI8AqrpyoWuFPxeijEcDT1+q0QpXDwSvx
	 /lMwQxU8XylG661DKI0fceEClPNkEpKd2ZT7jvm9EcyzyZCL3M//WXZNYb+q4qn2jj
	 JFNEsZqndYs9buDsypZyzEdGqy99Cum5+c5iEh9Zy7dGIDd4ZNZCLIopeqy9/mPivc
	 iWAfUd7fjgKDZtdniR7MIl/mspclvWoSN+0p4SO8FWidkfOwisbkxJoKDvVHkSUu/8
	 VNi2798HVmwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91950C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862919357.2626.7955567952969658493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5d4cf890d0fcf18db755d02ece782860d55ba7124414223e5439edc0db2a24
Date: Fri, 30 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748629193
