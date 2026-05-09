Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97482140E5F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778338054; cv=none; b=XtauyXTJTMeO6iawu6eQwH3Pzzo3oozoq2Sbv8KZKH2bO8/R6BqrV8wMndWeOYgy5o9AA1Jicg4V3ZMkos03D5NOSAr4+wijdNUUKd4NPeveBLxsYcNPynV3FE4P/hteubUkKwxN8PWVopSf0jMQOQfQqRlJd2CNP1acFqAyAsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778338054; c=relaxed/simple;
	bh=y2dPPcYrhSH368feVMnoBFlSnmvbCaskqsb6KKVLyNM=;
	h=To:Subject:From:Message-Id:Date; b=ixqILNXuM8gmS6Tc5Vu60xJ7wE/VPF64sZTDPCu8Y3SK8tZYatKXOv2sGSR9q++vKqizUkKmVNDPoSIOV+KDF/0SvpGF4K8hE+XE+c/rdHm93oZrYjuO7myllKyUEsTszCYfNdA5OfisDVlOP6viDg0txk9/tEfnQLvzpKvBgFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2I8X6mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2I8X6mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45F4BC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778338054;
	bh=y2dPPcYrhSH368feVMnoBFlSnmvbCaskqsb6KKVLyNM=;
	h=To:Subject:From:Date:From;
	b=J2I8X6mofM6v3ABWk/EnrGP+pV9kMhyGHv/6fwRRHDRa0C2wmjtNX8BvvrJs1g6Q6
	 mHP1U3MDTBEo8liRYP/QfwOiIWU/BprpbtAptMNM70a7dLlf1v/gTi/OMfiBVWOxgq
	 TMaBN4t0Cvb+ilRiqFxdhB7TC4M8I9NIR9OBgfEe7Pu/GvnAnuDtLZWyzyIxcYR3Xb
	 oOgUu20axAVYZP6GuSt2ZlK/ixLWvAUloFS7+I4GjqhKL5mAtDDaVPhiTGZ8lpk6h1
	 OkhZxGCj0Sl7fHxGIN/PLT5e+4kZnU3lligVltSG4L52+oCzMAByDOvS19vk70AFVh
	 tVLXyQsBVgJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 016D6CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833805390.31229.2957454392339388387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12237b65ec80bb068af5083c9eaae2581d52fa9e1b0d2ffb7db4fe0e3f0ecf1
Date: Sat, 09 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778338053
