Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7E18871F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782517714; cv=none; b=Lqb5eBO29zrIRwfptkDOzSViwllR6u0JwvVN6ZOqch0R1UdkWFM0Ado3I0Dok3KBwFiz8a0enfrv9YIJYY/MoSm2grekIVgqhNOKgTOBVCwxSg6XmJ2G1UB4FEOMBX20FXXqddsmA8IUWnApCO6w7YPQuIsHpkQLOiQGrowWfck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782517714; c=relaxed/simple;
	bh=ZhG6u2aBTquGJwpP7GQzJToLxFf7y3xySdO6pljLqcQ=;
	h=To:Subject:From:Message-Id:Date; b=eqN1YO8onjqj7ud9sYgcoQD4MlSsrvCZGPv0rr46Bjxg8inefAUq1wd9X7efURmAM9UrYHgcv0oQSMkZdr/eTR1VY4IdcduwRz2IeYC6fjKS8CzLVR0d5c0A3t4449Ge00zIw3HKG/HennedKgtUakd0A5z8uWrBzZGpoDym3ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7zddiPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7zddiPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3419C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782517713;
	bh=ZhG6u2aBTquGJwpP7GQzJToLxFf7y3xySdO6pljLqcQ=;
	h=To:Subject:From:Date:From;
	b=N7zddiPZWxHt5HXGnHDgtp1l8UTA0cR4qxPfRowFD+riIkmGssBVLnTnI+tuCajUv
	 3vE2N3YzRSsAlVtQLrZ1+Bcg1U+3sWoMg7WYVqHAeloeN6r32DLtZofv0RS73Ep2Lo
	 RR01RgQjEap4TSc6Qrp7uR3o/QoOJlPCjBkuc23GNSpPiP+UDGDPbPljw96IqNlRTz
	 iFfFCY4BfPGg9ku02ivpbFrxvZP9F0gESkSUCsyKe66aRmPkAtJFvIp/Z0cq7+DIHo
	 8VJdUDVoZ0S7pM6Zpq2Mil19o9v8vmD9q4Fd6LeTeDTGIW7Y5NUsXiBh5Bi2GsvdBf
	 R3FcvAsX3JsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCB5C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251771368.6328.12729818640146708139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231eec4c7d472f25345c00fc8908d52089e2b572515b46e077c72708f4f29381
Date: Fri, 26 Jun 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782517713
