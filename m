Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24691A933
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727482554; cv=none; b=ErTC5nmctSSKoFE82dCuFEg2r8NHRWtET+HnXTOzHCA/AWGBgR68I1woziYX7DCJLU9tkoPtCdiOAxP7U3p41obf/eecXYjNURYoPmOhnRArCYpebcEXulM/IzU5h0XNBm8/dtMUeIOcQozJJ+aBwa2xdpfVBbsVjmvjC4LqUAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727482554; c=relaxed/simple;
	bh=uETZQciav93+DgWLtOb2DK3Y6uWXojMBGiKwsi8GZQI=;
	h=To:Subject:From:Message-Id:Date; b=kQQI0Q35DhOzUYzYsTAcgxbfkj1TbFfx1vZahUf2rkJ/+Epf88u8VjqXnkubrrNpisgiAYm/B8H8iTCQR+2AUpBAosDLNQ3J6s4s5KelIUmepyg44tQE2P93N1akLLqyXKv+c3wvkWRfao4ZRuy/Ea/voX/WCc3jfgpi1LQwjVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa37wJVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa37wJVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D2EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727482553;
	bh=uETZQciav93+DgWLtOb2DK3Y6uWXojMBGiKwsi8GZQI=;
	h=To:Subject:From:Date:From;
	b=Pa37wJVBkvVa3NUqVviLJ6xa+SLXbYwiMV+vAq/GMuRkR7lnlou0hoko3PMEexztZ
	 PlDOjjgBHqDqm4kwyqIoI7nfNFhq0k4gvA0fX+rVJmquNFkmmjUVfsh79Dx2RBrpGj
	 GEFmh03gLWpqyI7eCL+SdU17hCnj6NBQ/m0/SuEz/k4rGe913t9e43lq0xZ5OenrNe
	 TOmyCubh9qb/GceQmmk/SO6O1SB2+JKx/zHzZ1De1tEFs7QMZvqJFVbBQP/5eUVBix
	 mhUGWQjPjFYXwadWWOad/uNIy7Sztg15w7bXgrNvtDPlswurzeAyi5elfdOJJ6Mzje
	 W6A5lki+Cq01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD0CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748255358.19758.6607225134974093582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c963b76857660da20bb5cec781e2610f2ca07bde81ad0173a833f2a55b7abe4b
Date: Sat, 28 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727482553
