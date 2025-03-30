Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF9F3232
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743328194; cv=none; b=hlZ5xp3ghdxIb7RFTxsGLNvQc8d6CDcxGz0w/fi4vXdtm5x/HTmcw/oMUjx9BQq3v7vJRpZJPfX73eOiFngVB39HCe2+SKPrGazvi/Ty5ZesGPZDGS8q0rmkXImhZb1EEFZ0402nCB5yZnBu12TjaGxRUoIJSQ3U1+8Ff7EIB/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743328194; c=relaxed/simple;
	bh=OdmlkMkBZziba7gzuH/pnmV4XnjVN9J/PT7kkHZHYr8=;
	h=To:Subject:From:Message-Id:Date; b=AjedVeYspck8ssBPdCqyHwhUlfSVoysQnk4q5bYXaUqotvHd/wyvVE1icw2Eei1bnk8wwyVAG6GQz7bNl06FuR+7M6Q9yu+8j6WIiQXKYGJVi/sFuDaXSQqKu/TC64nRNUtHGbgaGRqoSARX7B8QoIXKq1CpJbArVnRJZbOiwwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWAs05VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWAs05VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4493C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743328193;
	bh=OdmlkMkBZziba7gzuH/pnmV4XnjVN9J/PT7kkHZHYr8=;
	h=To:Subject:From:Date:From;
	b=BWAs05VRSxioiQw0cKa64KGCefhxgby9KT6etkhnBjo2EsFHcUsgu0tdZwmXvXXav
	 7Ex/Eb1jYq4cTFGpHs+pb4Jgv+lM6LOM8NO5zv37IUXpK9Cz+4iPEfE5Dr57atTiX1
	 hf0G9MHEezqcXvmfEMsculfyXQDhP2I8ha4Cm8PLCf0ybYk1JfPmf9vYSJtz/LV7V4
	 C5NviTkBg93Vba4RRjclsdv3bvRNJb56M0QNmyt2a992lJmFuF5sL97Gkgik/M+qrf
	 S2zWHwRdHyPi1DC82WLAE8aoxoH6PL1Sv90Pj15zJ8z/0SBWhN5mKnWDTt+EwqEfSP
	 WiAwgXkrjvKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6DCC36011
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332819362.23564.14256894792104149182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaafa4ab39f2e52014b6246bf3cbe26917e64dd6dd4ded0975882b47c568d39
Date: Sun, 30 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743328193
