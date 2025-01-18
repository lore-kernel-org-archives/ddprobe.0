Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7FB51C4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737227754; cv=none; b=tFUN35ysuEtw1OnSzkRAnqWhCIape2vAFHy1yCgpUAIr36RHNd8lk5XMr+yuMITc15w3HjSMQxwTEPertPTK6OsSGPrMkX3ztdS8b7SkVRZm/tZ6j5zLiTk4wGD8M6u1TbmZp0zbdQqAc3RM/iRZy+1wxFGaSX5iR1TClFMkrOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737227754; c=relaxed/simple;
	bh=VfoeGYbige5fBE4etDo/xlrwSFeG1zt2z1Nc+AO/BBE=;
	h=To:Subject:From:Message-Id:Date; b=DePzZloRuvW1iqtBMIdPwgctXalb864zh8J4LYFp10yvAQNKHhGc4/Lxy11KzC86+OomjMQBdZ719vW38gBZhOAzl12ZM9Jk336en2yaymOaIOcp8RtaxLqVOcdld3TGTGRkD27VPy8DoS2LEqUutpc4j9G3XMTaJi3HUu3yf6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhqbUVND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhqbUVND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC47DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737227753;
	bh=VfoeGYbige5fBE4etDo/xlrwSFeG1zt2z1Nc+AO/BBE=;
	h=To:Subject:From:Date:From;
	b=KhqbUVNDpfOwlg02AdIu+dxsRBa63nqcgUSzNQom5HvSe8koUU+IJZmbfSbnn6Ob8
	 0MA5AbPPj5CrD4XiciMxOPa03jHqRMCWgi1wCD/McAEJwaowkmI7OUBKXuBKkcNggT
	 QHBW72Ues0b8Ve+qh8CYCVL8uub5J06ieC3saOsqjyuHd8JR4W0SkPoUy5WAhFOhP5
	 GdDOljZYngt7MuwDf1dxy56fC8rjnc3RBn1bC4d9T0AEmq9TOlZbSxGaEkLRKcsaPr
	 RrBYtcgum/nq/yFOclglPLulHccOP33kefp5BekUfs328TCPR96r0mNpJItyqi2677
	 TE1JTew8hRzcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199BC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722775357.20629.4262006654473871427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890bb857b956b2301acabbc90879036f5152f3a7be2a8e12c79db0905ca74d69
Date: Sat, 18 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737227753
