Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46778395AF2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784030914; cv=none; b=ZyweGTJTKbhDttDdEHrctyFi0OQmC1IFH1MowKsYDNC6yq1yRJOF06ycnY2Z75RQQfbH6ziAvYqYniF1Y87YN0qn6t+/KsABqM3nKORYDLZ2s5LvQsCBx3z74fM63013W0j8A94j0gNYi4yF+kybIK2VK66SCcbYG9L/+50G3x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784030914; c=relaxed/simple;
	bh=TbVCZDwz0+kWP3Kx+5kNR3dRG1N1BFa9lZhukoeKJiA=;
	h=To:Subject:From:Message-Id:Date; b=rx8jZ09fl0LTUaPCnflwIc2wQNPfL1I6af9gbfg1tk+trCz94/xep71uxCgLxC/RO9utemV5LhynEmEBm6EYXGcDSbnfw3XezI1zI8XmX7W2VmFBQnpxljlyZGtIBf9BNoR/dh5Q9x5fJJMHr28y6bkpy8kYzgQwiZqAqttoZmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j48MUVED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j48MUVED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31CFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784030913;
	bh=TbVCZDwz0+kWP3Kx+5kNR3dRG1N1BFa9lZhukoeKJiA=;
	h=To:Subject:From:Date:From;
	b=j48MUVEDqGEuSopofLmWwyZYZxxKEe4Knt5kqTobLF474S10nSzr56/Wl2OpEcfYd
	 LwN/qGjubLVJ1CdoWJcmztc+wgRKOnSK+8XRULBQD3U9vHxuvouIl4sT5THE8q2/aW
	 bts7ASZUJ0Dwk3h6ziw9qBGWL8SFt3AWSYN0G9xTm7pLO+ATv9fzmT6darzGL9qY5u
	 v25QRKOVtsLiZ/jMfnlTwkcywR2p0KHgLBpRL91fpq+kmG+W6YfFUndmQ+0Q/J8YBN
	 K3WPxdNwjjRNYls1QVDmt1i4PL9UcHwLIMImCltu5SXbP3N+jDKPYi2Kcn3JK/sSkY
	 GPA7d1q9mC+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19FAC44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403091371.21323.9312371594053550766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae3a2158675d98fa3b203e6fa48fc7226abaf9851ca99e56532a6bc3b4a25f4
Date: Tue, 14 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784030913
