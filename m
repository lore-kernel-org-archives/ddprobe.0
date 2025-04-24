Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC65292931
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745524794; cv=none; b=GoZX4YW2ICl2StyzpQFlghdqp4KRLhOpiG9MNNDmlOx4G6qfhiUpGfukjuk2spSDRkCbX4xrHqdDGeMqbqnUmTya+GiFG9NAO5+3iSzvY2Sj+kZCMbgFOKx17WiimesoCZlHi+Us4jTMIX21sCKuDRdoP5eHA0/GHVLtz6Buvt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745524794; c=relaxed/simple;
	bh=0K9fvHRXB4KFIf5FoZjyyIC1Yf1zfL816b3fR0GFEcw=;
	h=To:Subject:From:Message-Id:Date; b=A/oq1TJ8sZTYPV4PFLoG8Hv91c/QHkH7+F/nrcB1JKBDw9L4HShyVNhqywcflqwMlSsPCu+7NxEFCz1G6MEBetGNiAmIIb/vP7yy80no7radWNN28gfCXRf9CMnhSrnn7CHYo7EEvrpJR7LSpG9QqgOu6ZZgKU2iKuS3L8wNSuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFn1QfJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFn1QfJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1415C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745524793;
	bh=0K9fvHRXB4KFIf5FoZjyyIC1Yf1zfL816b3fR0GFEcw=;
	h=To:Subject:From:Date:From;
	b=eFn1QfJgok6CasX6SLPQbeWmX0JPIAAA7GIqpa0o2jcXHWqjZWnjoW2N2uUxGgBij
	 vbNj2RP46dDfCF2GAAx51FZX2+UIQHyA5Frxbjd9cnhZcbrmoYjCtkOgXWhgRVO5Xb
	 Kbwoq7DJRsXsxsPTUdQ49X7FwLWAvEEx9uaFIcCXF8y314PeTJZZcVP+Vr8yR2+OVm
	 v6+wpgMhIyDcLwhTEcB/wrIOkogfjdH2x8c6EGzqFWdZ8cvdInNrvqxYgW5tGFog3Y
	 Y1NyEMM0ZdxDjoQSOGLrnmHd8cba4xrqUUPU3SGKJsfvomnamiINYKZtFienciwYsa
	 hD8yq7NrjNu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1EC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552479357.4366.17904817900308026542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dc55792a7ea7340c6bfedd23585fac949ffc147103a452a1de3ce1164c777c
Date: Thu, 24 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745524793
