Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EF4374E64
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774686294; cv=none; b=Nj91ScCqRndYnpi0MCBorWrvBTw3l9pkncv/VitK09egSQkFWJjLs3jwuy4RVa4yXcRWB3SswZajnwecpDQTTKkJZqA29qPhPRRTkz+v1/RopxJQDp4cPriXyghE6DNj6kTe9a70K0SF858biu3zrAoRmirAVcU2IZLGX8Ub5Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774686294; c=relaxed/simple;
	bh=2oaCm4L+dogtBq69+mVAdP8xWKFJNUvDXqa3t1WuP6k=;
	h=To:Subject:From:Message-Id:Date; b=ZflpbgTUyWAfm1tmOUKqLOgmJLoxcmMH2roLGWLsMqIGS0ayGeSK46LThcqpFgMbim5Yo6GjzwAKb3v45Er0xshnWp/mJAtUHVekEUmtMrKShIgDxQ9XEQ+MsLQsETkL8RIFUetcqQvDvuMbdy4eDpUZCkn14QUfOELMoxumQA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaZntP7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaZntP7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4097C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774686293;
	bh=2oaCm4L+dogtBq69+mVAdP8xWKFJNUvDXqa3t1WuP6k=;
	h=To:Subject:From:Date:From;
	b=eaZntP7ugIr+rtm/MqUi2Dtrktk41UJhMGoDg8NknIxNsInv5+IbMrWn6ZiCvOMV4
	 JAGYv0k3XOUPubS9q+YIHrgCf6+EXhciv69TVBJAhCc5EomlJle8EkRMm3bdjaM7Ys
	 RlutpeT30w79Y1sub0c9qr5tuR2ce0G6hKr5sAc3tJxQFEdIqdwb/ML00ReKVI4IGl
	 WQP9IvAZuqQ1K8F/BiqIp6spUTI/I5PNDWKK2w9OSSkCaHZt+m2htJxyCAQqteSvJ+
	 +DemLIJp459kmJWT5kb0R/MfURr9eAr7VbZHWR6XxfMyXAcePhFl9a47lUGzFIJkhN
	 /BObAVHHA1tKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AB10ED67D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468629358.20939.14617640414976236283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3717b2a3c6f44cca6d665122c4c4a7fa97c9c00b7b6354c3175047b49385f682
Date: Sat, 28 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774686293
