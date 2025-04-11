Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F44E1E9B38
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744355394; cv=none; b=eS69PBdHqaPqK0NKFhh5LHmnwAUx10TCJD9AZY+APjJQDvGgIHQDEyN+O7js3og+JVXa7y6JCZxtNPcIGfKPiBqTEF779QnBPKzHbaDS4+o24MDwYALAySpsWx67zDy4d/kQ6Y9CQWRBK+O09nfM9qwyD4f8kHiBXVquA2edS94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744355394; c=relaxed/simple;
	bh=fbTJ1h6YOwx45fkmU87Qxq8plfX8MWZ1vjOLwu14gaM=;
	h=To:Subject:From:Message-Id:Date; b=mMPtZ0bNFJs7f2Vk6/0pv6a6sPtKYXxQMuz3pYpZMeBHau/GGihnYuhHJPztUFv4nr/27M1+zAKaFn46Le1cBGF669m3i1BrYbPgz1e0szQdjoI8rvEgK517KHylyOIAbebNo8U6EuuDDHFF2gi2bI2Z3d2UGrNV17DiXu9kXec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irZnjbes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irZnjbes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB0FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744355393;
	bh=fbTJ1h6YOwx45fkmU87Qxq8plfX8MWZ1vjOLwu14gaM=;
	h=To:Subject:From:Date:From;
	b=irZnjbesqTOnQnwp12cG385HC/kcRoyEs52AABemsJNFtlpIGJYpXIBMBBIcoKVsM
	 34Xy04KldfTh9yOXQ72lQCfgUy8DDajWFMtG+wORbNzp2/7qWDAOJyIlYoXGBBGDti
	 cbsuFuB4exZS42bHp5yzSE42QWJC40FApwBFO1rrcT/EvHXXniYyVz3QYeQ4iqFKW2
	 VHNr6taSmS0rKxKJVPfaz2N7ahtaBmWIcZUnTuvdrd0G/P1uGcID7V+eqgoSy+Cemj
	 puEu3j7MDxTyol8FBdx4cHsSuJ+XmElyqkNWoK8Q4QnsFKGWwBU95H+f7aEJTI8vGp
	 cekqIvhmiEvFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A928C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435539362.17324.8895802350794370702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1029622dd15aad358b7234156a4f0fef24a00d169e620e5bb1f96ba0b051a459
Date: Fri, 11 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744355393
