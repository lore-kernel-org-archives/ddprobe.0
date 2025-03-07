Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BE814D283
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741337334; cv=none; b=l+e6RUPLCaqkcDn++RC03kib4xeeq0X32lAySIvtTTrDJj3OKDut3XWnM+B7d/ZCGu0aW4NpLb/7DCr7nsW91/v6aqR7AueVcCIksdE9m64sJAFizDaVOt3Y5w0DHRDH0e8ufRZ0XNzBdeyz5n6/pmRfs/2S0n0Zl8wleUfWEvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741337334; c=relaxed/simple;
	bh=pU4AC/n69EN8xB5jhYMzLoJPKrgfjiiQqJYPBM53CQw=;
	h=To:Subject:From:Message-Id:Date; b=UcvxMei7u0SLgJv9wAaibRJujoAvt3AZYlnI0mvK4QWY7OEZdz2VODzqd41DVlipaFP2ly2N/7INmknglPn7T2ddA1hXnoCwoMYrDRwri81650VIAhx4uDZ2zOpsJFgKcRU+f8BU9vPEh1e9QcMaokhlyU7MJ6MLQKCuIIkzB5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuVVL6pS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuVVL6pS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0509C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741337333;
	bh=pU4AC/n69EN8xB5jhYMzLoJPKrgfjiiQqJYPBM53CQw=;
	h=To:Subject:From:Date:From;
	b=HuVVL6pSv9ybQyZef+hORJAgkmGk+5vW1tLggZOjvyi5sD0jFySmb6iHun50BVvMC
	 VWTgNQ5M3aC3QwlGHtbPiGXUXMIBuwxsgDC2rW0V2kTvbwmWMSA03/NQNt8VMTig6w
	 ZC899DKlRGILQnMrEIbe5XYLI8WUtoDOhAlm8MJYyGE6WLw8E3ooDmoLzDX8N/sTux
	 xzMM6tC4Yfk8hXAWsVq0iWYN1wKmYZxlvF0usG+MvsyfhMoQRTkBeCtOuLbodhA4AV
	 NDgojkM3lFPTygnkvBx5X/vE1h8PfYgOKCzhPAZ4RQeN6Di37yueXtedrE3htnG7RQ
	 VdcBAEEWV3ZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F7C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133733358.3127.6896667142636030718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf74de85d70e282bfac5e07b4da1cbff381a9da23dc449272f8ed7c1c7adbbb
Date: Fri, 07 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741337333
