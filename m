Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1832F178378
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732458354; cv=none; b=PHoUjV8PdHXPU0KNxODWNAALxZntCG7Uo1o+1gHIKOMbEZfrokSwBRSMqrA12vOhlGFGYArNJjn+NnXQDc6ghnZC/LtmfZpPrhlVoh5pTr9Em5moPFMD0psGURibqzyNUQqJaoVL19YPxzM9ceoNz7mtpwswB3y33jL5Qtuk0a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732458354; c=relaxed/simple;
	bh=szhNxV+yfp1tqI3uPwQiOVgH3onLCF8k1KOehtstkfE=;
	h=To:Subject:From:Message-Id:Date; b=YN8e7YJV7wFWRxoyb+YILwx6pVFzjU14Bc65xz8pwUxRFZxgXXvHpmUnMa1kSLvjRgBspRmg2KmATUxz8DWATIHVV9e2KHKLYgEvE2AlLHIG9uHZY587pRMEjw8wuJNVDl8/Zu4Nuc9Sn2TamVAlGFG6Y4cJg+s9rhhfYVZPcAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK96xGR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK96xGR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E33C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732458353;
	bh=szhNxV+yfp1tqI3uPwQiOVgH3onLCF8k1KOehtstkfE=;
	h=To:Subject:From:Date:From;
	b=kK96xGR7uWfU7tfhGfBPVzGDWnzqM0O0JLMhGo/tSl/QAxm70PkQJIck0Ibl/GGXw
	 C6+K5cbycwrILdiuLuWkZLJH/LAQ4ep1fNQJDpCgaubLWxfrFj/zNOAtPnLm2Asi3V
	 CN6URPFBuw8LXPTHBLatE9HYWPWhtbbB89aJ/1BbVJyjX9ySzxgzrM5S4gMj6CsknS
	 lfejzatH7bn0H03xeZOmOnoU0BUNIX85TL+AG4CJeaqxemtySsgcSx8us6qR/kpqpt
	 At60eX7l39gjlG9+Bdxc/6Pt6CXy1w4cXVX/0rBdBdkrkfA/CZKEndu1waP2ALVesA
	 m2+SHFANcyB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91798E66887
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173245835358.13626.4500903822211040246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e86c1d651ce51e868778f50e97384a9e5e4ed3bd04e404fbf5056a446565dfd
Date: Sun, 24 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732458353
