Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6920922F01
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743923394; cv=none; b=Eg0Ale9KGkyKuEDRSb7lWwBXQHZg/gGWeOSrG3rSZa05LdtRP+bz0ZycssMwMgZ9Oc2m9l7TRBX6dl1gvHdw3MKV5M5A2JOdtP4s5E/BQAoU1KF+RWBR3c0nCCN7Zz8/LIYoVHZml/0y2a59oxiXH6kD8zafuEtIhmW/xNSlKUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743923394; c=relaxed/simple;
	bh=3YiDFF40gcDJcRVGjzxpeT17ux5fsQaqDXUSncDxGts=;
	h=To:Subject:From:Message-Id:Date; b=eADZuzl5DxAqFnMFl9ZmAW9qf1FuDbzlach5YQkNtzHr3Yd8yVCgvyqZ7rcr0cMUirdxeg0uUucZXs7JKB4BYbVrXMTDnFPpnNmaDLA2kOgRP4HCJXEteFEEGosGGOmRS2zTGMskpo572kXNEvwocHbmwoKY+ZvJnTwYZU6lw9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7U/NmO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7U/NmO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8265C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743923393;
	bh=3YiDFF40gcDJcRVGjzxpeT17ux5fsQaqDXUSncDxGts=;
	h=To:Subject:From:Date:From;
	b=g7U/NmO/CfzcWJQXiPgTLOomVKSU3C8fY8NT/3UHsvqDPTyZlGqxNCeFdWNzMgS7l
	 xVJiT5M+Y0iAMKdHR9kGQb1xLYhwhUMUgcFfxb1HCjIVTnjEavsa4gsf/+f9usba4i
	 oTKqK2bdLr/YXzcaxoVTxb3j5Eylb+mWrh+IXImKxNSmm4uJiHc3l7Kz3RIMbpk6g3
	 tj6JaPIlBYARKY/730uZ/cOAXv9B6Bki7JzE/UuCHLvzAsBzfG5kIos7ZGMX5RnZ0K
	 lqY8qFSY31otMm/1eQr8t7aJgmhoKqxSlSRdlEolNp+9ni/h/g1CEIVRahcfKBDTBg
	 8Bzi07hl6hwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5013C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392339364.6058.7016501471779621242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2c2845209d6557f53e0a5ba3f9196626d614c2a7f7046b0abb62d14934a34e
Date: Sun, 06 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743923393
