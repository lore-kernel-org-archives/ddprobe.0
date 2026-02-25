Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAC62135C5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771990494; cv=none; b=nhtgO9kYtT81KfO/f45/dnkedypE/NbQuifD4MsCN1LP8b5w1M57epPOwDLfCzaLg/YYmpw0mJXGDCvl+r89IqC6gygl3OThcznzG11FWLR4IjlNsnkVDy2AP4JO9b0HbrFWYGS62YoP7qB/WU+L8r/ZCKi7RTyJppUqCNfIsC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771990494; c=relaxed/simple;
	bh=mUSl0hk61A1jjVhAMN0/4RYSFvp0vnotcrbMVMHGXgU=;
	h=To:Subject:From:Message-Id:Date; b=E4g+IqN3GAWJP0eyKymf+obc148Kl29ZC/cfnSreIF8FOohX3iEFM4o0OOF7EcmlWlhzbufUPcgL/xmTncmBDMTR4XOcfc65cOXUG+U2y2Mu/o2UUrHEcFFECCSJgQgzL9KlOmmqs9EHhrI1lhl9dUhWPYpskcXoHlgctT7qqW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOjcyP6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOjcyP6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E15C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771990493;
	bh=mUSl0hk61A1jjVhAMN0/4RYSFvp0vnotcrbMVMHGXgU=;
	h=To:Subject:From:Date:From;
	b=cOjcyP6pVTFFfb4sJRJz61Us/JhV4x2RxwxkoNHUC9JpAtqJR5B6v4os2OKtQSJQ8
	 L+Lo4kAil1yRRdMHTYQz2fDMsM7PMLYL2edoS6urrK725PWJhsm95ascgmwfYzl1cV
	 Z9cmNbFq3eINYiWbeLwnGwHBW2fCKkfQ0i3ANuroGLAWCjOkrch2of8JMDoUSxEiPi
	 rvwwmaQ14Z02oTmPcp1K3RFXEaB+aDK8ca2UMrEQ28+prVcSAimZARekdhqpQ5TQ2O
	 AaiMQn98hX+c/lvpQPZBsjgJWXuZEBKu0oKFmV4+uHmwxrS7E9Q5VHLvSRJ95F0C/k
	 yfCwSqolFAwnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D6F5544E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199049357.5311.4745899080636721580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88964b28502a24cc58f0a87e554298e5632963e45fec4c35362ed8883255b41c
Date: Wed, 25 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771990493
