Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151962E1EE0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762988394; cv=none; b=Xwx4RAbdhMAC4EWVtHzXoSDO6gQP3rCP7nWmsk/85ICyu71YcO4u6cS7pFW4q7VFUhqzqsGGqHyeuWsb7GVTxjoiLpL8PgAD+mhom08JfCwNxnR4z/bi0S2zMm8Bn1zPck6NnvNTj0q7xZyhspjXkpO2O8jOtw8D01w+fw/OSiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762988394; c=relaxed/simple;
	bh=rYVeuw3aZrllTR6H8EMYZZ2xIhoRwOw4xPLqjN3rWfA=;
	h=To:Subject:From:Message-Id:Date; b=F/jSxtqF24+8dvDTx5Ri3jqueUzLkLiRecrFZKzpG4mOAq/UyYQmDS37YPbE6zmPU/fS5wGlwOV7WhzqU3/Nbwt4TbqjzfEkrX0DRFYkt9fiyo1/xim79OcTcFpFsMAjb5PXEdhPaK42mnRnaur+mnqB6gWXzh6w8MAAyGzTbEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=An52GaNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="An52GaNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A2C19422
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762988393;
	bh=rYVeuw3aZrllTR6H8EMYZZ2xIhoRwOw4xPLqjN3rWfA=;
	h=To:Subject:From:Date:From;
	b=An52GaNhS1xoflLGy8Y6LE9LNc1D4ujKAPNrRT92l0CkHtcwxNpEAdRqUvMktODs4
	 mbiBrnbNHNUuYkN1zQlE4tbqPU1d5o4DiFrSnG0Utf8E/tIIeGrz1WgYWaDljhsl6n
	 D2ZOfSR7kMB+IPdZ6wdmY8P2D40oflbN9LeSveM3tOssNjtYFouuV2AcEq2XnHPxBC
	 nCKVHxxih233EL5h+LBSlxc5xsAKpZ5RUOGH6yVOOiVJmMWY8nORsEqpGDsIGoM7Bz
	 /M2kDU0GFbKv3UgIqRxhlDonUtuIBsfI6Dr+tWgSKDhVeZNVW9dR2OelI5i/m3yJr/
	 cA7Qnbsvxzj6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA6CD4853
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298839359.30340.8682116277176058764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f8ff4d24a3c1bc7fceebe3ea27080be6bd97b6c1b2cdfb5b9a2250e7ace9d2
Date: Wed, 12 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762988393
