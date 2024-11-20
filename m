Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDEA40BE5
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732073154; cv=none; b=kXkwSxkwPa0WMCyaPJkldN+IZRz8K/soBZKK7YWfOihvOFEKc4hVBOJ/DjzOqMLU9wo5ZZmvMufGPwrXDuAQPmHphvmVauExS44VrQVrAQGQBHXExN1Md5P0bEnBgODlCet/Tp7YPdjzZyngec7lNgIASTweuAv2V2YGvGmduRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732073154; c=relaxed/simple;
	bh=vc7lS4p/wQEIZGUeFh1sWqmNg7blmcs9TAtyA9u0c98=;
	h=To:Subject:From:Message-Id:Date; b=WQUFye/V/dSzs/toqjc5GWzCx3MJ3ifx4XvUVKkBMgTAiEYUgzOLrkJTOBE/Nfzq+3dVwoSFLUFoqvv+0SqACRH5SSNVy7guymtqXX/33BYtocG9q2ZEJbFQvXFPTs8HFmDhkanVUijlf3D5lZ7ozvCMtxXzVC0lH5NfM7M6+Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+DCZd6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+DCZd6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667CC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732073153;
	bh=vc7lS4p/wQEIZGUeFh1sWqmNg7blmcs9TAtyA9u0c98=;
	h=To:Subject:From:Date:From;
	b=R+DCZd6C5jDVT8Hc1RUz1eDRQHSLjKWDbuq7eCHAFYqfRdHSKrhfgNP4F9bCgD7H2
	 xuE+3MYPUz9ZGV68pYHUrcBBDkBknAIyKlBeqp9TTC9GrgHH0NmBlCp4Q6UvY+pE84
	 3E26uIiaVyNDACtzHpbnTWNhZE9wTBF6qnufD6Nkzb/gDfB/3e3EdE4s6oCNA6LrDj
	 o8kqAul+Cwzlplj2nto+1yCdhIRexpMIq9CKc87kBdGq7l6/GN4XpRPby2CtFtKsSO
	 od0uclKCETNzl21bRnN17/LeFn/lQ0bAAtDliiut8rU3urPdjaiTc1zFWnloDOIUl6
	 PBk+K5A4/e7QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96682D6E2A4
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207315360.16502.1656127173436374511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df8ea060ab2b308977839f18a48c6f89bb709648597431dc0ec2513b57cfd34
Date: Wed, 20 Nov 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732073153
