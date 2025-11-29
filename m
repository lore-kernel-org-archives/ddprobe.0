Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AC22773FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764404574; cv=none; b=BjdLJ/C4C2hAG7BARqGx4tarYTf66ZRQnEetTnhxy8sStaF+5hX7W6KzvV15SfcdyflO6d4ft4yxGTKjQ5x9YLUKPXMtQwXKjRvOGWvwwg1zr/wXkPX0VxLcsbVfFpti/X2xta+AKh1ayAbinFULzWyLH+eV4pOTTltrp53chAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764404574; c=relaxed/simple;
	bh=g/KmguKla1BHfd9f2o1KnvImLIOCO6LRSRT15mCECsg=;
	h=To:Subject:From:Message-Id:Date; b=tP8JJYR7+jMMxKtiLhE0Q8zBDr6rVC4LtlioibV72kC1Gv6JCpULtsd4c8ERrgvzB+9TvpU0GmfYMSe3CKeKLOQMFhA01S/iB/i9H6ja6gDNIYukW2iAM23spwV41wGymETZ0nSjKrBWtbbCZy6/dJuhHV5fPaRJSl7mUnTlI+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQFDS2z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQFDS2z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C736EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764404573;
	bh=g/KmguKla1BHfd9f2o1KnvImLIOCO6LRSRT15mCECsg=;
	h=To:Subject:From:Date:From;
	b=BQFDS2z1KqtfNyfGSN609T3jOKbnqR2hvMVXEML5EPO7vFo0gdTROAd497cZkewhs
	 JD/4s7jIGz9Ioin7ogVmfhUUoufHfbsh49w8aRY5vjLKtBIGu27TFcsyGIA982fu01
	 WaUEXoR4z5j3POChUASfIR2aPm7JUIGpxy5a5l/33wKvU26NhPRHM1LbPCX/ZAs7kZ
	 3Sg6iSFg31ZTZlYdkZ3dcUSaxDaiI8PhnLL5oAolSbw1Z9aXbIOzq0Dz1HQFipPgKv
	 p5mLNamVpvoGOtFy+vy0UG2n0bLvpy+9isnt6F9nfx1vCc55r2vn2rHsXM0pyeonoP
	 clg/sULUpjJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975CDD116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440457358.4053.2390558656909484658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d49e0826dd9232cf0d07f1c8b716b43574e7884b871d028f4d94e538c7633bb
Date: Sat, 29 Nov 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764404573
