Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4DB225A8
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711737496; cv=none; b=G8AKWiq68yR8FGQCLGoiiaLsNGJxMDbFfs4LhfNKKYpdP1pepBM1BLAuSencL84vspEVHuP0iRZxoC3D10hIjEIvuiQHpo3OAseoVvMJVLPeOH2QEZeIk82fJ34LC2cAHGivTwvJeWSUnue17KCGPJmj4YZ9DViFD3hDZ1UfTe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711737496; c=relaxed/simple;
	bh=B8msbnVfcxG6PnE0/J4vHJ+HNixnw9Mi1Ni5Diw724U=;
	h=To:Subject:From:Message-Id:Date; b=tnTMk+S95EeNrnmjgScp7C9KkH9zRcqMjapcqlqIWoaI0MSaxyZXUySz5WZcqhuqBOzuRqICU1T/zBTlz3/dbCFoEDU4OrKetoBYeQOE3giICuFBTTXJZ84nxvGn9Q40J0t1x/UoiuRicW7nsbm1P8WsTjUqxitrC75sSp1OpwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjlVBdYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjlVBdYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE38C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711737496;
	bh=B8msbnVfcxG6PnE0/J4vHJ+HNixnw9Mi1Ni5Diw724U=;
	h=To:Subject:From:Date:From;
	b=JjlVBdYBcRAP1YGLTXmJJ2ExIrvqdICyG3bNpWKgT+FTTkOmUR4d/AXNutvmQHaEq
	 3xLbaV8mXgyOc1Cv1tq25wuiyvec3iZkniSXmW3eVpKlulKbXmv9ZXZmAInBurYDqC
	 4wYGafGZXWyWL/4Juf5PPat+bNCJ10nU9h4ExMLjkKK1mNXMIZtM+7PeRre2HmAR/f
	 2Nu28gYZx9lfxrPPxBMDyj6l/d51og0Jcsx3ItNJl0xZe5t96I4I7phAeonCXpUWbe
	 iuvb1xfi2TSeAvlKyzSNP+LqND6HQVaI2nDsKmpRVwplNGdr4IcaVIhDCkKLkdxdrC
	 EpYuxFfGqWsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E400C6FD1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171173749637.28304.7945538114022632838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f35bdc6875a0262e94254f8126447dc01f7c14cffa63a897536b38672341c5
Date: Fri, 29 Mar 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711737496
