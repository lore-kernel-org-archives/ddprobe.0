Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34627CB02
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172795; cv=none; b=s3CO47cOq7ePGr6oszZGwq72jfXZRGPXcIKlNR+3y+Y3lz+9/0ld/G/72h8gXuXWF8jfnrvoAYborBok5hKTyoNk70Y6ec5CCemG9tYw+tQE659f5sJvd3m7lnzCIKwQ0dEov3GO9I8UoxuHMq3w+RgNb1vksqSw09h34hyyT2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172795; c=relaxed/simple;
	bh=D3680SHmC3fd4oz+RFftdgZq9mq8GQmTtUKeGtjWbjU=;
	h=To:Subject:From:Message-Id:Date; b=fMscz5Ve3Smp3YFw5nedTnBhZhLjK+wh8S4ITU7YeAecnsODOXW9dR0+cuwZoPCAKDAOftLEPXeCt7vxVXhg9j2UgchIDypvR6RlnweeG+g6alBxITrGa96oUGojkqb/eHALgWifEZyLl2cD2MPBe8d9XcCVdF63R3h0uHSIsQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACYFyhgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACYFyhgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB028C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758172793;
	bh=D3680SHmC3fd4oz+RFftdgZq9mq8GQmTtUKeGtjWbjU=;
	h=To:Subject:From:Date:From;
	b=ACYFyhgwAl9UiC7rVnFmyGdPIiPvuw7GyCOjs+FN519psfSYhF6BXOnVCqddmDshZ
	 03STPxFLWHrFY0LlPIkRDqjAhiLGPHw0z2XPOMV9VU1YhXne7eGWydgB1rPdnGOUS5
	 8QIS6uc4c1povWsLudNUMbLeGsFPd2MfuLe0evkeYhaHv6juHZLVS3Yp/QD/QkFwiz
	 Ync/rkAv4AQi6RkBiv4l+geBDV0/+8yGr4IrfQ3DQPGfljIUiXzqoT03Xv7gED5eNG
	 pYYb5eH/1HKBrHwsX8e0kBec45YlgPCkoOTy5IzZzeAMKBhuh0wGz0UgU98UGiaDHc
	 tYRagBtRiunoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9826CCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817279359.32610.4701821708704917502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6020d6d61dd0d4b99f92ffa1c0333269258bdb69f8b87179c3348c81d2d2f2ee
Date: Thu, 18 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758172793
