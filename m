Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29840248F6F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749796194; cv=none; b=nFe5G/lQl9nV6q0kvRG/mwzOluJJF+E1DL/GJiweQp5vDhmmlm9f+j6l+pG8nXMNZaTxcwKBei1tpCYMdkmKEf7aHr2AQan73z5CFMXxMlp9b5KGplV5GgvfTK4SQC51hRiKBT1njAwQll/ZyrHCyZKy7AEByKmH0OB0Rh3Nre8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749796194; c=relaxed/simple;
	bh=5Ai4vJuPjVrkBGp0jHI9FbsvPyjbMv8OnnslaEA/I3E=;
	h=To:Subject:From:Message-Id:Date; b=kbn1anYqe4MZLVx/AquBwI1E5vAMstAhUlrJ98ABi80Y4YBltTmLodaU6k4tAjX9ELPALMlbDS7QmxxSLNDdUPHKkNirDI6w300S3GfDHWJS9wruY0L5u2ma0Jx30prdoWXnY6FJ/UEpStCast8+N5V2gsdc77DbhLg5nEonlcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJerjR9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJerjR9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81E6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749796193;
	bh=5Ai4vJuPjVrkBGp0jHI9FbsvPyjbMv8OnnslaEA/I3E=;
	h=To:Subject:From:Date:From;
	b=vJerjR9xJ9JS238W6yLAjRS/08m+dlsj0PTJFOMi2FGtvmaKklun+YMcvu2kfEZ3H
	 Pf8szgay6h83e78viM39Xty9CwhRTZOnAnoCJcnlOd54Xyr+BAeorcY1UZGTGrMfdz
	 DnuFZHVRhp6cr/3bIzp3W1Z6NJu0QGWGN2+f+wV1GKsuAod+qMmSRtGb8gHO9XDsJX
	 Qp2Q/z3/xrHCeXfQlU07GFbkuaF/CUQAMDo7agy6J74QRaB9N6b4KlGn3u4t5fgzwn
	 nYtmFs9ygAZRHmapfd/N+xwOoc3XBozH1Iiz57NChF7fjD9ryUahHPknmBWuhPU1r0
	 ZdImWElLd2cLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A1AC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979619358.11562.3180894391036755045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0a088cf0ba1ccf7ff0110822ad0d0e7b292a95f62ead0bdc5b4d5343e7f67a
Date: Fri, 13 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749796193
