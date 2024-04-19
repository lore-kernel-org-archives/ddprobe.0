Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6C063E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713490763; cv=none; b=KYdPMvuPgQ+1ee9uYLNMMLaGd9j3dL2riWsWBT3dGWcL6qZy0/QED1HF5Ss1rR2W8JkGLtO+mHQjWQbrIcLnOv4AucFtw8v3w2O7xKPtMfEH2sKhmr+bAl7YzHsvjhM2QfVl+IEk9R7kb/hUIHu8NIIr85dAVeiozAQFRRcghwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713490763; c=relaxed/simple;
	bh=CK5Bbii0/X5ncr3VuNNaNFn6R5iI1P7Ua1P4YCgfOj4=;
	h=To:Subject:From:Message-Id:Date; b=LXpti/eF40YEb8ckb95bFVjzpt93iMsEmFsPjfDFGuyxPDg8WQUrYLHYpmvf7HvNJdVSqzZ49IIliNH2xYhZCOTyGaAt8TAwqMsUGpgmzlL4MnUQfEr0pAyp2V+DEAh8DDPT+MMeG0IVRRoc31amfarP4+DXcksFDApJIqvmZ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d628E8GL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d628E8GL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CE6C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713490762;
	bh=CK5Bbii0/X5ncr3VuNNaNFn6R5iI1P7Ua1P4YCgfOj4=;
	h=To:Subject:From:Date:From;
	b=d628E8GLwalo7WCEORhyU0TfzBwghpZSm43RAINTQwD/3CQG5DR3VWInnJNc2Xi2p
	 OkyR6EeBY1fbljOj27t3mBZmoDdhIHiM/cLpJOcOte7Mc7SDZTSQfkz9HWUpg66ziX
	 7NeZfSSmQziOEjGVMbidsMmaHj3UwyfUO6VH7eZQD++2Wh9C42O2eW+KPKaFBrrJt8
	 E8pU1JGS+tkfWtwwOhbIEbeu1jNBPYcdn/dMWCBxswZWCs8e7R3VWenzMiIRh/ngdd
	 1kWS205Ay9ydKmAcKU2G5kMz4buUHBxcN95DvXVclvZyIg18nSqFCPEqwSnFkfpyHe
	 8dkJPVfMo8N0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F0DC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349076277.22553.12256469054574275110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e7b5c33fb3242d3e0b30d998c81d732eb4b0826fe50a8035a4aff844f241d6
Date: Fri, 19 Apr 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713490762
