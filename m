Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE82D13B7A1
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728906954; cv=none; b=mvRcMuW2ghzixauoYIqKW8vGbWEh5t51AXNsPnA2NXGGI4x9C9WS2TXr6Vn4+QtuFj/OGzMgw3kliF5GC8zEhn8gobYwIG2sUZoDGsI6Wjzs3Cl17JXbCUefr1SLVeyth0zGsFs1qw0sIAYhKYtr3z4vUxC/FODWMVDbw9RhtEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728906954; c=relaxed/simple;
	bh=ViCpgpm3ISJRdgJyzk5LScxID8QVP7EV+5XPZJO4gX0=;
	h=To:Subject:From:Message-Id:Date; b=tlCy4WUdLMZFS/+dbedZvWWBU4SM/wDspb6VqVIhkOi2h1tLof47bR55iKxfWvLYfZF9m5yoBVJ/SEddjvo2gpAJI07j8m/Hjmm6biSWIvIcWfoFhOs6qmQSoXKLBJfS25afKVgNw8z22A+h0NMR6FGXUjMoCnucjYExe6jA+Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTP3KezA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTP3KezA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22EAC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728906953;
	bh=ViCpgpm3ISJRdgJyzk5LScxID8QVP7EV+5XPZJO4gX0=;
	h=To:Subject:From:Date:From;
	b=fTP3KezA22ZkLL5R9zlifERhNkR3kmJKpav4tQDRCrdX2QeWqVkcz/gIbY9Jc2ywA
	 nORX7+HnWB3ccobFFb0/3FZ7Nhd/04dSP2sPPMSNlH1tdlHUL1f7pXKHe2hjQ58X4j
	 dZz/X2yamukVzW0JH/9F4B4J3U+WoNSTUK1YCt3P6hwmL8UDtVimW5XrbQiB/HbGBU
	 U0n0PEl+L0G5o3F+VwIzzR07C/usWitrhRkLqKB6F986/2Sbq+G1o0tFfnlXFiQDwu
	 Z1J66VjF01XhcLdfvX/zlJ7TWa+gMMpeFdYbZE3IeSYoMX/x6CR/mbqzF7Dxzqbw93
	 3WODDoP4oXfCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9D8D1624D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890695364.30796.13639607633486476636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3166b1c451e230a1d35322f479c3ceeb8bce129c1455732cc717fdc37727f4fd
Date: Mon, 14 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728906953
