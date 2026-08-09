Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5622D2FFF8B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786271434; cv=none; b=bXeJQPq0YlGfBgEMEstP3cun5Ivx3pT6EqJRMxngK6kJpOJAzcTEeJcxInBERau+35i/ggv6Q1E3uBQ0LkJg7JbsMAudLxeFpu9wHAQiFMxYKMTaYCF7VYNMg9Cl+EEN2AWMH7wKg1jVwSg4F2HJdZJ4oLsDS/P2rpmFQFdm8xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786271434; c=relaxed/simple;
	bh=gNEGfmE9cteXJ6wigaoazeOOeATRhIW+16g7WEGx+BM=;
	h=To:Subject:From:Message-Id:Date; b=eF68ipOZGiGjoyqMDtT2sdYmhu1vg2cdgtyvyPWbkKRHjhHEcnKGiiIypZ/uwKt5X/D7ivBQfeMS+4uxab+fSUH00WN2f1pBHafL0fNFRfcnBilu35Qm6IN0pHdvAumkhK9RScXKKyZIlvB0+3WvhZOKHT+uXz0YQN6tB0aBh4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPvNkv+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPvNkv+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC60C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786271434;
	bh=gNEGfmE9cteXJ6wigaoazeOOeATRhIW+16g7WEGx+BM=;
	h=To:Subject:From:Date:From;
	b=NPvNkv+kLYGRByeNqsxE3vD8sXPJS+P23ssxf8LEFgDwgc3oNGTrWrliFJIG7Ge1z
	 4No2ptdsa85Ktfcfg1BSWIPAD6gmtL7mZ0s+epHJUCMFLV5a4CuRy9Oywk3JX0Pqp6
	 ijAcLGCyoNbO9FOQEniIHzSPfo50tyIdxFnaaG+iQMjUli+elyDSLqGSdVdL3J3ZR9
	 wcvDC/6Ln3ycSfE0RaZ9PIZ1VwDs08b/RxgE+ghP8PFdCP1nkoFzeZwjGD4o0lpRb+
	 C4srZDRzRfx1bGan082V7DpgJJNBgC3IE04kt2Puqtvjha4U5LxJpLzf2xEPvUbZ3p
	 0ezmqX8puNBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E5C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627143369.24931.4381667511342165066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0e0276ee983d0b423cc72ee467f059e6de46c032261f4815eefde59f9acfed
Date: Sun, 09 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786271433
