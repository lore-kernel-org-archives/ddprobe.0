Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB8D8C1F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714248743; cv=none; b=Tc15ZFpkdcyoSNAhuyRUeFOPmwi9c8Z2ebCcNGyuIQtGph65eYavip1y8EopYYYn5S2L+w4dYqZeRH0cVlwF2WLLXhu2d0Dtnn4yiApmJFM455hCuEObxd6ZCaPJihHTYgtgmi1BqzX/8JXJvGkA2CNJpt22SlHNCalXJZ2EBRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714248743; c=relaxed/simple;
	bh=fgYzYtQdu6a8D8DwV7EvQPDh8zbvQ5FD6f39DcC4YGY=;
	h=To:Subject:From:Message-Id:Date; b=aRTdFynLdLz42hMDprVSNlhZMCNusEyk0iWCx04Zne6gGutCq79Op5a2Voe6cPboOPnG0p4ZGMA9CIBhAf4afHyOzvPhSMdlZP5sQtmaJ9nGfs5/9a8q9dP2VkzfrofZ7dy/KKuema6scVMVBi2eF2Ms0igwrQN5Zk9O3ujCs70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPg4MSkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPg4MSkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD868C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714248742;
	bh=fgYzYtQdu6a8D8DwV7EvQPDh8zbvQ5FD6f39DcC4YGY=;
	h=To:Subject:From:Date:From;
	b=oPg4MSkWqG4fSk1g4AGtfr2jVeLxRczlNN1PzCBZVRgXlhHCxZKZPgnUqv1tKOP0+
	 uREcD1krdBu4jE0vcJsSsZ2WLpdTGSjCqVYHJLUwPvYkzrEFMctIjhfGh9sy6HQC8x
	 +ac36G6KQNS0sKgxdgJfBQV7nAXSG40aKAxV/bNvShFXCEh3mEgisuZBSfKWjkbem4
	 YgTRVHav8SZLDv8lEFtVWkGnqI1VUdy3xLK23oXFvR/YRzYskvehdynM4JNP5Jt2n/
	 GFj4E8XiXahyt+5Jrbn3eGinAyWZWoGhHg4NOT9eJVJnys7wEMKXpstMcgBjyJviWq
	 ppXZAnXR/VBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC280C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424874276.12030.8417102751670557260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b705afc7cf8d2cf013edc19af15ced4e48ff980121076f383a2a0a0ec165815d
Date: Sat, 27 Apr 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714248742
