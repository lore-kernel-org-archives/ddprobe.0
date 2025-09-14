Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B171F3BA9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757883594; cv=none; b=ZjvkQfog3qpq33yslMdQnTILvgvQFWESw0kZl8jbXfEvL6v61qdzf/XnDNOoftURfLapgt0MLywDFgwF/gt2JlkTTGlRsRj1uW6MAsMjX3ffi5XhNGP9m2MPJr8ZYHb4Bs3yT2IKscBR6lQfjkkHtvWr0Oyfq72zB21/usRM4D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757883594; c=relaxed/simple;
	bh=H0spQvdLg9U2MTnitV8NutVQfKuNwbRx+JH557hwZZg=;
	h=To:Subject:From:Message-Id:Date; b=Iy+Z+hQomlksSasRCQwP8d6uU69aZ/NtDMUtajNNRs1JynGkv75I9s0VkIosOY+c1sZmVih13InziGETFSojfEbVEcJvE/OaYd7m3fvbaaUFlYN8qLy+5rg4fNgU/CpXOCAJPdr4NrVRNB8DszMBcjlcCo+CeOgzgHmHkzv6Maw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaJfgiAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaJfgiAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0183C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757883593;
	bh=H0spQvdLg9U2MTnitV8NutVQfKuNwbRx+JH557hwZZg=;
	h=To:Subject:From:Date:From;
	b=eaJfgiAypT3i90OSkcvoefnCJ27eJtQXp7Wlyvvn8S9F65WdrOrsdM8fqnD4avGG6
	 cPwiPKJYLmEfOfCnoy7ZGpIXOhK9mJBvfLNX+lSkSbY4SAxXb3zJxejv7BVq1ON6jo
	 MOE4NfoGGo/Ec+crxIyiqTMwN4+qSrunVsOSkn1fT129MO64myIE5Fp99lRxhIBk76
	 Xt9d3HcU6AIJV6/fR+C7fPenyvjcBHCZMy6SYhZnGD8QvLhqeqXia9gfB6aX0Vmar3
	 CAb2jnaJlp76UL/nxdqQlEwUfWrP9HuaM77fGsqL9gBsRQhFe8gtfhFpTo+jvyoSSh
	 bKJ7yhKC7mcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F103CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788359357.26941.6624120970070650623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e2a001a1a14c15e6f81143de5a3142275f1d20d02a6889714a51a4926a2788
Date: Sun, 14 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757883593
