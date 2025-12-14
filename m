Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094B92D77F5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765702374; cv=none; b=Whjaa6jaDAaLSHHW2YQRsIN1amgU0Ed0ipAffrQDurvqagnsv/Itva1xLbC7YOnm6hslZlyde4vK401I3+wSt/9h2hWVHSE5SRtE14roFhPeJLIvI3HyTMPwpAayIu2M6tZYuZT5EcjrN8Jlq3F0R+xKX7Pjyn+2X0ME9vTR8qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765702374; c=relaxed/simple;
	bh=4VpdDcaVftI/huUIolEDZJSB3rMlfYI4U+2kt7PdaRk=;
	h=To:Subject:From:Message-Id:Date; b=sR9he78ENSYeuECGSLY0qdrxyL1qtc9zjxi71ld8FHySaCY5KgpQSCJIvnmqyWp1skc4vvpSIJ0w35hP9KCRd8SuILyurC+u6AC050b1WKz0sz3tcVEXcnINC/2wXb8AI0r3RZ+fmFvHJ6n9G8rAzW1GA4fxLiLHkgTOCNuQfE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFTY7fj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFTY7fj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA73FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765702373;
	bh=4VpdDcaVftI/huUIolEDZJSB3rMlfYI4U+2kt7PdaRk=;
	h=To:Subject:From:Date:From;
	b=BFTY7fj/ntjS3aRICn8YX9e1u5QTFvCQ0w5BqI4Ri2W9YNs3+3CzdZ3ovPPrn5xip
	 hYk2omasfI0pXQ75uGBOmkCNsexihTPnIIifnQBEnKIKd8mkjdFDiNOyk2ExVTBiUv
	 fAboLVlfXDUIG8y1yKmYiX3tEnS848RaENQR5tezaxIeQjXNz5QbqgcAn/PdOrRBdq
	 hKncsgyrbhFs7LjN06k1subB10EQc4HoD0eGbS2IPfjvl+/3Y1Mu8lvhwdtIvDPkSw
	 XKP3mdCAvTrORySVgI0I/PyXriKqCZLTm3z2LCnr5CxfJUc0T7hJNK6c09/ivLqG98
	 Ql1t+jZGk0MOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCBD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570237358.19465.13389871841251146231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a175984ed4bef80bc1f114c46d0da8fb1f2215f6247b052e22c5c08943d1b517
Date: Sun, 14 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765702373
