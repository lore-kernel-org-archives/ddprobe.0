Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F3C17993
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789946434; cv=none; b=grU+LU3qe9COpCXKqY1LAXQoxF+EM9mLb/nIvFGKMAjdku8mGPRn2RRrRrMwwN10fGHSde0UnsZTclXoSms+ymljwxFTt23ixDM3Z1f8UL0xwRYy3FtN4zjgrm9UB3jDzudeKluD87Vmdy+IBExGKYxb0tRPqEgjYDvji1jcPos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789946434; c=relaxed/simple;
	bh=QM8hakeloTe52iccibGm5HhEfBsDPqGlc2qtc8lu74g=;
	h=To:Subject:From:Message-Id:Date; b=WxX+AI3zV8uzFPofe8m+ICFEEQ/kW1iQLfhJ/ly0pzIBYKJ+BR3492li2qExt2hsMtrcYw4VDBkHb+pMkhX4c8f92QIIxtF0UP1BVrj9wxzXWE+lyvxKxGc6h5DHEIhBKwRfSOoYtaU9v6eJPEyM0LrHP0OX8c+iRSxKINEyCA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGDoS5vO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGDoS5vO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE4AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789946434;
	bh=QM8hakeloTe52iccibGm5HhEfBsDPqGlc2qtc8lu74g=;
	h=To:Subject:From:Date:From;
	b=qGDoS5vOztdy9FRqZQ+G1C6lW60USVrAdN4IcCylYaZ+ism6PKe2SYwfH6j9LZ5h8
	 NaEod7uNnjhBROoTPXCpY/0MGia/yDFZQ66Q/hEjmc3bwHxur9qk//825PQgXq5a1s
	 bqalUjvJ9q4SU8WDzT5h5KQlAssNQz262JhbySmDNBk/WjscAGh6CCQCo6deJlDC2d
	 1m5dyUxZh6yf/Nv77jK3VOl7PQNX/d6GiRg1HBudBwVgWBO5AIolUNlSmcrU/Q++UQ
	 sMzpwpWLJ0e9E36blNWUHlzGKlRUk/UCT3s4JTPMHFxoa9Bt9eCZFOGfbCgjor7Xgp
	 HJx/MGYRBrL+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0628C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994643368.8709.14433811829956251496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738101be15580bff5a0b100a1fb5f7cc31d64be9266bba02ef97da731cbf0503
Date: Sun, 20 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789946433
