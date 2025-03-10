Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DAC227E8F
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741613935; cv=none; b=uDcm0i7DpzD/2RahCpV63/+RaF9HGLQHCJh3lmiSiNWuG7EKRojF3ilAi8L3C2n07n07hbZtaX66GcjaXHw8y3DTgdCOlPW4ZftutnqZWFRSzH3rmqxNyznTzsydBmlvA9tZMbn7+8q9Jd15bALUb++Gha0pEog81wEJpqBb72Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741613935; c=relaxed/simple;
	bh=KBqecYKXrSxUCS+c+DN4MDHPuTdypW/McG7V3xo4cew=;
	h=To:Subject:From:Message-Id:Date; b=irrmAptPkS8KF7FdQ/uYgqOkT8wPMU1pet5eB/ZyT2yxeKCkfywGVJtA4T6DNasPTH1ft3mggb3/xiniInXjQJrQmmrJs8E3mlA42mY5do4MVqjgNkdBbSPejWuhszkvt897nbrXAGK++qXkq97WgkbKz0YfK9qO5OQ8UoHJ0B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFwtSiTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFwtSiTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C07C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741613933;
	bh=KBqecYKXrSxUCS+c+DN4MDHPuTdypW/McG7V3xo4cew=;
	h=To:Subject:From:Date:From;
	b=KFwtSiTitWZs9WUm1PRVXJVwGue5zC7bA8SpzILoYIXDKeqrZE1kOssaBVakn31zl
	 3aO75SRxXJ8L9sqzMlaDrxH54V0dvHY+rnLYUkR9DQCLh5EgTC5hiiFxctokJd1aZk
	 FPo9eGtKiFHNs1T/5PyV8AYY1DFf+bpN1Sz018P28/QUPyPgvMbCdNenEqjuwc6/V3
	 jb99LKtgWVhMUKBgE7ipKv3b7MwdoJ5PzP5D6hb4EA+O5xPWzGM/9XCfxl0xLHd4VB
	 CzJTV52nVRGP/xTvPXkeMVIVZwuKDUiLLlbUI0CbPWvAnwhJapwv1InynCqpOg3+8z
	 ECmVXQI2vKE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91720C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161393358.6511.10343514079686047063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3477f7361842b9ce222dad92ec52fad63264efa9f8bf4e2bfc608f22b8806a2b
Date: Mon, 10 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741613933
