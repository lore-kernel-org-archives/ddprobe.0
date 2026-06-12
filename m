Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBCF392C5F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781236594; cv=none; b=Ssk9BpuPMC1OM9ZXINifkolOPBlLh03pp6ID0Gxr/9dLQ/nzdtwcqX/A+orznbW6Xj6MoOVmC16dN+yxRmrC6jCcBmqEBa01QYV4eMA+9DO7xy7SftDR33xxvxO4Oiw7bnrgDkhQvpY4mvPc1T41fzbBpB+3Jf/t63yGfcQS4qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781236594; c=relaxed/simple;
	bh=GyY+K6L8z74/oyc3Fuy/VwPzpp7Ww83rGq9Zw6YjQMA=;
	h=To:Subject:From:Message-Id:Date; b=r6hWrWBdvAwL1axC/Ar4LnC5y0xxYEAI0O7rBRZLLlUVu82CTCzQzkGYk1kZ1OOp0BAq0vU7abERpWS9ym4Vg7Z/A+Qr6Ky/n3n00Wq9WPdVccvVZdcwDcdu+477TUgPdHit2iVAZGxFmUyx2Bft7JIECQkGhYjhF/2VRbkyxlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9+LRLHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9+LRLHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3866C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781236593;
	bh=GyY+K6L8z74/oyc3Fuy/VwPzpp7Ww83rGq9Zw6YjQMA=;
	h=To:Subject:From:Date:From;
	b=J9+LRLHGQH63kdzij51wgDe1htvuO9SX1+BsGBasmyFhO1liQMirrbhLgQMUeuEDI
	 iLVMGE6+D+LIbOsQcmayZGPj2dbFKr8LSWGOrkg0Erl89NZc2xpakCNPGGbLDqIXS7
	 7J7AcT3+mW/CfNbW2i3PFRQiZgZ7wxoJ4OlUT7LcjvwwOYHw4Zopaa4fVlPq1qhZQu
	 hI6Xv9lSOYcnk19SRmYTPawb1mU/G9riKCxDhTCOLOvUX5hvGtgl3f5jIKOnaZEiMV
	 3XDIjI6Ev9NNY94Yf2B4yxnpJs8rcRuP84dUMQUMjVmyHVcPrsa2CWTC4Kd6VwCMyM
	 bh0JEcaNxTH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5945CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123659373.31152.14709810067523760947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e393f74d34c239d6864db362dd26adf06ee59694a9c6820c73f69fe92e8b9c2
Date: Fri, 12 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781236593
