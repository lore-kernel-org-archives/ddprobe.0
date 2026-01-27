Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E513F2DA776
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769481834; cv=none; b=FwGCLT0SZ3imRb+/v1l5QRNGAUeKsZQtfS43vke0iXgZT2+kPoF7h1CoWUEhpR9QNGJJGpIhBUK4/D0jvdeVT2rwVwujLQyvEVBeM7lttDKugoTMwlbUahck8RKDozA5YG4yeTx15f1GYMAts7yyv5jOWVDe1XuxUfUtMv3iW70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769481834; c=relaxed/simple;
	bh=asuerO13vsibaPIxRh4YXFy8ek0E2IEEN6S/rZFH8ws=;
	h=To:Subject:From:Message-Id:Date; b=lMkeSyb/j+cSFcYaejhdJme4yFjTh8/pQ+A2jtmth/ydoxwVpoC6Y0XYdeeXKCO4wKrfG9GPC/9F3cd+O428PcVilVr7fq5bS4qZK0uXLlj6G2SAKoGU6bfkC+tqluVbckASpea69DLZrQDH/CljCnbRCu8mXuPMVgXw1T56S4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C22H+jHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C22H+jHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769481833;
	bh=asuerO13vsibaPIxRh4YXFy8ek0E2IEEN6S/rZFH8ws=;
	h=To:Subject:From:Date:From;
	b=C22H+jHBqKOmqtn9o+864RQZTWVx8iij/DEzLoIB1uWKwIFcZxCvikuoEtxKlLMX4
	 OJ/Ea/ZdRLzr7HRc0bQMJij8kGTRQaAjAd1+5F45u02caaR2bOz6HDkZ2GYmGu+ePz
	 v8l884aVIAi/OrZmUGiS5+mvRznWBPXnUdFhkglC5Ua1yCWBOW/wSzey2o/KVyT+bx
	 e3HQ4QoaOyOxElzolIC3T/4/lfrmeUUCJHOm7Q7dtKEOU1UsOO7Ca2+AVZtweJ/Z4U
	 4dsUesFmRqxJVH4TvnDoKOhi4lh1MRv+qOPyzuEN0yNDwTIXKXmtlyxfgQTmdwYx06
	 aYeW5YW474E0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025FD25920
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948183358.22831.5617012582781001715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593957348bff3450aed81898cd9e3baf6f428808c472e2aed1923f8f34360dfe
Date: Tue, 27 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769481833
