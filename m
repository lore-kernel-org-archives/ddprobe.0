Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FEB338936
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780134214; cv=none; b=YV/qluPsG0EUJm5tjRyZsgKeXcGxzF8Rjwoyleq788ZXUCB1N3p4jXDw1i8YuwFcUOQy/Kp46R1lCbiZqTM8w+GV8H1m/o0rDDHskQPUqeQI31EvgisCKa5gthOD11AFHobIYHm57G1UjR2mPuk+K9wn+SxLUQHuFte7krtVaEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780134214; c=relaxed/simple;
	bh=l94MGmEv3dLUiQ1qfF+KW9QUDDzCoj3ge/OnrBjQWpo=;
	h=To:Subject:From:Message-Id:Date; b=XUVetInnBwJUGdNCixrzj+GXC9b/kzW8hQXVNUP2LQFKqPe5Z0s4SwHm7i/3cs4FiviLtrgxlZivmEsKWE1FKm7gb0hOoBS5jUvCw72ExgdhZiZXDhFy/Yyiv6GoQz0du1fofisp42oo7X211zrxbp9wXGYDPirMA6zyXVrCTpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pajlzbf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pajlzbf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6355C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780134213;
	bh=l94MGmEv3dLUiQ1qfF+KW9QUDDzCoj3ge/OnrBjQWpo=;
	h=To:Subject:From:Date:From;
	b=pajlzbf3nqilDT5L2hnKfaFviYzQ36czuTq8LS1+PnCloRnzexjQUV2foxOq340I6
	 biJBNRJdobyKPDTUor5yv+LJTYuv0IW0gf7Tue/Kf/uK5N1O6LoO4hdwVOqUDH37xd
	 gjafa/EwaRaLDucRmIowbgdO0JXY0KmYsvHd2pB2kqYsnVp4ZTksZl9a8/rupHAEjH
	 wdtpWl1d+Odp8OzsEeH73d7Lt5dvFrxftO/C/kEdWO5QhMYoo/vDETWyPQdw2VywYv
	 uBRUWpiiaGz1PclpBoEAcRq1S693Jhg5gSYjhKCi+w5HxDI/EkHFDaHvgMfhe6I87q
	 obdR8pOJ5oTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0ACD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013421368.5448.1467977464059700104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2af6afc75cba6f8793338ff2ee3391590e407daf25ae1165904aa909d5ee500
Date: Sat, 30 May 2026 09:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780134213
