Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C5A937
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772119494; cv=none; b=u75jJYavw4CR+spjcwrbIrwpF3ENH+BxOFOGcbiucctcUY6g1gubUurF5OCioIf0ITzytBr1wFXYvuR+8vCi0yiNkvmAaP3WkNKtY0QV0SbVJPgSpuW4sLO4s+HbqlVFUOr2pm7+lYxKv46P7gltRbMIim2NmR1Uvs+umL4+vjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772119494; c=relaxed/simple;
	bh=X0um1ph4yVRJYKaEbCF2z2oLVYzRzGZltift7TaYf3A=;
	h=To:Subject:From:Message-Id:Date; b=j1I7nxu5+bgm4qL3CmYm5eoVxKwZ8QxCVIP8XgqcLsGJAgql7jEEjFdcMqa5yMsxTMopznByOdxzVq8Jw97q8nE9dj7CyK5XqIo2/YV2S1D7nai60lPQHWc9RrBzZirxyy2KmPN8tDm+II4l7ka+4YHPmSKHxYe0Q+yl0WyMzn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ut8abEHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ut8abEHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A58C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772119493;
	bh=X0um1ph4yVRJYKaEbCF2z2oLVYzRzGZltift7TaYf3A=;
	h=To:Subject:From:Date:From;
	b=Ut8abEHvslgRKOMf21HJGyirC2GbcvKAZACVrTy+Jpu6GwXqXAiV7cZ4JFFXZ+yjF
	 L9nxqKq8UZd29/XpAzYBvK071kUN1flAK57Cs+UJ52EgGyUh6GSyCIb6rnUsciCfOz
	 IVbM/Votuyv7QKjdriGndeqV2W3+iv0CDpsp2ZeejF3AL62u8z7GDCClH9ZaAspsL0
	 HUAYbVNCc3F6tAHalK3PiMTAggonE5dGFnIJzWw2n9ZyV/7X1SRCuuc0n2GEBfIKCj
	 68GXi0XhJd53M21d4TO8ftjtohnZYJH55m96tQ2xTGJVBV469H5VmIZ8Ijl/gp/Z1T
	 JCn/hPIzBKisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E79FD8FC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211949360.21605.6692484575444585454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1233d1aa6d2f6803696199a465fd0b60e2ff1d5feab7e3ed6314cefbf570e468
Date: Thu, 26 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772119493
