Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2849B156F20
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762310394; cv=none; b=CigYo8MM4BCmLDYC6yXQYYBFbCSFLVO+1pTb4i2dYl9S+hKyINeuxXLi2bGp+U79zPDf0uDf9DEzAaEEL3ySveaOycfof1DGPc00XEJx1lH36hOLVxVUoXoIQ6hDFXBLMbnhH0vxlP9OtOqi8Q74N/z2uTifn3KmUNkNVNLnpw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762310394; c=relaxed/simple;
	bh=FAcFNjs6BjOtVHSYCVfM91+0fRpy1cQjRxUAsbCwZoY=;
	h=To:Subject:From:Message-Id:Date; b=ZNDND2KY/TgZvRdfs/TK9B/05mzhvSyKgz7HLe68/9rPoGl7jEKCqckQQ7A37mok4weOvOldPfu5ffMFnmu9L1R5xk6AwKb54n3zGQ4GYahYbSPLSpcAgFleiBnuxkWgq5LHlY8hDY32W+MMOXrjklkgqaruJ9VXW5CKc33k9AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sn1noUig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sn1noUig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B228DC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762310393;
	bh=FAcFNjs6BjOtVHSYCVfM91+0fRpy1cQjRxUAsbCwZoY=;
	h=To:Subject:From:Date:From;
	b=sn1noUigDVvFb4Vg7vrD3TIBg7v+AcENkTHkVArqrWrffuOBDeTp7mKSGHsheJ/Pb
	 TAICM63ZcMeCQQCcvc/G8Dm4DIk6FHEwuxqt28Vyt5XEEXhJmHJsMTXTLIpuUJ1JFf
	 C3qqNqsTNB6CZRW3F3SBsq6l3rNF+8Yvk9xFelE36unhm8wusiF3MDw4CNkdpXi3yT
	 JRXU/N9OKgNQz5D53O4WEiwlDyJ+gH89OwnIGc12UWl+KYsdrnfriDXum+Z//WhxZT
	 A6IOodyrq18muSCGYjJ/cCEXgBw+QeB1fGpivBBAah6IkNDufqiUnFIjO+HoPKC+U1
	 B840pDZCvKilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C5DCCFA13
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231039360.26128.7346376916521642616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213d586383325c0d2a0e0ce1fd77f9323704168b608a3b1145b0bb077920aa6e
Date: Wed, 05 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762310393
