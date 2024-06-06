Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B70F4C622
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717708643; cv=none; b=YPWBk5qRpiTywq0powyN+GQj9QUsZy9ehu4X8linNsMo8zn5csOhK1p2X7hmP0CKHVqKm08dh08vYo5h5W3cMGZ7O150lNvTK2WdIYCw5jiZShsyK11QNiWxPK/EVSWMaXAUcfkkRYMO+5mMxz2ucvENGMMHldsuy1kNKc6dr6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717708643; c=relaxed/simple;
	bh=vKi0Xl9ActcsQbSbQYXVofBi2gZVOD66kWdeR1E4fyI=;
	h=To:Subject:From:Message-Id:Date; b=hSWNS80GyLOrcnKkZjAplw7YNAMeC6W/yJigxN/1XAeTjQd6xEQh/oOBoXrPscqxlSnXQY6e3Hcvgv+1/C/7a/53N+cVi/22gT5k4BQd6OuLFmj27mD0KHCd231v457dIhosZ2oCzi35gLPLztHAHiDbBCG7M7vaZCRMR/SfSMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BU3PXNpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BU3PXNpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B07C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717708642;
	bh=vKi0Xl9ActcsQbSbQYXVofBi2gZVOD66kWdeR1E4fyI=;
	h=To:Subject:From:Date:From;
	b=BU3PXNpSnVsmUCqmJ+5SmuN1028dLUHZ/ItE78AtihDtTPCbWMfeD+R3YMvECLnsX
	 QLgkRL3vkx2orP3JAFqO+n2NazqiRGWXKi1JdYi+lV+9TXjvyRtF0IiXOyu3tcfAAr
	 Bk0+lSkLkAnr7aEOCd41B7tHB4fjJMpBBXVrlo7PB7HVp3E2peZ+lRP1APpb5si1jR
	 XQ/pKaJWyECmDc67b6V/3TluohejpTFMSDtjettOLeElhXBEMd/e/uWDeAg+pEDEgq
	 YNcsNfchvoLZcUKiLbCiftfitqUfbJhS6Jy17c1sNg6e3tx112JCKxNJx13lWYl/nK
	 mbpJUxfDR1pjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4CAC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770864281.27477.3345475431348798902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76011ccb3125504afa4e2eaf74a78eb06782921f1283de8de313fb115a04bede
Date: Thu, 06 Jun 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717708642
