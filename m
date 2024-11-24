Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDA11E531
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732469754; cv=none; b=swtxDoHpwZdm8bM5CLksH7rhz7CFvaZolpuFvi4CIsSqjyhUFKuizIRWbF3gV5PGW6E0Q7+GPIe3ypBMefd8jZ56ivO/loVciNPFD8m7g+QgbjJzFrcVT0FttCznemlBXs/CGgh4vm2DLtYun6nwk5K3gSvvWTP90WuTcevLscQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732469754; c=relaxed/simple;
	bh=WwmEOwzw9IG54D5YBBBwvhEOvwR2KG3vuPXtEot6t6M=;
	h=To:Subject:From:Message-Id:Date; b=dMDaM3SWyPMS6fyJ46Q2/ufvD2LI/mJlolKXf0qk1ZM2fKbIFB/3rjZsB7rFWe0YPBLlK1jUXqAtFIN5ddG/AgngQkhBf4iOlAQnWTJPk+23EY0UGKQAQdKr/yUwlE50PdP1vHCZxCI0cVizUGLBs4zJkZnDn01y2W3hlRowpCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JayhdHny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JayhdHny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD03BC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732469753;
	bh=WwmEOwzw9IG54D5YBBBwvhEOvwR2KG3vuPXtEot6t6M=;
	h=To:Subject:From:Date:From;
	b=JayhdHnyipLvtuduB8qHuBEM6xzzME7/E1H4AeymZhICsgjZF3q/so11Hw/NUdyDC
	 uIaRA4hXfskF1fd8RMpbxD6jMj/gb6VqVErMv8DHEQKc9jk9qK8piq7Rvm7knQnAHV
	 smg7EIEk/ROaajkhIxHEcQmv1/9kFTgW43h9YbJGzlb/h2WwVX7RVX9reYeKoTsGP1
	 D9GaiT4ogXjmNr+6aLH2hikhTVPaim6SrnWTs0EzR62g/Y6KayDHQL5eVZ7eZUi6OS
	 RPpN8DMtCRnowr67g5nhFFtnQVdzyv611DRGJBk2KZaSpah1yGl+0MKF1u0Jr9+1wN
	 lcR9zf07jrndA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C7D68BFD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246975365.13781.13908805452125302207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f6b15744df3fb4e0a6d7ed90487be574371fd90a7e3d1d3859d520be9522be
Date: Sun, 24 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732469753
