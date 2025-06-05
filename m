Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4331E7C03
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749158394; cv=none; b=fdJAHiRs/cdVd71Seam8AmaAUl1O0gts7UCnFLHqP53UmYw95gpnHSl80+CGOARlCRPUvl9aPeKLkfqYNsXah768u+5ER+c6nXCYs0JjSSeO1//cM5jmLJcXNKppu+UGJr1mgyLu0tOA637YEeL0Qi//C2pDLkzc/xToV0/sw8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749158394; c=relaxed/simple;
	bh=nQ2mAoKSL3flejqwZMEsjN94LVqKefI4icT9K5eqbJU=;
	h=To:Subject:From:Message-Id:Date; b=qFmpHyt7X8ysSIT7m4L2c6P0L3H1qvjQU8813NUe2NNqZuAhZlskiYFIvavE7/1QIoxRYm+3Wh0vZrQIr/p401fd2B7zqBMV5E/7hhJLfCiML88O5pMUaHqiud8aHLuIp4uYJPFavBUg88usC5V8RPF4WLOUezoMP0QrnVw24ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfm7CSm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfm7CSm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F809C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749158393;
	bh=nQ2mAoKSL3flejqwZMEsjN94LVqKefI4icT9K5eqbJU=;
	h=To:Subject:From:Date:From;
	b=Pfm7CSm9XN9cotieVsr/lKDtmdGVes2U487REaUKuWQZR/Mke9WpGpLc8OU+vbEP5
	 ZI83v/NJf8D3I1Py2DSyC9okpi33xFice7PqwyI2mAHckqL5/ZmLtLCJ3n88DBP5el
	 D8AG0eOP2Eyps+Bu7jF85DEnL4a/n5QqovMlLISr0j8vQHpw0SsxLoKeZtnGD43gkQ
	 IJu1OMwe9LHcHsqsN0yuTxqTCpaTemtpPQAIfgLpItdwbrWRkoGtC9GFDhUqpwnMeM
	 3RpfHMLKiQZ5miTGnrQZa7pBnP/dca0mvXuBLhVRKLJlRdIA/SN73mSEYj/qZbWqbM
	 qajEgK2UR13Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90718C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915839358.19074.2562771431906966744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7c7e43ee539f9d91dd0ae6ccce89863408e4166b2e7b58c99a1e9b56b2ec31
Date: Thu, 05 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749158393
