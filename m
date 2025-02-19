Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1C11B425A
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739962734; cv=none; b=IbBJYZMAiFRy7hWFyewoo+zTsN+HqUZ4LEKkwQVec2hhPrjiqRsOTVjSiXFWZlfMtsexFVuw/GUAmxe4YfS5D34N10GcFlQyY+cew7VWB1PRxaakPeYtRMUJeXgLlofmUP16ZbC9IPZgsYpHWiKivXVI9gKlCKml18Z6k4gV7+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739962734; c=relaxed/simple;
	bh=xJQSgrmYQ/3VM1KuMgylg9SadOKSBoegjb8gJbxwgnM=;
	h=To:Subject:From:Message-Id:Date; b=UfIeXpcpF6nsfBjiLK72fzilsl547mDxL3wKYapH5/DrceiCnFCEibIExVZLYd2h/dYs8WAb+hZeJ+srDcLRoHO5qWgUASWmZCA5CbAEqeOpgKz7DZSsQvsC3bvbJik9/PmIFiRwLT6pfi778fGwhvveAsYdllPSfdSFwU7NlTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObS1RMS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObS1RMS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4589C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739962733;
	bh=xJQSgrmYQ/3VM1KuMgylg9SadOKSBoegjb8gJbxwgnM=;
	h=To:Subject:From:Date:From;
	b=ObS1RMS/TrqnoZUR6s+L8mS08ejPFWGBm2OstSPDIV3mnUZ/8Fw3IfEStlzJSLL0z
	 r6MY0M1fN1GoOVbEFADwOiK8LmwHPaxcV+yoBC89beCCyIDjdhxoiHUtQqR9Zk1Wv3
	 npLnwQGP1K5giquVwzVOMzKBJNKalpzzEsLWul5h3NBt6hNUaMFbBxxD/ZWxkCe5yh
	 Ck/geH6bIhwm6BeNP2q4LXuV+buMCTLghP1fDFJAfd5KAP/f0si2NG903jFW/VaG3l
	 DlYCxSgtVnp6EJstn10fv5hwOMsPtzK3bmcllFoYhpMmKumxEsScG78XLYYRkOoFZ/
	 m/BxHuH5H7d8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418FC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173996273359.5435.3625871389229674363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb128639747ff92bf9772fd70762b72af863633e450b9329ee5ec617721dd57
Date: Wed, 19 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739962733
