Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4305715A84E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737736554; cv=none; b=o/Dg1xCme8D4zEfyc4P5JTOYmEs8z1UFxHixO4o+lYp8NX9CT/sYDPwBzrTW8VE79Nhsm6kz1/b6oY2/E6rShrEH8N1CdMTjOvUk3T6C242zZFLi4av1K5iLeLDNL7wyvkXUYuiavKsxo8uimvt323qKtLztdXJDf3UfRq5luwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737736554; c=relaxed/simple;
	bh=r6n59cjOgMavTc2RLsQXZLAwDxpS55Z76dz+4Vx7QNk=;
	h=To:Subject:From:Message-Id:Date; b=Z2Rz5usgD6na31sOGpkzr2TBQ91Zyb/wy48gV025tYsfgM1HvGdsiJXX2kVhM/f8k8lS2PoLPQdntQeHBMXHi8TdFvQdbIVW+Np55XNZCAW/BRmcQCrKHZ7TJP89Xp7f3aIp6mhZ4cxbkKNR+X0SfaTHSL+tmw+UmdWJ0cFg60o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHH4LmDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHH4LmDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD99C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737736553;
	bh=r6n59cjOgMavTc2RLsQXZLAwDxpS55Z76dz+4Vx7QNk=;
	h=To:Subject:From:Date:From;
	b=QHH4LmDTqNvRn84kWb0ZqgKN9YKUvrc27VpZj3xtZNK58rdJz24Y+bl4wvdpVHY/K
	 CT+sfLLVSFEhxX1C2QVfWLvs0SFvW+MukR2t4qIvxltnh/qhhMyGoWFad2s2rsc9XQ
	 XSQxqJcuZ1djF0RYzj/oigbaVsIVdNRT0EEHX7fIFEYBNSHhB9qnKW36Okrg8UwOGQ
	 w0ViG3Who1mJnrloovryd9bUZxlQxTYy24cxIc1Cws/qgSXJ7g+87Gh9Y4J3PyfGFE
	 XdidJebHDp8lXCWfNFKKb7fpbgVfiwiv3ZT1y5AYidKd7rdkeq8A/+POoUQ8MD0wAH
	 1iYoiY48WNHnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B2C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773655359.16981.13194320249109152180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acf191a220bd388e7f7a3cda5ebd2bbcd07fa371cefa1b08a1db60154502fa9
Date: Fri, 24 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737736553
