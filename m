Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4995C381AF
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733688354; cv=none; b=lM41q8U5zIMAgjsG8wMrM4UH/t076Dgf7785sAkkue8PBR8ve0qHbSK8HKy61pZJOUokdJAKQqBq5vxeJQRRSonm/RrP7qVYhqo6PLvJxseK64pE5g8kogq7C4YrSxpQh9kpgEom22rcZQLT6KfPbydHUB3joSLEhNa0oc+l5Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733688354; c=relaxed/simple;
	bh=sHH6Ozx1M8B2Y2vX0TXfGXLaBGAy6nqqmhPwhP6mkHU=;
	h=To:Subject:From:Message-Id:Date; b=n2D+DDlzfJcb57Xjy9JLth+hYr0xQB7Lkq5FcYbjIIkSNPyAiY395+o+HCBnihtRYwQC8KrQP2oU2+SyqhtLGjqnytDOfPAHwYVmaggswFAViKmKU2yEebLiUPBBKafJI/43254jfYByw1umq3gUDZO6HvUbf3MrbzS9rAF85qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqg6I9HY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqg6I9HY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29B6C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733688353;
	bh=sHH6Ozx1M8B2Y2vX0TXfGXLaBGAy6nqqmhPwhP6mkHU=;
	h=To:Subject:From:Date:From;
	b=Oqg6I9HYIyd9gnaQVfQvZRG1/Jg9dr4QGNX8jIwchMsqkUSyNkJ6094by4c9X7HVu
	 H0Oxx7U1iQbzpnmpKhn0obapoXaNui85o8Kgz7TStCKM9Uo4xw9TDYTpWaHl1Quxf/
	 oF+Ydo5d2NVTBjPhSXFzAAcccvbAjWR3B98Yk4eU6qg3DOV2UPHtt8rQ6SAriln/wY
	 Nspgqu4Es0JrTTWlIN3SbtZFtXmfmjIuta27vUWw0n4DK7HzLIlgqf3PUk6sEKXoHz
	 XsCIVJWunTA7ME4dLYcvsf/R5/slW+bCJ0cOq6Mbz1R1RbjSGvhjnKu2NXbCF4xYRP
	 zVEPgA2HKEA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AF6E7717F
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173368835362.30922.15179761324086886805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe41d8c5f45ae038ef263ed600eda376d7dfddbb56cc29ac3f3f6653f38e270
Date: Sun, 08 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733688353
