Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18654AD5A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760228394; cv=none; b=n8uxTwTB0Zccy9e2srOAqiNu2mthLU87RkQUZsT8ASQQLyryG/iAhLbRRNoDYD3NJfYOWIRjpjs3/tAvztBDtFoRBDaay6sm6ydtoEzltOR0pO7bM/UKU3y2XmQxIXLLq6B5HKGFD8Wy+y4cxa84zrlr0e5bNxFrAkjT+GghFV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760228394; c=relaxed/simple;
	bh=ZOQbIVeFmyOIiSMl9F1iE1Nii2isZcT6JxFrtp8j/hQ=;
	h=To:Subject:From:Message-Id:Date; b=Q5V9KbuIVZdF4nx4jo28VzNuXD2vEkGP7/NfRxGg3XEk5RHGUtQISUqW/B2PnP+uZ4o63lrPPOa309PXSaIYHNg9hDYhJmCizeM5gzWiUERawEdSiSO88FK3BlLUXW4EZdYL0JB0VIZykaLytlxqtI1pIpckVQ35+ySJCaJwbk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm7qp9/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm7qp9/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44CDC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760228393;
	bh=ZOQbIVeFmyOIiSMl9F1iE1Nii2isZcT6JxFrtp8j/hQ=;
	h=To:Subject:From:Date:From;
	b=Bm7qp9/2WeLqEJgPmUqOxGL5uqIyyyRmiuyLsYAA18sIH8sNUdUGm5WNF3KgCseD/
	 iNEkvSMF+1meMJYdJJ8L+X64hmL2CEocgbed/Z3ljhWvr7jxXIZGrQGSGj37UctS9I
	 FmTkKpWpkj9rSBXdVW8RYeFsibZTqxjFxNdtHe2jGGRQl2ryNADSmLc1SKg6aopX5/
	 492IIRiLJvI5C6KmWgjHaXbK3QPZv0BptGENxGOjC6tgClo/8D5ul/o3vRHotHOPbh
	 7KLWOArdu/3GfiVe/xb0hDVkKdh5F2ssoeYUtJwzRoeCVL46HRiCVuD2YYNVLiaRF7
	 oZECF4N5yzj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E11CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022839357.26804.489006673192731316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb6f45a66ecb029b5caec62160d9a0ca2fb9f6bffd0bb7c14278648f79616e1
Date: Sun, 12 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760228393
