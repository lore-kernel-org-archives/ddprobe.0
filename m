Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEB03812F1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783062514; cv=none; b=ZIwQc+IuELEWepgdR5/uLU0y8EXTIbSyq8tHjQjENIJ25/SQONyO/yVjGNJINs+Ufe/1tSyyS0mjaQOD/r1U7T+OcmF7EMuBDc4YBOvIxxqq+jxgNrIgvPrYqcUSslBBD/FPALRANOy0OZvRlZqf6X11LsBOQVlN+G4ElmGHR1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783062514; c=relaxed/simple;
	bh=2G5UGAu60NQrtSW+9qDF3aIY2T/0deAX97+tqwk1cuY=;
	h=To:Subject:From:Message-Id:Date; b=Cj09sqXhkGeMkwfCQfsGGYvZby3Q2SXaempRcoamfbB/D7+3FZz0rrZcVPy/GkruAiv7uwxYc44vzp2IMw+k954+gUF+FAr0ILagfVy37y63OvkoHbuXjbbBdpLrI51X0Dt/2P20vb3R1xHWxxPGqSwKMKLyyH9TKHf9x0elUfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVzgEmOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVzgEmOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8CBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783062513;
	bh=2G5UGAu60NQrtSW+9qDF3aIY2T/0deAX97+tqwk1cuY=;
	h=To:Subject:From:Date:From;
	b=RVzgEmOr80eaWZK4fvgPxdKmODWNOjpCY3FAASOUDnYI3gcpHdqaaAyiqf5G+75UB
	 Uuhtci9MyPU8X7+Jr4AF5dqv+G7JjPhtwMQGxivDRm3Bc5FdIoJWmDyoHPolsP9Les
	 gB8herjKoVU/cisqVdXamJRRvnDkVSymnwfnpDQT94w+QKws+pQ5t4BfCm7kcOCK+h
	 J1cLm2+QjfoO5ZuqAc/Ev4NbBoXaQ924C3um/9kbEQdVCyuelnK8ClbvcUFvHhkRjd
	 LopaZMwmEC3HqMOXvrApCg6mGMOKWaG9m9zjyqRukdaHdPxGy8BjviUHs5Yg+9OAhu
	 eXydoAL6nf6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9305C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306251368.20069.14040625947257940005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aca089d2a016dd1527feb3091711f09803c93f0e7edaf7fc142421504714f74
Date: Fri, 03 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783062513
