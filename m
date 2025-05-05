Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3234F5BAF0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746430795; cv=none; b=P5mE8N0ozXY+D7atVIvOHZJ3Y6/6OO/hKe7c+Yr4zdyGJW+qe+pxKy06P32RRoU8gRFtNUi6eeILcoL+ObfqkmNk+At8hLPWOWTWjPaxdoxzfjvtMVLM+8pffS7op9Ul0SJ6E/k2Y+Kbs6ePXsab6E0teuf5Cy1x0DypINWNPMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746430795; c=relaxed/simple;
	bh=fBF/k30n8PVSEtQFhzttxfztUnftjm1NKrJ9RLpFOrw=;
	h=To:Subject:From:Message-Id:Date; b=m82YuqjrndKJdQzI7Pt9+y0QUlC+fDhu579+t+HsekqziV6xijx9x4VIiHLlEDGsxbzJxohSs6/iaDCp36+KAbLdDE3CJ98bOeEK6QdAY+79/754W2voUXe512bH6P3tH4DjfVMgeVx5a7QLoug64e2J6r7lTwoEaMnAMJyNYBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r40JgqPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r40JgqPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E726C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746430793;
	bh=fBF/k30n8PVSEtQFhzttxfztUnftjm1NKrJ9RLpFOrw=;
	h=To:Subject:From:Date:From;
	b=r40JgqPvaXMzYfVwn1U8nLxkGY3BKSmmBy9kbvbti+RAzKw94eLfWbNaEdlYCgjrF
	 C36yIDKrBFG1FMBtp9kQyZg/Z0+9Xtu5H4SOYg5jBXwWp5Fip+QhxrKRmaKkkVZZBj
	 9jCy6dnFVqIk9xZpLz+H3t2iAQK03M4cFntWybqim612DzTDSCMsoaxezwjinY3OEk
	 rnh1dhazjMGWQ+Rde3+169syJRGteJ8BvlO2gacbfHFmihdSQtCsm/yaii+UKwvlEd
	 LJsqrzYweceZTT60K7SlBF7I8z7N69i5kk7Pdr7KOx7yOSpQWOzE0smYaaXRsbKiuC
	 hnWxtcdcHX/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2BC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643079357.16400.13757680438711841601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920bd47f6e05e550a83e2b02ec1b75db7cf5f10201a7a1654eee1313ef9bdad9
Date: Mon, 05 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746430793
