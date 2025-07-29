Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F522AE90
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753812594; cv=none; b=ZMBwSXU/3DV7dFzV0rp3LWpwBU8EhfWNVG6m/alk+7f/svzT8guE1hBUO/lhTP+qI+zHihMcBc6t9HgO37pjUTgD1io0YIetu0oruSIKt6DOEjU+arc7eHl2vKvBID++C3hFpjKPGsV2bd82QPxuxo9IoecsnMvkehNIyJgEdTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753812594; c=relaxed/simple;
	bh=kKyS1QMq3JUztDArA9+5RWRDqaa3SLUooYTmSUn8FWg=;
	h=To:Subject:From:Message-Id:Date; b=CHJSDWDX7aT3AiBmr46DyibA52rlfGbffnLXoCvDMoh4YW6t6EIdE1ub9a/+O1YZpYUs3FqpvqZCaKROJFc+DUFtwAvbuZzKueEMIf+GEV4Sqz0Urva1z+UtT46XT6Eraniw3EKhf2+9wHyUp19fpoGesRB5hVc/aRGvCuas8a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqgOY8ZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqgOY8ZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7647C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753812593;
	bh=kKyS1QMq3JUztDArA9+5RWRDqaa3SLUooYTmSUn8FWg=;
	h=To:Subject:From:Date:From;
	b=nqgOY8ZFgxrN5mLqHSd6RXD6pEXgxg9kFxdhnsy0cMLtfucZf0n6qaJKEFGu49aDO
	 ZC8N1Gty6dj6ueAdb63eYgokQPP59K5g5WXH/pVKXjsTYl08+ok1197eDF8apKUaJC
	 59o0fcyrotWacP0VPVaDyb68tL2kQFHw2hB7XAEbLE8QMtx5n6cXLedtD2swDXp2N6
	 K/6jZhHEWUthrNlhD5C9g9OUOcsTEgxXSTPEAxgaqE07ljTADdn+fdU0jS9X5lK4kE
	 59wq3HmHhXECuh7uO1kXGlbh3FM2uCO41e+Hw+RUC/tBtbuqDPN0/k0fnAztwMHm4P
	 ZHNWgyXc2RmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9983BC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381259360.20074.4179318639780928161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa16957306b2114964346818e1ba1cd2bd009b4f745243950a64d2cd70af2d8
Date: Tue, 29 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753812593
