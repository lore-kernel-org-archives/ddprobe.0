Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B1618F2C0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718408903; cv=none; b=ILOvxLY8Q5uO/MkUyLZBRJ2kt8CpGk7KiWCgdmm2IuYMDJHK/Xp6Xa2fzA+myFIUBZ6kSjrra8Q6oIWBrvd35Dp54BvV9rbf2FGk8elVm5CLFy6hk1A6GUKKjW3GUYCex3E96MEi9qNbCOu0jb7OcqAW/hw8Hetav01GghUjpNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718408903; c=relaxed/simple;
	bh=aoMbArSm6XdMHuXovh2cth1V3JvGN9P/yEXYF9NGzK4=;
	h=To:Subject:From:Message-Id:Date; b=QZwbMyrFbIW38aKj6pGH4h2xSHX/3F5vCCf0oKlwbVB+KfZxXGEEBhUVNUQno+vphnt+Mt7fjIcXYtLidSk2/Mm+JPeuqBrnJKDsaXxGt1CWtgqV8YhvrKnuyMdrsS2VwsvF8AMIyxnWcjUDhVZ4EFIVxjORtd9AXgqoQsAWs38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBY0cuNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBY0cuNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C48C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718408902;
	bh=aoMbArSm6XdMHuXovh2cth1V3JvGN9P/yEXYF9NGzK4=;
	h=To:Subject:From:Date:From;
	b=BBY0cuNk3gO9ydT9zhWN6twSlBc1dGfekHzYLlWn2uG+JSV0cl/zgpijW4Lihu2Vd
	 piU/O1bFk6GqbWilul0u22u9wHHgtOL/MXlV0swM6wgCbO8tRAz1S6foSqH68hv9s9
	 n1CFWGL4Ka92+Zt5XOPzXcP+Sr71Gw6i9ZYLjMC9Vlvr2qSSY5zBTfYaqr/I4J3+tR
	 sMvA1hqDYcUKaDaxjzOV8hRP7ZxQsYJdFDrJ2GCts5Zizm5Erxh56o2JjSJ9WXDzk8
	 IX3A4UiWyPC3c6ZRqk7ZNi0ItAaZjZus21oouIUBP6zFfeD6aWrjyw5/SvDd3ejygs
	 /2BiWqSdghdYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCADC27C7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840890276.29994.15488262472669227685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c81323dd2ea621a376472d102bd66128500b0ce4b598ae82975f7e4ac0e6e0f
Date: Fri, 14 Jun 2024 23:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718408902
