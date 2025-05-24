Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C522DCBF7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748062794; cv=none; b=XG+rpiKZZsAV2CgY4RILRU0RJf6GFqy+ZkcbOStPNkkhI3cTwlL2vTS1DjjLnccy81ksrdPFCfyMQQN7m+QL99tvxHYBaYTW8YTgEf+FUYFxylnrVfgrDLVFOW62xQgBgyM6Sxc01gIQtkuwQxDcYeZEIr9ic4JUXkNenV/5xcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748062794; c=relaxed/simple;
	bh=6ITwfzCZtwji3Rb4dyINlTmsrcL6EjY3A9yrCCKe1Kg=;
	h=To:Subject:From:Message-Id:Date; b=iUQqxc6J7iM6L1LJo2A99RyfDPnwJSXGWGKElByPrZ2gcJbNfM0r9qnN9WEUdvtSzcexvDSF1/CipupH9E0aUbggVDsyf5/g4Ac4UbrkaofVbb+afcHBSZPIbW2Fe2RQvXxGaNua7bikxWw+rNxbPx76wIgkw/Q0hUdN0HKFv5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISRdM5nD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISRdM5nD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748062793;
	bh=6ITwfzCZtwji3Rb4dyINlTmsrcL6EjY3A9yrCCKe1Kg=;
	h=To:Subject:From:Date:From;
	b=ISRdM5nD+WoDydLhBuZz9Q/9J9yJERbrJOmzKeC8sNIDS4ZyTIpd920IZMjDlJmjF
	 JY6nKEGB3x/6RPImoaORTq57FCfPds/9VaqmCDmmRj5ImFMcnUvFurv/MTl4syMBTU
	 xa1HhVYX+hcJZ+3evB02L0yr+JuD83SBnxOdnVNfp8W+XBqp9D1KRyhy2YgSJ5m3iG
	 +MPH9KtkgOla2HYQ+Ddje9Q8+XCq+1fZg6xWIQ3/sOEXFDI0EZ1oWrbk+BYm60lWqK
	 RpOozu6IVq3WsYncLOaI3pQ7rKS8mCuT8Iahu4Je4n1ltPiAxvptsigXr4q3MFCy52
	 x2ERG3APvrQgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B3C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806279357.1416.2666605280347677298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c60fe9e921e3ded060ad71bf99c4a4c68740b7e8fbe2f8a43d54aa1241078b6
Date: Sat, 24 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748062793
