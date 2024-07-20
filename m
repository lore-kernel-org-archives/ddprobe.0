Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398111E481
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721516154; cv=none; b=GHGlCCa0pEixlPAw6H2IDVCUGUZTqU8A4FyhBnRDLn87iwqlP40dv+5d96J90RcOKNt/mR4wWnDLB+vN4xZkVeqdTXpUbTtIYShgmImXAgCL5aTYBCvPHha7ytTKgL5CAJlqCMbap1pW9VIWSDbyFt5ybUt76l3hlw3XMIozBBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721516154; c=relaxed/simple;
	bh=0J58Rhd/7xey3j0htIgS3auSxASJLIIx4tgmi2zCrFc=;
	h=To:Subject:From:Message-Id:Date; b=M03/KyVbrcOWilePjeZDPYESIRm1uN2uW8ZWp3M4tqK1mHonijMJAkXgXMcV/ybVZqwPyg+aRGVjwSesdXV2+vrKNvrTRvGxn9e/ErcFpYmJiMtufzFosbLQ6E2bD/LoKwxYMM4e7oPZtZ/vnOkQQ4pnARC3d5rR++v6vkANeyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiHpEqCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiHpEqCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A30C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721516153;
	bh=0J58Rhd/7xey3j0htIgS3auSxASJLIIx4tgmi2zCrFc=;
	h=To:Subject:From:Date:From;
	b=IiHpEqCz/HVI9su5YXp2npGwUK2C/M1iPl+wWxxLrY88UOxKNWFedZfxOlWCFBLRT
	 xM2uA+gZ1teUBoToj7PQzHjJBmt2wzkZ6ljiguolRAvJ2Hc0T2ATK1cslgMkGxo2kK
	 Fkz2FrXtsypZIVN0esGYapNXlHAQe5TKxR/ibJNaxJ9t53lIZKjTDWJTSiJeM2/lXg
	 dm/7sjWLBhaed+TSH719eqSwJ1lCVDJu2ypcCljT4nqIF6Mmay38B9DGKwO3o17W1H
	 coRHCH/fRxMWnbh4HQgMJqFSF59ivCWrMO4DAG+kpyc8m8JTKzR7jBMSUr0Vsx/Ybd
	 kktigc4BMgwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724BC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151615358.16146.12068520805537612400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9881e11118f300acafafcb63e1cce8c61f953879e9df769e5416c26aee51a08
Date: Sat, 20 Jul 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721516153
