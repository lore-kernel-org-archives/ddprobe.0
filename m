Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF41194C8B
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738957554; cv=none; b=M3aITuFf027x0eyQjN9jWZ1ygmMLmT3GC1Kmbia+KSZENGJI4FD/hH6T0kH5gBbxoyDS94rws0XJqF+b/bgdRlLCwr1ck0ikzwi8O9pht+gRlsZ5gNrIZPb3K+wWneg/bUSoXbUzsslz6W17qo0ZxAfPh7X/8eaQWYSYDPmZIUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738957554; c=relaxed/simple;
	bh=90RkaVfKkVlhyPwNnu/c3ZTNS1K+26fQ76vZmZygFjU=;
	h=To:Subject:From:Message-Id:Date; b=kdNCbjzebcn9rOtfPEZigRm3j5nUOAmWj/PQ/UWFprvFOywUrx20mcJiS9k8/OH9pFgZ7ESzb7LXDjZC0+mzyBY169cMDz5b+rG/ohmKGXwDmmIoxuAI6o5YG5/s/gONre9RqGfybiA66H3eFLUE4pn3O20Wd6Rqg48nRDsUyew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkjp05e8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkjp05e8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5ACFC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738957553;
	bh=90RkaVfKkVlhyPwNnu/c3ZTNS1K+26fQ76vZmZygFjU=;
	h=To:Subject:From:Date:From;
	b=bkjp05e86HZj8NOU+gEugJXJz5iL5H5AkmQkfNKUcpFGEMrFxuJjuxgXoTPDDsLAi
	 WRcwAzxOharMEA2fybK3grZ9KFG6tjSrXRjQcl2ToEouD6JZKO0reFGgbzKYo70chu
	 jkLQyU4Pa9sawYCweIOmj/AD/wKznj/QdWpIudYSNQ5uaZGtqwW65zUA+SIdD8eawZ
	 RPfh2vS/u2+IgSKC2IcdLI6wUXLOjKbXqiEYoROT7ae4/3LipJ4xl7T3PmT3UG+gA8
	 OkevTMZKRcESNZDO2NtTIPRnn4yfGJN7PsYbvLRb8ZbYvoFiGOHIf0yrl7fVQutLAY
	 ux81Ui0rZYGjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3894C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895755364.7333.13620375128684129306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5ce4b0f14d6341cbdbbb07d3e5866fbeedf33652598ad1eb9e252930fb53b2
Date: Fri, 07 Feb 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738957553
