Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB31233727
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753543794; cv=none; b=oD4FtnCnMLNa/3ZGv4WzEjrTJmgoh24pEh2GooQsAloaN3lSZ5iZN7EICrIBA6h3XDGeJyCnJ58PBhAewncTL5/bddN9YgkrBlYCkAnHxi6QSQv7eBtt2qesSZjh1Vg0BrSwAh7WUyenAh0NUTfqfMQtaMik4/1eRFkYG4YkI6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753543794; c=relaxed/simple;
	bh=paYinsYw6veOcxesdJTNtLOrMo5ag7/opejDLNhNRsQ=;
	h=To:Subject:From:Message-Id:Date; b=ePFsci5JZ6a3D6hbTDic6QBm9ITrJqReerY+uhyfqrDc4eGGLz36Aimf1F966H1VRtQ9QgMjZyXChxBH4b8pAhp8+Hyvwad9JpZkZNzHnSIMbskb4acOR1X8VXqCS6uUQeE561evzQ5ukH2/dlB8O35rr1KFLNCjGuCg08+22qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MokGAL0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MokGAL0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72CBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753543793;
	bh=paYinsYw6veOcxesdJTNtLOrMo5ag7/opejDLNhNRsQ=;
	h=To:Subject:From:Date:From;
	b=MokGAL0PZU6l3zZNdH2Te20fsi5NP3Pf/4WuUm9s8H1DP8CmlUrr/8NtjtuUnQHbL
	 m2TrHwYN905fQd+WM/mrkubmsYX0EI0jPWcpHQU7bUsmot97cckU6rqtRhOE2rQTuO
	 Nh+VMHvek4RF+Qm+xIgjN4p6q2qeH4/7sH8+blFLyRjWQZJN0WrQQ7opSmgfWVITBT
	 Vf3PvRAlmw8v47f0wW/WjrHUjxlfUD5P91aky/BUiReOqHFkUTEXuL5bHARHUgdHY3
	 DFE4aZMoILnS9e5SgDUM+qxgpzL+XcHn7o9EiiJnmzwkRG8PiOEzSlbfU9+6vdt+I1
	 tnnNFNpOiVkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E8C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354379357.28358.6143397818120120074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b74c939dd2e80374a42fae8da6a154bf67d8843cc60b414f846e99c6463d24a
Date: Sat, 26 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753543793
