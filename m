Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A25A366DA6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771616694; cv=none; b=j+V/Lyj0iTdYOBlGFcsvUoBeXG13IYpeeGNEeAoeGM/aNBCpU/vCxIKff32bdT75Oyh+HA+TlystSHZ6NzAqLU7e4cg+1H8SB5TXY8EyBk4wjp+NxxBBJUSDQtj0+Xl6LQzJjrqrZA3wHkPLWlYGah5IG1g8RfrDyh0jAUjg2Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771616694; c=relaxed/simple;
	bh=0Qo9alca3TJ6vOxaMx1QL7GIAFuPnq0CQRUhbQUGfUw=;
	h=To:Subject:From:Message-Id:Date; b=hlGT/zwJPc7hIaT1qk7yJzyIcbO5NvG9W2OrAQmp7Kpobee+l9WzRQH2TUFXldp1zJtpGETQXqXBd7Ye064TuiD3FC4cOHKsH1Etxn+Nv6DHQ5bLWMOhkpPWAf/AFBn+NiQwWgojXre8cxp6dErLS2eHcBjTSwOTBi5hNAIk9I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaxYPLCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaxYPLCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB20C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771616693;
	bh=0Qo9alca3TJ6vOxaMx1QL7GIAFuPnq0CQRUhbQUGfUw=;
	h=To:Subject:From:Date:From;
	b=eaxYPLCSFnA8EemhZ3J6WAOuGZVjEVTBNJI/+DI6IXpJ1xmuYq6U+05W+ezUnvPLs
	 ElUkrN5HGwlKN4q6BVP/jyZDO23FbjGwqcnbpg8Yk4Y9JLwkCoZ/kxpX5NwmgUhHQD
	 cEneb0MYPwsqFmwWCM773p+kwkNOaeOO/JBPxx1Z84ODYng2WXu5DKu0/nQDyofmzK
	 rmSee9T/RyVyP8rBbv1tVghb3sDLqK5PANb366g+xNCQ9LD8FnpKh3C4c4ZQup9mG2
	 knxy4UOtkztOUcvATWWgsbont42WqAI3/7mXPrywXW64B0wA3e6mVzvidoq5eic0Zc
	 7ILVbtv2b0b0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CFEC5AD69
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161669364.12570.7174514876845970703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e9ffedb7b394c7c81b17041e102f00e8568dd9f438b29e6da5be03a9d62491
Date: Fri, 20 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771616693
