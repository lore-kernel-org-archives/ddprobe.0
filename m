Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD83C2D1F5D
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741108733; cv=none; b=FJ7Ah+AC5LOcnA65gFAZjPpxOtrj4wwD8mngZxjkLPOs82YhVXWOX3lHHrhLZXS+ZFSCMePuk+1G9ID/OOk0GpQDoB4QiTy8nF4X7CozWtw6GjBFQbUfiGkLrGuZdwsKAKWDPfrzDkPy26/tyg2N+QVqKkiauIp30inE353Y2Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741108733; c=relaxed/simple;
	bh=LsFizieWP628vXSJIG7FG2pXTsiK9lvFkdfZxqoova0=;
	h=To:Subject:From:Message-Id:Date; b=W/x9dreQ51rnkLdFdtolajufxSAx0pjfBLFs5o4GZM47mgnAtjTiIZrhPhyiuvlwdDX068vL1kHHrOm3bIheNdnj0S8tPIgByajQw7he6JpTjhlQoshA+Hxe+64d6Tk9h2ipQolwqbc7Mv6OF3QXhvNuzZbjrmNPQNXFuMqnMd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI2SWC48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI2SWC48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BD5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741108733;
	bh=LsFizieWP628vXSJIG7FG2pXTsiK9lvFkdfZxqoova0=;
	h=To:Subject:From:Date:From;
	b=RI2SWC484e1eYdJnxeCsVvpTUoFneWgyW/weoeA0x3Din4/xHwxoL2xrQMHjvRJpI
	 juplwvHmfvEvF8G1AaInecsaaPbcaMwhsdF3tiJjj6All04SCFQ+Z/2AxI2YfqR1ho
	 +AFfRFCM5AgcmjNN51y16M5XB6DZ036C5mB8gY2UMURF1wtaK7P+FRDwtTGOAvILh8
	 IPMgKr8mHVBxRIRa/91sIk1A+W2UlBNbcvon09m5OqB6DojsSkQvFdKOWQdxRlgb2H
	 QWKrz95siY3M8U1Ws+5RrSsNRpztwNdwrHsIW3cBm5A8FY9iKWja7v9vw/l5mrjkPf
	 OH8kpDbhmqDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B2CC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174110873361.31439.11631603939197400582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6959a7a10b41a1029fee948408efa16f50c9164faa9a29f4f29d1c475772b7
Date: Tue, 04 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741108733
