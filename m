Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B717F3B0ADB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788696636; cv=none; b=s0oCdOUaXCFRhOu69kM2b1aaU0Bz8mKlvkdXJZySYL2fZaCQeIyf1tReyS+PJlol14ibUYdbssNvaqZwllhCkz34PvKdfJTv5Rkjn6SfqNg0F0qfnkB2+iKi46U2+QgqaZd94cozm+/OJUwNrAk3ijusCARjWqC/lAMZq997jLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788696636; c=relaxed/simple;
	bh=rW4YbklvutTmaBHhAYxst/Jbv91+LwffLiWku8WtUFs=;
	h=To:Subject:From:Message-Id:Date; b=bXc9SiVuucijR3vygfCjd2lyDLgXSXBNLEJZuRe/t07R3o4LAUDUEA5wXkmtJVo4fdknO7d7m8nmvSKP0xeuQKMpzShlmX1H/HAb2mGrvJXMly1OVDh7Rj1ocvCC2hogjQqXE0Go8BkVZGLQlSQu3bwjsXQRRdXWcm16V2hNMRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuL+mm2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuL+mm2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB085C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788696633;
	bh=rW4YbklvutTmaBHhAYxst/Jbv91+LwffLiWku8WtUFs=;
	h=To:Subject:From:Date:From;
	b=VuL+mm2Q6nDI9AuyeU3J7NYcdtmZQ1euEU/9Yp6LZJLOFzKjq/8CGCiBAsh+xLvLO
	 T2HiuKSWANTCwto62qq20ovNHDvCPRyyROjTXVRNLZzcG0yW4BatkNsHk8NU/5u+ln
	 JGER71n9R8s97mNP0lezWk6FcEZ7VsZY//W9EOiLJmMXlsW9lZcjXTxOqf/rpw5w1+
	 JwsijgFFbwNbPjwwGgnsPR3eQZ/GVVQx96IbCV0jWdw/fEIJljvnKw33Q3ZqQ7pXJK
	 5bFJ8tlxOumASomMIDQhCU/iLE49EAljGrUAg/lVrejGqcNbRUPyp4RhKrQZesX1t8
	 Ro9OXnJUOayIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF2C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869663369.29769.1016553823212757388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2924bcf5df75a259c7571018ce84f45d7bbeb0a579e34190e550a5a4ad98b2e3
Date: Sun, 06 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788696633
