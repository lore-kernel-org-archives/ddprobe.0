Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F6E1A3164
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776874054; cv=none; b=kzLbGuSFEUhPGQurg9Zwtegbgh1jzpKYCVJQWI74wucv4+yXV4JJMn+33FWz9M120QE+i8jXw29MUfx5elMjZWyhjvVY08RdR/GHWnLHZZ834lWDjm9OTtwRP5j//MLpvDJosK0J1Y0ouhpH62nVvYATlH2MWYQSLLmv4RcOGPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776874054; c=relaxed/simple;
	bh=mYvENMLq3Bsitly4PM/13awfFghm6VMjo/9+6Ble7yA=;
	h=To:Subject:From:Message-Id:Date; b=dUS7DGsRQAQH2hNkZ0sNuwX66J73BrEcgvNMC7ffSN/607bZzyxy+0+i99ZcpppLRHBPw5LSthVDRztIToCIUtSIGqngrLdTeQiG7SmvSMsQWUDXyacYsdh5hUDBbNxfsF+DuLOJQSXOvRmBgD8do17j9rB1G2un1To0M0RUFRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpFHmf7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpFHmf7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74D5C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776874053;
	bh=mYvENMLq3Bsitly4PM/13awfFghm6VMjo/9+6Ble7yA=;
	h=To:Subject:From:Date:From;
	b=fpFHmf7rJxQsJtDNzN32MuL/H3+rgtVx7SI+sjCBxLWAjsAqDrF8wr7cwFoA+vg+F
	 2fcG3W/NAU3LuIURUFORv4FNhErgSeLXjELzwbd6TG98ruCglOWynjbTZwu79zsIN0
	 KgRbOO+4v/8PbO/lEBLYaA+wkDQwroJk440XShoUw01NShIwmzBT/N3CMjI7Rgoj9z
	 2+yCyBQ6g67d9ohChfR5BKb3W7VqJJFzDxNrbVVwIdgYo7pgTOoViBG+s+MT/LPSiF
	 +vUJKKfypvX+iNTaR+C1AON4CrTQAP1opL4kwDsYOA6QGbo/vGc8f30XaRMOcHQRN1
	 t4JXmS1GuyofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D7EFA1FCB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687405368.2480.61216467484949019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2746031b29abaa57eb88b25f433c266ff8f951bc295f1f36a988b479af277a1
Date: Wed, 22 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776874053
