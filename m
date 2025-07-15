Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06719004A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752604195; cv=none; b=AY8mdxohxD7J6/askHTx+Q46u8s3hLRI4CiW2TrToAL6d8gjerer76hFEh9ufd5FiHkZcr9j38EzpZ/SKndWE/82ft3iwaU/06Nrs5VZtN8YPlGdzL4FJ4WudS4AUt3YjXErHeQPZF2c0NkVsdeQoQPlulj28+lo29Bg6+OZt8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752604195; c=relaxed/simple;
	bh=QAiQP+RR/rwDpeFMWVpAp2h2dP9W2pwt4cqsxSkypW4=;
	h=To:Subject:From:Message-Id:Date; b=TZdYxkMiIZ1XIZUeWm1WE6Ceq1954cUU4EG0ri97bVAyrL55PxQHbETC80GXMRnp7gJyK588WsrbFKeplslmVJ9LOAzptQ1zpihcSdF+R+/hZGYotL4HfP7w1RXbfZswVzBTyHT51Jk9gLJkg4VIT6g6LYMGvWTyDVoZ32XYSLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4chKHNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4chKHNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C15C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752604193;
	bh=QAiQP+RR/rwDpeFMWVpAp2h2dP9W2pwt4cqsxSkypW4=;
	h=To:Subject:From:Date:From;
	b=p4chKHNZxm1AOsPI19I/x4fQTp/loSs09+zUNl9hSrvSkZYoq3QuLchwBWyU37Cpz
	 pmslxmVDGhidKZt4PDE9ht6uVnNp5sXe1vguLfwqO1H6RHs4SQs36uvgDgmp+YfSKZ
	 mUA7/zPnD2qLaA09FeNAbE8tdK3zvfdHNzcdwIQRH5ebzix1UCuQllv4JhF0cPmjKM
	 qTYJdonjxAXSL8vZhDg0QnxGM9Q/otVyIeTWO6TpG0Ak3Gwb+I8vWYE61pv+EOuNVR
	 YmvC2Q5pAIDT6wuSKxoo8dKl13vE7Lqqd4YZc2eSj7nki/rI3oBgj16W6B3zzPUQLi
	 SR72+Mm+thz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96099C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260419358.16216.5644483674184851819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebaef0cfa51a0bd881d10890b2d3096123c5f4f551930d5ea5c3989681af851
Date: Tue, 15 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752604193
