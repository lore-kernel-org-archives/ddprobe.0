Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406651A76CA
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722360954; cv=none; b=Q2rWO74bCjjp3LxkPW7UyGQpQReaHe7B9fRJ5qSC5cP8g1R5nLJ7xPzg0D7ZOev6zAHnVW4jjzhquQJe5ZFOwyk+1gfCvj6raon6K3QGPqFSEHV/MAy8Ve+T0pdrS14N3eDnnKiOrjRjoFftDIJyPxm9mmJ8ZxxDyScia9K3+ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722360954; c=relaxed/simple;
	bh=Tx3q97QCrHub7ig6QqYFH00yJEecs/Hsh8o9R0FbPrc=;
	h=To:Subject:From:Message-Id:Date; b=JojjLwrTwIQHTODR0Etc4xhN2aYCjU8vTIS5uBeiZ+hvN4STl07a9nOyIlvNzHJbc1uu0nWPPqmKoGVicICRjD95suhD32vz7EGlQCYYikmn6iSe3tJ64kaFZMyJZGPZkQPTL6qtDcWejVgyJ1slWavjlruzTaYbcB7cwM+tT1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRrmxt9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRrmxt9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8717C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722360953;
	bh=Tx3q97QCrHub7ig6QqYFH00yJEecs/Hsh8o9R0FbPrc=;
	h=To:Subject:From:Date:From;
	b=aRrmxt9yGLsOQzC+nTmF0AZtI/aKwrvfVuL+QR29q5mGSTWOY82gVkl8khIFXzw9B
	 FwqTR3/W5LdSJs/H5IF92ptUKnkOcKd5NPg/Fiug2wkRFLiZEcLLIE4obYNRWPpwq8
	 mSteL31GUO/Y4Cnwcsryf4etgkbzmelPZRDxMM3tGi9G0bhVRQPB+MYm54lB2hMyrF
	 NOjD6dq8HzPso/i7TzsojTs/WPYQP2Dih2qx4ZlCu//p/azSh0fJF61uePHHeG5ld1
	 U5h8E4FrpRCdMd3jW0u5I+himcUiwxWUFFf02koHQLkD+QqYOkSe++7kmax5Ysm0h9
	 qzSzKdsbBddig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7D8C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236095361.672.16185105645841720848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa0353950ba2ab0f0dae87f47585d59ab7a92be561cabb37b295e3a4d6487fa
Date: Tue, 30 Jul 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722360953
