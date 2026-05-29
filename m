Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E92313545
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780054954; cv=none; b=Pgq1lJqj2uUI8QqMKT+6tFFnTyEVre/KD/8UCWAIYFmM3L5PKSucsIRs9QWzYh+qKxENiFyqLA52f4mdG9b1qyxEprTe4o7HC1cgil+z1egHLokvPv3uAU3UGwgWHgmAAaYm2ck80ErW8WyBd1mRjlVH9Lzzpaumhbisyguwo40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780054954; c=relaxed/simple;
	bh=25DykjflVMGivYY9RhwlaKX9Qu//cC4VNUcvTOodeMY=;
	h=To:Subject:From:Message-Id:Date; b=MQCsiw4G7AT6Xbx4Pbg0cUn+kvx97sbmHsQLMWm3mmVgtfFnBmPh1zkCnuoNwVUC2Pdd82E5mFYIh7YMwNsfrT9tNSiQGqMa48UeMIR9C28ZO+40GXt82HJnbE/4gxEO6Vpa3cbQNbnbe034OSG1Bc2XCezYErBze94ssV7AYkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJauXNP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJauXNP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14AAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780054953;
	bh=25DykjflVMGivYY9RhwlaKX9Qu//cC4VNUcvTOodeMY=;
	h=To:Subject:From:Date:From;
	b=PJauXNP5gN4fSGXcLfOADFLNUzLMds1ILE+LLS1FQ5o3tDbGVPYHPwLQgp7UmWktR
	 4tMZMVADaQYYb51vUSKgNAcxrKPzeYFBMLaHQ6yP8MXVP70ILkU2mX9omctLE5R1lp
	 ZXaHhEWg5OmifkAE8Yfr9CX/T2ZekoJ2O3l0PDK+6A+ALN8tvDoQSm8Ptk/CroKoYr
	 HYiwyCb4TsZOEwaJpU4ci5+E2myN7QMQwokL6yIYZX78o2rmPipnBb+4/S4MdbIK3e
	 gZ8MDu6/RTNPhzDLGsZrQhJ+yeZT0cQPV8Bh4FuKF/j6UV79kNP7x3oBpaX07f9edY
	 Eplx+pBmxeGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AF1CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005495368.16291.16790870866780611532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e27ab1aa51e5ff041f5728361f16cf70ad03eec12fccade5d7e1aa0b876a4a
Date: Fri, 29 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780054953
