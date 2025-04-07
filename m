Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6545680
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744033194; cv=none; b=EEZsXHRB0laOyLoGZ+m6sWzVAhv/WhEF34BT5jlZnfn/G+NTpj7Op+Ko6XX16HbEQLes0gzN+MOsTPAj76TliHNwomO8IXoAuNWH4tfCqaru79AhCZQ8+jnnvLCe6DgYBgaOrxxZVspsuFHe5peX3LNmSl2LoQ8ujUSNYXQQIB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744033194; c=relaxed/simple;
	bh=5qUVDCMTzrhWtRmwzaUYpp0pU/8rhJO3+M7c/yQhojQ=;
	h=To:Subject:From:Message-Id:Date; b=dIYu5JyKHglG6S87W0dIgf/lpHE/AaPNBGIxpFb/7RQ27/f3tpopmAAhCXk4DaYeRpNh88oyCQOPKS24Q3T4tAPAnntoh4sofZ0CPUyX2SdGM+ZtPUQqzCDmTP9oTw0o8XZXm7au0iCclm40q8bx5MlE7ClTdeM+BdwE5ZvWj4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di5CFqbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Di5CFqbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744033193;
	bh=5qUVDCMTzrhWtRmwzaUYpp0pU/8rhJO3+M7c/yQhojQ=;
	h=To:Subject:From:Date:From;
	b=Di5CFqbMWkTrTxW2Yjz/4cC4A25NisOY5nbo+hqs9YjYsriRIvjr2p3weyoRflffc
	 e6X5vubf9oYnHI73AtYUUSbn8hiEBDTPUbx75Wn+ErGS2dgTs7uFbUpNBmrzanfcUV
	 QJV6u72t7FEaB0/2BXbUPcZs79dzINg+Nyqs03W5ANqBE/5MdScL/12glYbfDM/Ddp
	 ewpyxuqhRz2Fe0Wi19arePZO3wxU0IiksybK0AV3RF1vAV9SSBPi5faAXWwIMvMMVV
	 jcfKGG7Dh1/WhppWPkXhmeKqklPokU3YCGYG+so86KLAQTz7u3X0VEoDWxtPH1tFuv
	 AgXpydIIx4OxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA8C3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403319358.16147.15229241380101138688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae41b466cbb8cbb73891c1c511e05c79512289aea288ef048adf6c3677867af4
Date: Mon, 07 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744033193
