Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B3E199FB0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774475694; cv=none; b=WH9FsgQT3ad72uQV3cy+tR8wUTeZzhHjtmXMgagvFPFyOIOxXwpViGFcrl/fEgzpM4Sba0J7P4RVEY6BMYSADN75CtAg1xcBGHeM4WGwIKk/5ybYXOA1LwIUCx8Hp1i6/EWCa9lSvFfmSAcOulNTvg4LAGtrGPX41DlEBRWtxfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774475694; c=relaxed/simple;
	bh=VJHBsoWvUFoZOMSCPWv8GqZpOsLJVVsje1lhvQlmFnY=;
	h=To:Subject:From:Message-Id:Date; b=LwxXezsgSPupUc/KBd3tvqAfdN5T0cLc67LbLTUVmiGiaOubZovO6MwcVL5feQwjIHpgAlN9IxX6wkt4t3MJacPmMqlbsy1MgmJ09mKE3vj6+NnozoM2iGUj5IyEe9T3y7RBTCow5/hhEjtU3M3R1MndU/K1+Erpe0d/WcnP9f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poqDRhJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poqDRhJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33BEC19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774475693;
	bh=VJHBsoWvUFoZOMSCPWv8GqZpOsLJVVsje1lhvQlmFnY=;
	h=To:Subject:From:Date:From;
	b=poqDRhJ5kS9kcsiqb2hfSJ2AYfnghmL0X01i9/EZbX2v4lVMmdmFUFF7qtlDmhbnh
	 6G3WAergCOQWfg6WhdvEcIPUB4tCEy+aeNZuZuCLN7UBmGU/aB5KJiDwX00b/2bNhj
	 ZT7jyeH4d/8+AM/qDffs9wucgPOL5mStVyph446vCqs1zYW+lIG+Dfp+3/y0d3eqEP
	 q9K9+Hk4uBkcMQvT2eHrtH/sHBF6200525OzAAFnS40goJIpKmaIuzqOnziPNLsehA
	 7kM6kRwMYAJQxDrmoE4a8lUafYrQKAfiHOVpryDfrWwAV9HrbNbEJbwptUsX/d9Uol
	 TN43hvNbN5y0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F089109E520
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447569363.10434.5238285800168528309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4302d12256689109c448310361c04048f66b627e0d10d494c2bc7d0345c30d90
Date: Wed, 25 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774475693
