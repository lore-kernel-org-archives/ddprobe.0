Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755091DFF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720881023; cv=none; b=eTjyesCm0RkvL25pgZJ+Bcx78kyJh0Gg+xKutcvWGcUEfHm5EaMV+hwgo1zthbChMu7Id9Fa+9PP/TZV7oo2EGKVWkiA49/YaBw2sqXkH0p8xNuMZKG95tFiqfgHqU1HUpRncz5b8OmTLwYw782qwQtsnSdNu01hIA6+Rl5ljWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720881023; c=relaxed/simple;
	bh=tBGNdTEpJ+/k87lDZwcdhhttwMDbuaotqS0+9A9JgBY=;
	h=To:Subject:From:Message-Id:Date; b=QKjG/V4op8uvOd5tdVxs4scGrlQvXHaeZJAU9pKi/B/92K1OAK+0Zirgn9Px/sES82ZxcVEgFOlpe8SOnOPXe2GHw/y6yaVhvZCjdXtyf2ZKR3pAXaKvplLcPMCIwEpWDORnlMabOMKSJjOm+hAMiBn3cF5sX0EaG5CltogSnyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uveyCSXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uveyCSXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C14C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720881022;
	bh=tBGNdTEpJ+/k87lDZwcdhhttwMDbuaotqS0+9A9JgBY=;
	h=To:Subject:From:Date:From;
	b=uveyCSXnORplChdtgb1XRTrUGdrDluh3vZWfpQ7AjD1jWZehwSmfDOryLbIU41RY+
	 G7faHiqNOFrApPo2xmPFhIfUepeeFxcnOH7UqohlriO/fAE0jo14NroDHAaRLOBleq
	 WhB9EL2z8Y3nIWOxC0BHeiaQtKGq09XGEPVKbHfeiIcq8KiRaX5YO11ILjcRR36urU
	 H5YK0xoUvgejLb1/tgU6DFrXF2bCpdd4wRY1ZKJhl+K4qbx/1aPdzd/1rkLEtIuB2I
	 /Tkuk+jIild2nY+aOSk5rD00e2QDGfq/2ZUxDvjmcntoL+5J82ZuAJKvzCxAyHRyUU
	 FiIb1h04TLbNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D500EC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088102283.24066.14574815466612629091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e64c6fc01dd6d6e1e84cfe58f4fe9b60176094feadbd9011c3a4d1725950a87
Date: Sat, 13 Jul 2024 14:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720881022
