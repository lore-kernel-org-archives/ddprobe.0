Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351FC10F7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727052954; cv=none; b=B/40qWw81/gh6BmJiVoYpSqa2plWmpVCyv+6EGim9fSH25mRJu46u5hNJQPfNQcqF6heKOTUhtkFwsQYbdwiY0dtq1T0QKMC11HZv0DHc7KeO15PLYqMPKjG1Z4V2EjRqGFexjJHYUaxRMYAgKl/MoCNV4K/M1HoHqXwn6qfVfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727052954; c=relaxed/simple;
	bh=ou2XiU/Hna+IZ7gbpy09zZZi6McJnQPPR5K7qel7P/4=;
	h=To:Subject:From:Message-Id:Date; b=OO7yfFxABq5o6AEuywPtk7mb54g+O21mUGWLGlWZZUbaxXXtKw6Hb7zEy6CuRG4RkSLfwePPBdYzyfKb8w5/0VFd7y+GSgu7GlxL0EM9qQVLXdEDajYUwV7BRtSAiP7Hm3HRjh43bHNbeocdPN+DGRZ8Hu3G1e75maPS3H/XX8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvgVWo68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvgVWo68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC42C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727052953;
	bh=ou2XiU/Hna+IZ7gbpy09zZZi6McJnQPPR5K7qel7P/4=;
	h=To:Subject:From:Date:From;
	b=mvgVWo685dxc5o2/a7ZvCeKeQi2q0l5/MO1fVK58iTaYe5s7Zbf1yAKMqpj8D4f8c
	 5I0UMknXrWAeAZ7KZGlqdG9SvCpuu5et49QMdt8+ZWqqVTB8ufTygNO9pQhFibz5zc
	 ndwxrDfiUprdnRqTSXnJGFd1cKaQNDfW6dGlDLgnusCxc4KbzsJqUhhbfRWAfIiPnv
	 FGINari/iCchxU8PmI1UCSiqCjT83pEvP5ON2JZtlxgKLWEnKhO2Sf3Cu1UMucfZT0
	 LC2ZmNw8ZrpqEd635Giy8QrU3SCtIhLj6on/hVejSC0fwWVWtyiXQ2SarEZ0Ikmq/P
	 nuwaDUPc56THw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F16CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705295358.16380.10516861702271115110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85b48725fe3a0942ace882701bbce37662a107217de120cc3f46efd5253401b
Date: Mon, 23 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727052953
