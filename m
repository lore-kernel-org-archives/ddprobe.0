Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC4C34165B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764873173; cv=none; b=T5hE0XL0vgbl6pjtSGuK6IogvaLlP+cDjNEChHlEqD9o4VDVcm3fElp+L2/eTBIrHCaG1QCRBt4a6o09JShK8R5Hns8COKUfc7VmlLpd9ayj9L0dIFjWyOadscR4N9BA/NRM3kBP2CTKSLNO8rJWceZ0w2yrjhypMQBkM5sSoxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764873173; c=relaxed/simple;
	bh=gmE/m9n4AevWqm0xnGuucEn7Ckk3v6Vl8MeZ1w9uUW8=;
	h=To:Subject:From:Message-Id:Date; b=OtOU/+dGYGU1RdxnOxNH4TBy4kJQtxBdYy+iI/LVoHe7hJcKMSG0nL80+faSnvZdaHo8DfpWPO6pCreqmAUUTH5NUz5LDj8Q04OqzWljffPQM3kigJbWbyzxScwTw5TEcVDki2TbHwmI0tTq5B4oC7BhwqMllomx3BcXYUBtez0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pejf+6tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pejf+6tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764873173;
	bh=gmE/m9n4AevWqm0xnGuucEn7Ckk3v6Vl8MeZ1w9uUW8=;
	h=To:Subject:From:Date:From;
	b=pejf+6tfZXjDi6TjxvFUFYL4YnHHaTue7kbVHaRsls2cC6KpxY3geYUHakm1suIrP
	 pc5v9+phmP73aR2b4TIIpe8m/IFxmV2q7/zDlW8NNXFt0bZ1j51JfNJaLPOGP3dG+o
	 rwJu1Vt1huequYzqzwJ/PFrWFAGg2zqhymwMFcm2SdYzetrApsrob6K7OLW0EWZDGw
	 2W1zQl3qv+gnUUelvabgkXjg+wNSq+HDl+QrVmm4GDeESlCgnjpt8ax1htB002xI9K
	 RKAhKQyubUcfTKlvffZzL9IG90YThsTMka8JPagBlPBEObQiuMVfL4x/IwCSc9FAEy
	 Ef0hEywzDGEtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB2D29FAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487317359.21345.12714471008169501399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156883912a6baff6882f50c18b3f9fb0f447606ef378140bdbd957e12e8435a2
Date: Thu, 04 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764873173
