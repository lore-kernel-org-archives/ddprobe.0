Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165C33D8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760158794; cv=none; b=mX1ZBfCkW0sxVK6puKGycICcz3YmXGYSyIWchg8gindonz+5w76arNurz08qjGFuEmn/ehQ+0XGgxSu5TFh7wzHPIbfpyHaOBtxsR4URilmra3eN2/68lerOSHqi7fcMfz9jyWkmCwb5LFBGIZngWOW3Qt19yAdEQgG3hNh+LSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760158794; c=relaxed/simple;
	bh=0938tpM7w7ASf7yzJ+dJ2qMcKvgEckWK5CCs6LMfIlA=;
	h=To:Subject:From:Message-Id:Date; b=kleKI4uwcw496t8N4gqzwlMMfHyoToSu8Z02t3idd6HhxlUjjdwhhon0QYlTLiOU0+vCs4lAmw94v/IUJt4RKZWZUQtoiJq2JSfKSkfwdJMFhe+/Ouq0tDNpyU9Asi3Qw3uI4QgHJ3YWlQ7TiEsYvWErQtml2x/D2ZKaMqk6eqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEkfUwdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEkfUwdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D2C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760158793;
	bh=0938tpM7w7ASf7yzJ+dJ2qMcKvgEckWK5CCs6LMfIlA=;
	h=To:Subject:From:Date:From;
	b=dEkfUwdiVpAr9Y9HWspAvWzOB9YL5kenLXVOOFzve4gaWo3tZJO/PxebatdznYpU+
	 tftkpXABOXxHLlrfBaQ5OEhrpkZJ3m0FWwVzMFW+zzzXxAwh8MajmHlVjBcQ/YavCb
	 Jtvk/iRKXrwOYKXCQ4wLrj9KqF4QnTjJCpPQ5Ao4nX4nQn/679ArXbvK+Jwl76i/m6
	 Qmj1oZfvtN74JhKnW55w+dKYvBfiUyIRz2TkCSDV/uIE7YvATAwPjQBpFY93lVjSsp
	 4/9Ze02eepsEC8vPshh/d12+bkj/M5WV34wpIyCkJ0Cna5qckJSdCK9FDNvFsBErfy
	 mFqkVpdPAPHDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEFCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015879357.11563.6688574951381703328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea83625a2352ad53cbdcd302a9b1b0c57ad5211fd5baed8b26dcb9850f2fa8f7
Date: Sat, 11 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760158793
