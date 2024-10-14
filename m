Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A5D17F7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728866154; cv=none; b=P1AcXWnhcOUcpxZoYta+eJt88JkmQX2P0srPpGDu1aLlbJ+Lwt2rmpe+uR7+tonQNAWYdqRuQ49m3hHUpBFYw8R7kiBAET+ooZQVAEVKWVZf1snKmSzjPbdVg26QeErrfYvGa9NhWEvZXSz30bR3xWEE2//fogaBFEuZT5Vtu7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728866154; c=relaxed/simple;
	bh=/wXvA6/8/gJq0X5mFXW3+Z7S6IcXbjpukkjymZZNfcc=;
	h=To:Subject:From:Message-Id:Date; b=gkWOpDlcX/IYh0n+JNnyXokaw04S83ugoJjGauOXZFfUoEBdZsT4ooyBGZ2GdJs7PsW0Q5IPr3SqmMCHw36Y+P7CX0iEp20Ji+kqpCPqfTIaSLWxsREIBNi7oAfUNHD8T62vELZZn+nBI3+HVuOKCIYcoPJmhsOfTsU82HXWRGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy1Z3aqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy1Z3aqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C99C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728866153;
	bh=/wXvA6/8/gJq0X5mFXW3+Z7S6IcXbjpukkjymZZNfcc=;
	h=To:Subject:From:Date:From;
	b=Fy1Z3aqKdy7qU8Bs6UwM2Mdw23OYY4Qiv3QLffpkeOkXFnDVm8CU5KDZWFPDta+N6
	 X1DqVomhjJgLImMjK/QfqdR4lNaXmUp25ko0lZmUIGambAQ8PU3015m6Bsp+ZzCn0O
	 y8bd6GhN46cTjl3T4Y/+VIwMANZgCAzt8DQU/pX1nphuMGno36+CuBrggpPYLqa3dp
	 Fxl//D4quF6La1PNEsWvCf4IcdojxG0WeWQGmbO6ZxBB69QUcvquB+nTbXLzLd9UCB
	 fqh23Mra2QkKVS5WpKxpBRIK1MJGOGwvdgKp2i9fJSQzxIgQI5dDtsdkXssmEEk68E
	 2Dbpi5wDP9www==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A395CF2591
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886615360.18487.11998438378693657883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67f7d0dc63039e98b7294cc3eb2ca5260d33e966f0ce01e74f5e0104f971b4e
Date: Mon, 14 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728866153
