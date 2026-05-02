Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB912FF170
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777708654; cv=none; b=hS2lo/OPAH+1T5D9VADetYCkeQzDOhBpXJ2FdIaDnkg+hpJaMX3469q6oT8rEGHfWlXOvCcMgOZU0fssUC1BxFuTBUZ1wdYeicu58/HKhEOGkVC1cuMbtvRo3X3OwO+jtMxqdD4Eb1uymuVabLLCYdEKWKzkJpTDgWVQprbJBp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777708654; c=relaxed/simple;
	bh=/lbW3oYcsurJOWta6Efy5nCYLGzeykWNuM98foqTy9E=;
	h=To:Subject:From:Message-Id:Date; b=d2EJg1PXHeCyFIN5ojIZIz2tbjVO5bjG4QFr3EJl9H0O2J00xQSW8LJHkR0uhO/LGSu+0NVHa/nYPOHLfwZrnSvuJapfsxj/OB8PjOpW9CHWHGV3swQWTvbM28Bax/yTUI3zjtqZHqs1DNJRaEPMn1lbhqnd7pq/y2xnRFX2ht4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMBiDivA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMBiDivA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA62C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777708653;
	bh=/lbW3oYcsurJOWta6Efy5nCYLGzeykWNuM98foqTy9E=;
	h=To:Subject:From:Date:From;
	b=sMBiDivA+XiZoJjmwIS1kLUJk4jMlcAi/Y3QVPswnLBREawHk5btUbq+ALBjP3u//
	 Yss+oNbFxS/Co5zgzCtkPpz9rFp1NPn1IYCEPE8uQ1EQN4svhYOzwFiI2xPJlfjbQ/
	 cvziwXeacfNU0qB6A5m6fUda9CJ2OrUeNBevpIooJokytK3aBkcXfQ5PtM49a4yTLE
	 WfLyVuf+atdlu3+HSRDoz1q3/eROegX9riSs08Wt0t24upppjtyxTQLqMyVI9kcH4L
	 pOTSlkXpCNDiR9JkY9WVrkjrKXmoX2i3jPRAGr4tLyjJpGTgImof8eHQX+DeFaiLVc
	 MsmzuwrkGxalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF532CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770865368.25964.16588220207738056523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2062f23387fa5ee2bda79d33bf615aa7eb58d9d169c5afb6f5f93566da34d15
Date: Sat, 02 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777708653
