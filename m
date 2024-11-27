Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384C2B652
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732719354; cv=none; b=eWbeSiEbPXJ1HWgBX23bJN2ONFUqETpbKEx3V99tqtTwtVVrDU7V0JQwbDPUsk7QUL0mtLvrPKbjCB38xO9v9Enm2CSUbtZQLyR7cPUcNOPcD1zL6S3DotTq2HQoVLbHFAucAIPd1M5okyC2N654jNCsJE3JiKlkuQrP+GZxuT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732719354; c=relaxed/simple;
	bh=3p5Wk2KdxIMh4SJewv2+AKXDaP11GQA2cri7IAJukfg=;
	h=To:Subject:From:Message-Id:Date; b=VcS1HXNhkCkjQvviNNOZYoyU3U+5GmZozulArcq7Ofur3zsknkMwmuHxzO4TLXUGniNcis7CRXOwBZYIgcqcqS0Oxkb9vvKF0838Jdl4Hfo5vSletgZfze+PyWIT0tWj5m/fPjb1PQU/Ox9GbcNgfuqyJAEuFgvjLxpr+sVJ8XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp9eBW42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp9eBW42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB8C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732719353;
	bh=3p5Wk2KdxIMh4SJewv2+AKXDaP11GQA2cri7IAJukfg=;
	h=To:Subject:From:Date:From;
	b=Fp9eBW42FcNuhKsvRPgVuGQ/K4MWjOHmHB9q6ELp9VlGdGgT2shHN5iX7hLCWjEPh
	 2EBu+vyqY4G+e6g78mV0B8l8PAk9EIl0z0A1JHE2SruHIhytuBKyNQ538styAaKTAM
	 w3+75eINdeHAA3S7PBvw4/Kp9IW/Pu8wODNMwz66SanzGPrj66BAyuKvBZCwNG+lJL
	 iNnVuy/TEY27OLT1Tx2RTQk+vyz5lDtZEWIZqHzvq89mt78cZI2asZZxTk7OG7hJIO
	 GQme9NZWaIteM6Mmuqed7/xEC5yZobNeV5i7kiBDUKv5AtGzy2qDdZTwkIOP+1PlMi
	 ++j+qU23jwOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F99D6ACE5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271935359.20716.8565005294809334275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322d62edecff9044bfb83e27927e1213f2fb308fdb0f310a23ab9abdca91f014
Date: Wed, 27 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732719353
