Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A482D77F7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761994195; cv=none; b=n1idOv5qZhqDJ5DlviG3n5EYscSV4e6wlOIIrBg221MBvGEjZlHF3w+A+F6emDXfeILQ980jtfjqfQwPjPr1Du5KqvIc8axvnipiNmDKu7HdcZbQsnhzsevkWaoBYMpGPG4E1F0UqsGfMcJFkAAdvfI3iVPWIM5z4s6IoyaUBDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761994195; c=relaxed/simple;
	bh=NmD20CHxwL1YtZxSg367N/rV7x1jSUd9vqfyB77RpDE=;
	h=To:Subject:From:Message-Id:Date; b=Y81XENDaoQrUj5b9PxyNAF/NjCjzmKZ1XTeUriLnDnIDAroRI8Ih8n6bgbosblSlaAJvC7bQX1Vrw9oxJ+brirCIiaDeez5Sy9TCLOqJnlU6j5jWTSDNgZhcIaTfjPta6jd1nedLHV9KRIndsQ5UiR8dqt6wwmd9h4VsXpjfd/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OL5aYwF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OL5aYwF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761994193;
	bh=NmD20CHxwL1YtZxSg367N/rV7x1jSUd9vqfyB77RpDE=;
	h=To:Subject:From:Date:From;
	b=OL5aYwF/KHPLAkeyV6W4IWlUz5YLCp/Tg5taCnMuCXCBJvnCPJh+jn+dxOUftaN2X
	 9niMYafjxxPjD7K0aeT/E3xTQ0uSnvE06pgcHnN8VLXMF3SzdRkDAkc9mPhAiRRpL9
	 OC2RwyENkHBoNegLioiFZO4FGp6Qoo2AKXCkTnunglGgePxtVz14XVhvU4520GEAg1
	 ymP7yjzNFs133BXOB8Gj2Y0di7jKy/Vaqe25rJdlHEurmKTJIXxUDvjpuS7pLBb0UC
	 9EBYn3o1NKKcj8n4FJ8lXdLdLIASMWJC5dsWt35vnedVsPkVoRoXXY+5wTNBCU0vCH
	 9falQL0SiVT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6DCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199419358.25475.3651125782675587266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e029f7f283dbd76900916e530b18fd065e4c56ea5e93cb53b42532ef8ff7126
Date: Sat, 01 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761994193
