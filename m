Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BC22BEC57
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764009114; cv=none; b=u1ahn3Vz/iepmqyvwysIEBWQCZ6PfzqDKzZgH6DVtY9F+uoevgAZiG5jiIAjU3IEBiAkHG5pscSRhTYJi0weZFtJznei4JOyLmTWghbVSuVQNzHM1Gi0bh9YhvzLdobfKt2YSbWVoJztBSoue/jGKsrLoYRPSUpc6yFu84xbA3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764009114; c=relaxed/simple;
	bh=KOaOk3JFj2OeU7yBw6JC8NFkZlZrfySNHZqG6NR4sm8=;
	h=To:Subject:From:Message-Id:Date; b=s88ygKqyVy290gfCUuuMDakIiGrKVAZjnLmV4yllKN9a2ZhGLdiKJI1Du7lCdl4c/AfuoTtolcEcb+wvGfpYxUEgxGUcNopPoxf3SyZOvT2WRbPvk4aJQUOpgroWLetfnPFqIIn5C1tbx6NsES3IKPrgd/W2fKqs72oSQA+FmzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDUED0ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDUED0ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A84C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764009113;
	bh=KOaOk3JFj2OeU7yBw6JC8NFkZlZrfySNHZqG6NR4sm8=;
	h=To:Subject:From:Date:From;
	b=SDUED0oxgyEoBVFnqW+eWJNsQytZgcy0xnZ7yCj0aOZN7z6bdeNus6jVdgD6Oj30V
	 cIaucm4Y1nDRVHDyfnVIjFDbny/rm5Z54vfPFiyUv9CSzmStwI7hZbm+O7Z5frWw72
	 +tBNEsJVcSDLPSF9fGfK/FySIBKY8nLlaWNN8u4kQf11n5+IOvCsHavaQRaIR8LeQW
	 CW6CN39NRdDaARRFq3v849T4V/hbHARqjD6d1KGUncFBC//Ad7MIAagi+15Td1yExm
	 FH7YB2mDvqmS1iOrO5R9UsCSEmRyTobQtc8nrDKWzx07cfUIygAVtAo1RI6FW1xiAw
	 5luYjfYDPk+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96062CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400911360.26004.3770043696759843137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbad1eca359541fe1734c7bedce455e63c01575a48097dbf083b8c7c5d0f09d
Date: Mon, 24 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764009113
