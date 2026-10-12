Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713F4A4830
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791820234; cv=none; b=OQCCLr/k0f5cAWJp87Cjth8N49pqXfwSlEK5dkKFUtuB6YtIE6xKdChivRI1hFGbzTLEIZq5L/Acm1x3wO92ZJTLOpJsWNKf9hLOCuhUahXCAiPxCJKNeed46jM6bcuVElHNQNOBvWWHAUenfjTCO8V65rDTpM0amlCCcVLUTzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791820234; c=relaxed/simple;
	bh=P/TLIl1AGV7o/pK2RQpRD/t7VyiX/6XtH4yFuBBVdTQ=;
	h=To:Subject:From:Message-Id:Date; b=UPR7LGHZh1Yig2Hnv9z+lLFfjnNeFMc89mLfBI1G5Oo2sVFL1v+9loAsr3KXV1+eFrYFM9ra3m8DiDW3LkPcGgJMWgNNFMWR6NB6v46o2IPXFjdA2ysTfV0DPSAbgQ98WWl1ki+dNqyre+Qat5EkQcXpu8YrupgQhVnnCWTyrJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNsiuMba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNsiuMba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C7FC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791820233;
	bh=P/TLIl1AGV7o/pK2RQpRD/t7VyiX/6XtH4yFuBBVdTQ=;
	h=To:Subject:From:Date:From;
	b=vNsiuMbaXH78RaHok/WVmkWgliQkY9g+svS+PytSz87Nqk6oCQAbJ2AvfVhOGcOZ4
	 czY0h2wXEnlMXp+WqPImIbABApnepM2fmMzz/M7/LqOP1YriqcgAvmhn8SrWzaagfV
	 tatDjyCoaK8r34UtrRBr1+8FMMTZmnwXP1H7jXyl6/Jzcq/4HiFxGbgtNDQarrso6s
	 p5Eaw9CmYjPxecApzgS89TkQisteDccz2bLmAd/uV6huDUxTflPTwfdzfx7IRONxU0
	 a/kgYubdsWdx0Ke0bJtOya6nsqbaW1WiNrv3Xxn3lf17H5/qOUHqiH1RJQaylJEQ0i
	 PWLxBW3uAmM7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2095CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182023371.18458.7823287483010623728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace98f5c8ba058a5124d6f53d0bacb9f2323b0e4aa3d66ea249474320e0b6deb
Date: Mon, 12 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791820233
