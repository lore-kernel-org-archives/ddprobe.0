Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A96714375C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721816755; cv=none; b=TbJTMHg1+3E0+TxXVD300W5yP8h8CBRobedAp5uIqpD0LmHXxzogupSbq6+oNxo/tn6ZQ8pW5mz1ja2oTyaDvtkCe5G9WHRaouVWfCQUmYuJQkqqHWEnZyb4c8ignwTYBpok1ExVJE3qSh+xsffQzQwZJLcd5+fGA2MNlST2O/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721816755; c=relaxed/simple;
	bh=M6H/T0PlARLkWWapoHId+StTVzpmTISVNdx3wAmwM44=;
	h=To:Subject:From:Message-Id:Date; b=GtR7QGkQ+MWQnuMKjA/1+8UZ5oWJ/6BM1jKGWsEjMYLDZn9n3ot1T+/pd1FYZXVb67P5HOTDmMSTEtq3EOOC9Yy/PZe8k/Lm1km664KPGL+DTVK3SYVVeoqH6WqOlNnBL81MqhbQCrdBR9UW3nN5GtHajZFHzXvEQhL4C3BaW/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlv9DQWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlv9DQWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB683C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721816754;
	bh=M6H/T0PlARLkWWapoHId+StTVzpmTISVNdx3wAmwM44=;
	h=To:Subject:From:Date:From;
	b=hlv9DQWCD9OWYBKBC75eUhD0Kk4fXbV4nQ5eu9FIEznm7K1stWTtTD49ENNgZ9y0g
	 PfiNdRLceiTB2Csy4+MucyVzpfrrfNeHug5Ogc9tOSYPLq5qfC77/oublHRU0hfOmw
	 4nIP7s3Fk+JQRozyjwZh50dJ/OOvmdNfyR1yAfeAinJ3m94Yew3QavsnVL74/WChp3
	 t50Ofc3TojZtPi4hocBNtzvzoy/JzmbLZ1EsU86afUyYTw1QvYGWGonSeE6RQQnT02
	 fzdTLdVxtRqA/ioyADSoYVMHnrj7TowaJagY+PWZ8hKAJQOKqTC+RuN3XNUrwJ4IAm
	 1NQ8jeAwY/q6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98676C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181675360.23751.2129978734626743499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60834d6acb812499948f90af7d34fa41de42fc7ce51827ef6f5ba78ceb06006b
Date: Wed, 24 Jul 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721816753
