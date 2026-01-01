Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D20C2153FB
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239034; cv=none; b=PZGpTnzHVog4+fLPEPSxF15fLb0mSEWtVErW237uQNPoxM8h1Pi0qGywTHkHiPr2Sb+j8PP3NC56PccEvVr8ApQO/KairMMB7V2HeMSnuAwXNe03+WkH6bKTabQoPJK8Lcm55fKy3mqlYe0zQGBJV9xinY2U10tC2TlSxmA+ZaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239034; c=relaxed/simple;
	bh=Mgpb2jfhtvCY38Z2lCBTlLDhkTKvTQM2uZ3cMK4dz40=;
	h=To:Subject:From:Message-Id:Date; b=BOnR1z5yVtKEH2fng79S1yJuyZw4+2xy+a4oBp4xKQRjWwcjgjgC2utJgQa0Q/dF9fyE/GPUr+lxHVq4dKObd2BTrcQebDOWqK1y4EwD8D7+RkANNsiqF6h5IimQC9LQ1V5DmhEpacsYCF2XBUwi/kTzU09CMEwuynYDDHyd34Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o03/h8NG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o03/h8NG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00DCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767239033;
	bh=Mgpb2jfhtvCY38Z2lCBTlLDhkTKvTQM2uZ3cMK4dz40=;
	h=To:Subject:From:Date:From;
	b=o03/h8NG1T15Gls1lyZxQpcuWX5x0rzl58EB4LF7fiFSQALdv7ifMIdCkRfj6Rtis
	 pEktQ2e1jKF6IUIPxjVa5Wra5bt9T0efG0Q2M6PGo8jCE3ilnpmaQoLaLofQpP59UL
	 MJtqXQRRbjLUL+0PPFWFx1JtDQQS86voW0VdQ+QtI2z78hvZZ9TFTIHhc8vXaZbB9x
	 SycNzjeRuOz41QGEmmaIpvwJJNw0q4xaUpaqzhg31SKcyNzNuqZNcCMhuAS4+X4RRZ
	 zw8yS7h+y/Ej98iJ32Lan2U71rcnYTK10RE11grnOPV0pMjs7KrIL0pn90cBm3P16m
	 ishjVflXcXQ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90007E9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723903357.16506.2534101822486596613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2834c3bd43a010b103a9c4feab26b92b44646f65595f838306ab41fdd8730cde
Date: Thu, 01 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767239033
