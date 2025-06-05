Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883A179A3
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749137394; cv=none; b=aYvpXdNi4/VXTGqeTrCPxxvcEeMGHWCVF3dUtqsZnlfuSm6sbxrthVKZtl18BRrlNiHG9HDU8pENh4SA8VA1hBqJSIrWrTDAIyGSxh1gFxfhB2O8KmAXWLF+shUzkzOf1br0eC+NKfM43fmipZXDIxGFwNVFbvtQw249C0g3xUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749137394; c=relaxed/simple;
	bh=+0BMYyUrPTJbANJRnZQrtHm6cpMEhvOPVJUmoBLXFmQ=;
	h=To:Subject:From:Message-Id:Date; b=DDlzqSGT7aUuLFRjHZuvjOYPDKY5hkJamwkV+5Swi+wN21v3vZbsHIcff1ez4pAdHggfd+E8ozyRGHBb18tXhaZDXnOLvyEReISTDHLgLkz/u/G6gUw6bVsu85nS9V0IsG3pS0/YWNYbLxC5hO8Zdm6Hrp776TIB7HI9gYnLS9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWWgYxpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWWgYxpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3895C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749137393;
	bh=+0BMYyUrPTJbANJRnZQrtHm6cpMEhvOPVJUmoBLXFmQ=;
	h=To:Subject:From:Date:From;
	b=NWWgYxpLc2cuNnOP9+LepgYZSydRHX6Im794/gJci8uv+IcYwMiR8wEkEB6TedQxy
	 tt1aWrj8XLba6M+z56gq3XlXWsaYceyuYFk7Zo9duwU6Txj3cb8pezvfDhHJspc7eO
	 PAhxDiqdGXwSaBq34OdFIvjp+YpQWxPot9RHGXuqb7QYVz30HKKNFr1TzCzDH0a+iE
	 HFHC6Z0CSyBTg1EIhvHHbqw3TOsw0vGovZ2SlWESuAQcJdAx8NmJ837NKiFbSP32u3
	 QiVdLwxs8OeXOcrzbopGmcU0gS7g+7auvwC/mvf4lOn88IG0nTRMBYMQz+4ar2z4Ak
	 iJBU1homqJw1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B9C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913739358.19523.14415171672877523753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2535ba529e1ad836b2ecbd4703f44cd3fe9183507afd9841bb54b7379e96a45
Date: Thu, 05 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749137393
