Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3121036EA98
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778641834; cv=none; b=iOytasFEfviZaPzELd0borfEj9fQL8y50+OHhdfotG9wEik6VPgCP68GeTYubZlJ93xr6S30NScdg6nC7aTDbbhGBcExBlJDLIXdbn4nqVq3NzaJrbjCkIuTuj1FgkwVFh/wJNAz1pAJxdb95TdSWsqJTs72WKaibuj6C7XtUHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778641834; c=relaxed/simple;
	bh=Dsz0wWh7173wPwYy/griroNA4fWbo3q4FAwLKoUED4Q=;
	h=To:Subject:From:Message-Id:Date; b=bgrUdoAr/wz0QgcMGAabThVWv5jjLAsZ5PgRIk9SOor09/z+phTLf7hI8E/MTsq4kQ1Ym7Cs8DYM2L61MPE+IuF5K6AFyL0TkQJk2kHRXmyMKSMKtIv/3p54daGD1S7Icsr4lJMNkJYaaKxEVOp4hhUzyMb0GxJNWgNWOGgg0EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB7cXnYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB7cXnYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C866AC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778641833;
	bh=Dsz0wWh7173wPwYy/griroNA4fWbo3q4FAwLKoUED4Q=;
	h=To:Subject:From:Date:From;
	b=LB7cXnYxXCkukc6qrMBswK7AEt1p5EoqUZjxp34RXrSDA5nY2nOY7ha5DaHgOX/UD
	 Fj4DM9+bESC3KEnVt5Bl1/5H9JMiDKPiGKLBwe5I7MQNs4ZF3YbSzYGlDSbKJ0xaM/
	 IDi3n5thupo39LiTV934OCmNAWTa1WTtjmwviVd3oLHH8Z6qAy9bYE2FQ7m3BKvUPh
	 I+wI+3QlrUZs5j6AqNk+knE6X7zELaFgnW8ki5vvKzv2WqGvqHGU0mlQxSWYxfYIgx
	 7c/vHdnKlbqNJiX1EYJgkbGEKcJtfiHw5YezL/EWci+jJ4YaiGHfeNYjfqdIn+LtRO
	 Y8Sr1bt/fWMQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E3ACD484C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864183373.26161.6887591713886463472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038675007bc9ae5d80c865b3c6573148fbbdce33498ce814a41202d574878800
Date: Wed, 13 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778641833
