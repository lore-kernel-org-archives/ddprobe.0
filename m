Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B128615A
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 04:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739246814; cv=none; b=OJIdhb1BLfixoNg00v2oOVmlo7bS91ZERmsDnM/VXSi5TiBbeSNJiManL/nZ27WCJI8Zogrg6dgRHgLK8BJ1tCl1S05H2tBiwdgNv5+zvexkCjdjr3IlZwmQq1Qm3dxoy2t9g2/QPOQHxds6V+1bA2XJH0Y6C5Q7TD8tEjMhfbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739246814; c=relaxed/simple;
	bh=sve5tVC4WegcCyfaov8rG08DzrYocJoXLyKmuZI8uEs=;
	h=To:Subject:From:Message-Id:Date; b=ktF2Ft7ElziTjAsvXDAZCb6ujpZpDLypHHF9ughv4QGi/B3uAZnoel29iecKWtfwqvReRvG3GciyP9L5iMioBcnKsB3bfD6ENTud+CxKaOpTd5rtX59cNAGshkYJgujvk4MIY42ETGtkuoC6OL/YUp+30I96qkXa090Bf8tMnsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPW+aoxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPW+aoxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39A4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739246813;
	bh=sve5tVC4WegcCyfaov8rG08DzrYocJoXLyKmuZI8uEs=;
	h=To:Subject:From:Date:From;
	b=GPW+aoxrgzlxeFoYCBmVMbc4XmRP0JhttzAxMCd+qeW2PLn/gb7DQ6t2xqWeiJyq/
	 rr0lKkfp9+cc4DtyWvlpzW3Qk26faJo2wb/xJ+rW6xrJmWWAt7jjDpZI2GHL7HOpK4
	 7VO2/iWM6XXdjCEphJ2BCZk0cBR2MrEKPVntls9scs+3qn43snIm99AxVPpvlt+5Pk
	 BYRxk6tK4m1N88r0lHF3f5rHaVuPHeWEA0IWRqhrOONEnzW1cHU84bxrO6goZno4YB
	 1IshWpAHnc9br3Db1JWljYZHbuoRf7eVMRac2O1i6EuRoy2m9J+7NvphxUBBlkFItW
	 Ppo76pBGp/4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3954C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 04:06:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173924681365.23138.5171225431654728862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9465753cab7780d8b9bd174f2cab2dca03ddb91890f3e0162be773501d9f0b
Date: Tue, 11 Feb 2025 04:06:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739246813
