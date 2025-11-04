Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1971A2D1303
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762277994; cv=none; b=dToTu+hd1ARrvpyZDL6gpAG74IiBmGs6ql/eFc4gsPdQQnjbjtr2l3GEWZezfgrpuENtFa+BlPs1AnB6yTkNlxfpJFrokxCAJV0NruKRTwixxL8KicAMGrU/82KzCYguoe8If3AZoeZ2OtFwD6kgBIe3HV8tABVdVNO8kBNOEmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762277994; c=relaxed/simple;
	bh=CMBRVzDhaSQGoIWz9I9ebvNC9UDV7MZaGsHgXe3nEcU=;
	h=To:Subject:From:Message-Id:Date; b=oslJ27NJUEL8i6K5M0taW03B5Ue2819RX9EL/KjvNcmuyi/FwKfMWiLootloa7cNPTbgwsiF0hOmI5A0RyiUcfseMgbHbQ4bbtnJkvymZL+UxCC053c3OxwibhDXZtycwWPDxnL1zJ4tg/BWov9JXL3u2QiFmR4SS6i4/AnDJgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTBEvo10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTBEvo10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E243C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762277993;
	bh=CMBRVzDhaSQGoIWz9I9ebvNC9UDV7MZaGsHgXe3nEcU=;
	h=To:Subject:From:Date:From;
	b=iTBEvo10LuQSH7WxTbRKfy61SH7TheLY8sDbhCmybHzG5iro7YirsvZpk1BjFPx9N
	 d/QEJDNDsZkzBkhXtFv6juHHOgHSUd2CEzUFlQaZqyJ1uBVECfUmsBfDP650vBM0z/
	 vYvqp4zX9wUJJZplle6GFHsDUvvnM6Q2bWjC57e+30SiTvfuDR7f9SyX8wtU6YQvpp
	 d/AF18B1az5MIChWfa8gFopcMH6c20XIqTujOIscsbXtGonaaF6XrH3oTeb7pz1B7z
	 Jv4Mqif3L/48LRBmKtINmeTtMJODQRHDsMgaTy0v9DQG1tHSd662CiC8sxcifYb3oe
	 sqLpD03ngfaAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91956CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227799358.18576.10789076063286034316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6b9686c9ce5e258b59a61cdea2c6e7660350db4d6e1f1102ecbd25867c27ef
Date: Tue, 04 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762277993
