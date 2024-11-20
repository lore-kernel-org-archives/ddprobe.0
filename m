Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29851A939
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732113354; cv=none; b=flUDPaP0bC4ll5ijyPgwEC20v9mq4zZqmSV+khD8D0RyVVVYG6Ih9Ne8sB6NoOi0uT5ga6HOuUN4s54fc0k1NilE0kQODaIzHZBbE9mda39rQMDsQ17+lkwHISRA5FvGbY9hgOsmh5zUDIKoIB8zC/bBGHAtwKXbZ9sqG27jbsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732113354; c=relaxed/simple;
	bh=irjZScErAoXVxinnjL8AB5jDUlM4bWoB38Q9p/B+NXI=;
	h=To:Subject:From:Message-Id:Date; b=BCyK6tBdf6DBb9FfRh5KbJBB1c6aLWe5wfL0cs3LTzcVRHhoJcK6+s7mopMcECaqzFiP/JS5dXkUHqhLf+oz9uiFBj0L1n2vkQWb61MTePS97u0ClEcU4jWkbUqHSI0YxfyzYcrvEpFipfBV75eWWDzr8/x3IzMf8z1Nn+8JmiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+7xP0qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+7xP0qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93EBC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732113353;
	bh=irjZScErAoXVxinnjL8AB5jDUlM4bWoB38Q9p/B+NXI=;
	h=To:Subject:From:Date:From;
	b=Y+7xP0qa5L0e6IoCQURCxLO71Picgjv8D3m+FC2Pwlz3v0GYbLeGRPsTq/7y+rx1f
	 JGC4THRGu7xL8D8xPgfMk4efF/qtBytRV8HgxQ3vDh3BqVm8AyLLhKjvpraMDUa99x
	 0yutxau8izhU1JlLPzhIQP+IG7OZAkDuJziyN4sZBvC8iWp9WKfvyl1rbGSr0L/piN
	 axUmM6re8KtZgXoAeitFrsZbek/6/FzOwCr9XngqDKjuQ6CXWMW3n3020NRJdNQ1MT
	 Z34DEVm3CHmwoIgClNyS8RCDV+RrhgIPMnJ5ROfcKOdpLVDVDmWkW9T4L9BcBGzbSC
	 pRCjaQjn+ACXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E5FD63954
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211335357.5179.13531252925699759897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b3d27b19e8d45fdf34c0b32d4e742155c0d710a4e4b49514017e387936eaeb
Date: Wed, 20 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732113353
