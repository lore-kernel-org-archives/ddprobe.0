Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9F739C65F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482233; cv=none; b=CDDBZ06BrlS9MXHEthYSymDGFBe+mBGdwoeTChBD2FWkbI/2CHNB4HmeAI+PK+NW20/zxfW8StNXU8buW19hBsk32NIc83oYiHMFdBk6PVKzL1OX4u2xqkvB3o7GIdE8zPNPwOhQXsDIWvVxRyQxFhkS1gATU+S15nnGYqa7dw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482233; c=relaxed/simple;
	bh=rIEYjUosCzMoQDNaPQ86NDYDO2cfvCmqb6FL6HRW8hc=;
	h=To:Subject:From:Message-Id:Date; b=WQDFyi0agEhWb6zWM6P04ydV8UPlPgw3ubMot8nTKV++o18X7xjkXMSoflZfKw2Q7zlKNI+IVVzBosCRMhuhtW3w9oyS/DgCK76CqdET5sNQAXsVOGQCNHySofNDSrCHuEp+pbpo2iw/BW0WxAmdbXZwnisR7JRpqdMYcS7WYas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOds7yXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOds7yXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF09C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768482233;
	bh=rIEYjUosCzMoQDNaPQ86NDYDO2cfvCmqb6FL6HRW8hc=;
	h=To:Subject:From:Date:From;
	b=nOds7yXrhQ3e75qXPvZocO+VVzRcZIaeqV2APOGvrkGuWAAURdjulBXy/Nc6akqdU
	 UkoWUoXBA6EAs6LKBWAKuxe7TbeydCQOcFInmiujBSvMGmwgjHi/aD6++/iAFLFK8w
	 pV+fLGPfw4JYP+i8cGwgE/AAOgCKaof0Wn2iiGP55U8de4DTmENrH/QEdwCnlQr7vy
	 amjAzj/5PykcpVmkYniQm97nVXwQtcZObT5pa2cTNWI85pvV4q4fARNy/UpbGkwUtQ
	 /zIpOXvxL2x/sE07XeMb0n8VcLB0HbKzgxFJuGK9k5C2yWyeptFUMNJozL+iPB0Ecw
	 wm+6+RxgXVXBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF12D44C41
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848223358.26101.327696592685037978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73980a19e0759bd1a636fc299905e68bad45281b5faf586b01793a0a64431da7
Date: Thu, 15 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768482233
