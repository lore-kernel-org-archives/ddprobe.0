Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700019D8A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751493594; cv=none; b=YOE9NSJXL/1YgPXBSYYjGOj3xCNcUaGhcwRNSfMawPdcagRlB1FAQIYzBmpx8Rqad6zNPHt6IEINE+twyyMiJbD9Y6O32Ps6ZIaK6EHPU+NeoZQyCaSVDla3BdzKKdPQgPzh9SJiIZyHW9+jxX2BZXwC1uJOqn9rffJ3NTXeMcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751493594; c=relaxed/simple;
	bh=ipxlKXm05clD8GkRrmz8pmTEEpfXy66Fj2oTHBoFq3U=;
	h=To:Subject:From:Message-Id:Date; b=lo8Vqc/BeTLqQzLXmIWqLR2Q3ZbEWku4EauavM4OvHH65gpoKHOkMcrmrSAKkmVO3X9bpyCmqC83zXf+bORgTq9DqJHiOE/HTExusjHmtXWEquJ3/Vc0gJeWmZ+coBfudHsc9OUvwECQRumHXVlFhP7e1eWn3m+EJVB8DQxCdOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii8kr00q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ii8kr00q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C1C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751493593;
	bh=ipxlKXm05clD8GkRrmz8pmTEEpfXy66Fj2oTHBoFq3U=;
	h=To:Subject:From:Date:From;
	b=Ii8kr00qN/QXSIM66u9UwkONsGpeIPYDg4vVd1QY6IuygivdSa3j5U3aPoGjuwvrW
	 K57ezXeNDWvDCI+7LV65XqnDw/lhUoLxoO4m2/DMMY0NNIhQyZ+5wDpa0qvEa55GHO
	 kl2lW4aBlsQ6Hrzxlt+RzrJBrX9P/x+UU3rkzm7Q62nDIccP7/FB8ud60BG5PhdFzn
	 pai2c+e6Lx3CtKODBchMK0id0M59Ao4Se8QcZlSJXB0cnoayb+HLqzy6iY8FJjoMxS
	 K+LiMUhm19CFYJBc4o2zeBxu1Mf7RDfRy48J9MsFHS15e3SwxTxr+FZXg5YUl3SEMM
	 V3++spZpffvVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA1C83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149359358.31313.3103166681401583173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623a07f36a3764ebbc041ca422d0ac447a37e2f5346c56662fbd65e793a060e2
Date: Wed, 02 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751493593
