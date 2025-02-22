Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31113204594
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740268735; cv=none; b=SM5i13JrqL81ozH0DEPIKsUcJ2DKjR3oMv8f8YuEKNl1QwDMbqGWBldd9FtmJ0pOGRf5r37Q6sf49CfNoUaZlx1UYgSAm2bYxe3C6XUot/Sy/1SfbT358RPZxiKdc385S/fgz22yWmq8gh9bBPBLsQAvM2WRKm5iM4vSdCFVshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740268735; c=relaxed/simple;
	bh=e4P/7ppeM44V9laKWl7HUYBLpspUKxAb4zmZzTytqBo=;
	h=To:Subject:From:Message-Id:Date; b=CBTQIUwrsgsdv0yW+IxJOdnU+G8jp9Z5GUCtMCxTeLYWD1/1Lr7s+Oy/1kLoxtcL/klH3ygOabNOrNmY5uffz5cfPr5g8BinPVqJDXpwl8wbMPKAAh52fC3zNUUFcbZZ/oLqJ1INHEfYC4fh0Ey6CzcXuwZQCdVda0RFr4r9+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3OPKwal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3OPKwal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740268733;
	bh=e4P/7ppeM44V9laKWl7HUYBLpspUKxAb4zmZzTytqBo=;
	h=To:Subject:From:Date:From;
	b=a3OPKwalOf5UZAxSDbNlLhVW/SY22Hne6bxfIGtxrylVR3QFA+JcmQLi2mthiBUHE
	 Mi1AIdXsqn/4vJdVP2S4AvNGdcEuNYAvCuUxtk/kTxDpY2yBvyFB4vCfJe2FSzU5iv
	 04ec594iUQ81Gwmrog/vfu4H1VhKRyiybeVdOfJzyyeXa+KlljWjDSJpz2z+TR0yEz
	 Y4dqpE00P1Yz8ApzoXtUXc6Blilgvl5kCGIrlKa6v/hnJaKAP2Lx3c4NWhn3YbBx1e
	 c9616xdXD4SNtLc/MSBgfOvzgtLbW4zeqc132pCQh67NNYDgz08vCfcWRDD5HyBf0l
	 V2kNvTL2RaiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4EC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174026873357.916.11039804113633786887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811f31cc7b28425f56751a0c348aa89e5185fb24d8818420f345114353129be2
Date: Sat, 22 Feb 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740268733
