Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1378B15A864
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754566794; cv=none; b=aHWgYJY9lBwrYYFLDNx/pA9W8h/Du3J4W3KRXtnxeOPumHzc7aJcRMu+Zb1xdz0TQBdpEdicDXn8b7OQKrIDCCkxz7ORxzOGzBfQ9GI0TcJXYblJGrX12mXHtrOTINR49TiyQNNkg7pToZPuY7XIBYOsSBVVNjlFo8ke7wNFeOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754566794; c=relaxed/simple;
	bh=pNup/Ot2tL9odA27cyx0BNjp7oOsrz0cXGiwf2xrtUk=;
	h=To:Subject:From:Message-Id:Date; b=VJG/t0rKqOs+6Lrm+7T/DHzKMqP7yA0B0EIZEsmYSyTbwkvaGoS8HfkHwdz8iaG8wGiR0gkfJ/2uBpw7uw8mNDEll/lOfyXnFcEuS/IF7tF3XYca4rZUvRbUvJJcVt7uLQTSQbLOq8NPJQibMlFJ9GCvUGBJ9jB0c0V7a+Zo5YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krvIPS9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krvIPS9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1992C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754566793;
	bh=pNup/Ot2tL9odA27cyx0BNjp7oOsrz0cXGiwf2xrtUk=;
	h=To:Subject:From:Date:From;
	b=krvIPS9xgvg+Tsn5cV9B7Nau2x3Kic3PCXcKJBP3KpftCHDMsMtgQzd/csrlTUPlY
	 swL49g65YjaIm1nhuGK6r6Tb/bFi73sxUE7L/nxHCEFSLFjaHkBhmVRRLw8BsqnPIt
	 Yv2IvER5E2HAkjVW5fLJXqxdw+t+qXH9KMwz3PFvqjaPXbuSdG3GXw+shP0g9gnJlh
	 JwF7OjAps5z6xUzcG89e0NcaDuHV1XHlmeLcppBCs7HDiRYaTS6/d03wnUkQS5Xstl
	 Ad+99VenLvjrFXBy5R9eTcOm6LnFC63KVYLLlQarUgKuWDp1/7xNU5Aync5Yikub0Y
	 a/l1O4FVpVxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D58C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456679358.13735.10375932081614900783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eeca8807ac4331aab171631c0dc2d41be9695e43f049e20cd8eb4e3fb8c6bd1
Date: Thu, 07 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754566793
