Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD3D289E1D
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746048594; cv=none; b=g7AHGWhqOCgywy4uAMgfjbF5IW3ivm77yJKLcyE3ldVI0RpQcVldND0kCo0eJIiWIHRX+hCUVQq3AR8OeCo001ScBSfcfJTfQUL9WwXKSGwguM8A4miceXZQ3t2lP7ir4IUWCjzheMb4DMN78n7kf7LcyyCZhoZum4m/nTFzJiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746048594; c=relaxed/simple;
	bh=lOSMf+pLME8n+YEcIW2fzguRS3o/N9/YEzRfrCYi99I=;
	h=To:Subject:From:Message-Id:Date; b=isSn74gR2zOUa1DDrbAOj8Tu1O/C3tO3y14z33t0FTaKM78aa/2w9U+2X94h8t6LRMv+x2HB/qKGJfku8uBS/1gjimhdsHO2Oeno5Mi9iR5VyDLj+ewT4VW92Z19bTR4GWn+O3XmaxwTdVOe5B42DbA3shJJvYccwZFL6A2xbqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGp2FhFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGp2FhFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3119C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746048593;
	bh=lOSMf+pLME8n+YEcIW2fzguRS3o/N9/YEzRfrCYi99I=;
	h=To:Subject:From:Date:From;
	b=YGp2FhFnT3gZp4U5OB1vIX+aw8is0xPsBbrkAwBYPHJ6ncPEEGoRgDEh3z8mEzIIN
	 +F6T0GPIK+LECfBQmfAeDcIatj81RD1+MYuE/kP9wZDMlS/EZJL8DL1WkggkT0xlXg
	 E2MAfJmFH2yu45fHn2rW9phgRig9ZUyuITwKcgMmLfy9ry1bywcjH8sunu/HJAhEdi
	 O4W36ygkik0nXCNpbuTCtxJFFE3xaeGW8nCkSj6yzS2hki/JrzaeKiehWCtgjq8dkz
	 7HfTeQiZHFKdonB62KYtfCSe50hX21BBquoRC20FhTVXP1HehQ9hlWFZlUqK+aVCbd
	 edfhHWqXtXQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91891C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604859358.1449.4234558032002780056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a55d47d51eb24dfc05df26e359a744dffcc6046445a001657c55a1504995a77
Date: Wed, 30 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746048593
