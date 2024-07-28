Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3146D8C07
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722197154; cv=none; b=VvIWrMUEq2duTvkedj95ZsnqbPFSDF9S989q/kJzFeVKJAVXdBj2gcAueGV0wcCr3ylJ+032M4BtWjR2kwDILF6V/qP3LniZjNcQ2ktJk/xjNUTB/Ne+HiJP5g+lfYzSwZRyTeCikliikhuYgpqaLxVs95FmXZuZdrGX2Yq/Vb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722197154; c=relaxed/simple;
	bh=TP+F5KqvBQD+GAzt+dMmzaHLfFzeBIMyu4zXGA3UnZo=;
	h=To:Subject:From:Message-Id:Date; b=XdTm2HGgEcXOrHYC0lcdYtONSdoNUmwAEwswsbdkjgzCg7tAhP4i73t3+1OYgeuV8hIE1/h88bSxsjw4vod5nZgwkGKq+8bmptftmHbeXpV7WjSyURQE2fwrPCvQKDgmNePI1vZXNfz1mtPHNMfu05csAnGnUw+Z9S/nRbi3LcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TctR6jT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TctR6jT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02E0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722197153;
	bh=TP+F5KqvBQD+GAzt+dMmzaHLfFzeBIMyu4zXGA3UnZo=;
	h=To:Subject:From:Date:From;
	b=TctR6jT6cVRJoJf8JPpkImQ/tex+K+Y3gVmM6jhllz0MRPbGdhuOKaL7fveYoRaB4
	 DHKVTgx9wvNyjKBBa1crvqzWLyncu/CB+E/+4pTakn8OgaYu1+BU6KZenYc74B6zmX
	 ty6bCpbwLLotRirvMMlgzF9AEf09hv8accToHB3CjT46T8F31YE1bo9/P2RRGJL/Em
	 hQxCHZJMvOaAM7h/WUAfTI1LxGAcY8nBoIXYtcbpnJFD60/oeYbA27KQSOxR8/Qc3E
	 3yTfSgc9IMOcYoD2JI8nSPFlLrRv6XJSkbRHkqfudbZXr5FqvRSou3TVS8Mit/5Utq
	 mTfLAPIqeIA6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983D6C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172219715360.12861.2731277804846940341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d99e3ef4026c1c6ee0b6d47e599f4c4ac3decaeddd30e25dde7be5ecfe56ef6
Date: Sun, 28 Jul 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722197153
