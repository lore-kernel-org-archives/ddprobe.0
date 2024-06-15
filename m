Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81885173
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718425703; cv=none; b=GtFVCIQmojh5HhXyuPf4BAND2o+ulR3n/kbF7hjLEFo8o4PuSyfQi5GmwXslrp9H0rHVRVLl6Vm/wtBureWMos5KPXoh8CfIm0AEYEJuAtiM/yB69ahc7yD9sUYJknU7Q2cl3x6lSTFQcm3zpbS2dXNLAu5WPWaJ2iMTE4NNmYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718425703; c=relaxed/simple;
	bh=fAp0vLa5iglu8GkEtMOwnDPENNZBqOXMxDltfAGEsvA=;
	h=To:Subject:From:Message-Id:Date; b=CMFXlfaDO6Hn711nvp64tgJ4VnO6y7Mx2Nkn8Ix7GCpBhTyfpYrQjIABDqFxSkwAVXy7ih9W12jphVfg962410MNyWAGA1jkO7tpkhf15mz7l3+XDdM5AipWqTN/zTplbbGs1Zq2PWpg2D9ZTvJ4tKAp0HPTNJ3tDod+BsCmHPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isMvJAG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isMvJAG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00684C4AF1A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718425703;
	bh=fAp0vLa5iglu8GkEtMOwnDPENNZBqOXMxDltfAGEsvA=;
	h=To:Subject:From:Date:From;
	b=isMvJAG239cgkF8Mj8mWQj7+UE/e153Clfx5KqlPCyanuZsiQuM+emcWx7wxpmdvy
	 RTedhtvDhi5ibS9b+s3r556/jW6o6x1oPUr0o8n8xC7x3z6qVawbJOSwf2P/ND1aff
	 g7ARw60TITj/4mIH0smCPhGkJayXQ3sjDWQBXF2VLoJL5yiPRbaRowJvPy6thiHOrX
	 dd6fXq1JyQKy4rootUKD+uxscOgrb46fxKJkJsPlMPVa5ZaeafHWSm0WmGlDSxryaU
	 Tz6H5WXdgcC/Ru0O6R137W7JFlplP3mNPjuycPWBDsa+g8CYpKEeRmhpOf1vB3s/De
	 4VLMLuNB7RLxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7893C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842570284.3197.15000044934318322182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09349949e0b49d3e450515fa99e69fc9746e56ad16e63a5e6184d8db3b21969c
Date: Sat, 15 Jun 2024 04:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718425702
