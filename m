Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E1C401A07
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785403234; cv=none; b=Vg2M9QGvBgC86vOOWeWcY/DichrjO528onn+iZ9bh2PXMC9ZudVX7NQ9iG4P2qIUTOCeyFDeJjiQdxBRg3426tazD0CVAwWshYLCq4M0A09Jch64csqXvXeWXOTqIMLv7ToZsC3uzXN8oa0/rxMDrl76rp1Bjod8rYfE/qpHx5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785403234; c=relaxed/simple;
	bh=FN+7FKsUTxd0Rs+ccP2rH/2rrhR7ziGLyLr9boqUWRg=;
	h=To:Subject:From:Message-Id:Date; b=N22gszVPWOTZ5CbCb9DF0rxyf+CNrlHu6tcdkm7qXYJs9hCnLDKXkg+aumOl8dWDmlHGgLh2vLuauJOmDgtL0LQqxFUETAmPfcASi46fbhykD9tAt6i1ExHrsJORrWb11gcBu5mpPaBqx3q6P14rW2/APWMPsQTeWdAjdk+eL5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgecQPvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgecQPvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0FCC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785403233;
	bh=FN+7FKsUTxd0Rs+ccP2rH/2rrhR7ziGLyLr9boqUWRg=;
	h=To:Subject:From:Date:From;
	b=jgecQPvvq6gsvGMPX2rfnf21kRcIg0ebXOEMeSSDgqbDgEM3kXhsAIiI/TNAFB33W
	 P8RALwd9LgyOWW9nx6zpXujLKn1k3GjYPo4SD7eCrDNrOFws884+q1ZKSKDQL3bJ33
	 nmWUI8iRs7uI9NFlJxA7R+VaQiw+/vF45nSl9V95vvWxCPck2LRnVHF2hFmi/kWxDP
	 QZhH3isO84KdNUUEcCtpsyu7blzDSw4hep+eMYZyZkxtascR03FGSuNSoo43uC3GPY
	 yPKBtohiX4MDqspZpjkx1mIVvLV00g/g2Jsw4kEXbS3B55rkROxhEh8MxncitzDFfK
	 CVtpBN0ebUyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39EC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540323368.6345.10029182943628400340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23ae9bae13617fe3b2473b1fd1632c61d476f737454ec933d9704bf9e4018d1
Date: Thu, 30 Jul 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785403233
