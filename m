Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3506618A932
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724969754; cv=none; b=jOmtXxFWeUfUNVms4fSltLOm5yLRNiYS37N8z1gZjElT/TA86G2XCDxECg9PpfJzEPbkd7sxv99OgXm93VUpItFUkesjTt3YKo5gas2DEtLsKpRAdzeecPqIzYv2HJaFtE/Bjub2A3SbwMt6GxISXR/AAaunoVM9UqmR8OqjejQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724969754; c=relaxed/simple;
	bh=F0588VDXJJoKaKo/+HFln+nhPPwmodf99YeuPGpM3z8=;
	h=To:Subject:From:Message-Id:Date; b=ZjZCfou/PF+2K3vVHCMfHI7sMIJ5m5dvBEgAQ/4wFESa5ui+8WiiBt97bYgEasSD66inJrKfPhhnPhg55OPxFL6x3JGOq2n/F5ycPq22g+OO0VP68yPwWnIL8XUrhYer36Vb3O70H8OOJGYjnVfRg25glsQOgAVUsvYg4SNS0+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfp0d2+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfp0d2+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA428C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724969753;
	bh=F0588VDXJJoKaKo/+HFln+nhPPwmodf99YeuPGpM3z8=;
	h=To:Subject:From:Date:From;
	b=Jfp0d2+dUyiG2Mat/dqF9QWQCte0jgQtBcV/9kvR42fTSy7eoWR0Zz7GBXdPBG5tF
	 yoYyt9pRgVoj3ulXDecyt5LeSB/IbGPueqMkYyrRRGKX5VkvTytxyLygsDbHnX+JBI
	 0PbYe4eDGOjd7q7mXyNc/69/KicP+DXYEv3E8mEMH6PA8KX4jHe7aZgrScldOzTxCe
	 PX7iJj0haHVjIvLcFozESzJbr0xy6zQ3DXtZUMMY21csnQI1MQOBta1Zs7sGeZxHr0
	 YDJojE6VVJJGqNSCyrA2JE3DYQ5j75HTJgo27229TPGVVijZUbcNZ4zi92FVHtagcm
	 iFtYRq5JQ0jNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFACA0EC7
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172496975360.1545.3554217356811466797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ddf3be5dc05c79992d297b15f7a2c5164b4f5d00afed936e91935320cc24ef
Date: Thu, 29 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724969753
