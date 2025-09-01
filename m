Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166453BB48
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756688395; cv=none; b=UlwcSeeR/fHAZeRmGCSdU9S8FJ+n+mar/DOXMrPdtURhnGg+8ZKotJLA0jZk3xPk6zN16OqAWnFhMC9crKCGnFJhscKZAAmVgbvYGR78Pn1+jnQ1v2pqMbMk4DPfsgKkPPz+CGTT22skHeYp/8v67Zv/+vr1QfaoZKD0tHvdXjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756688395; c=relaxed/simple;
	bh=nEYdKKKhAoMqPw4QzHPBAZOv10tyCoprCZvYPUj9Ddk=;
	h=To:Subject:From:Message-Id:Date; b=ogaYVFwqx2bwUXNxSfQQVGLT04mQ7hWCK5t0h02U3OE+otdOyLM1/O+IfA3YiwZekJi/SuHMOJ1AZ1PLAZIqALx8Fsy+C/tEe+wQ3e6f5isxYG2JdHWzhCTLvKnC71qNTkSK67rJmvxlK3KZBrPleAqYBA/Dao+9hrjg18Qc2I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecYBAnB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecYBAnB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36AEC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756688393;
	bh=nEYdKKKhAoMqPw4QzHPBAZOv10tyCoprCZvYPUj9Ddk=;
	h=To:Subject:From:Date:From;
	b=ecYBAnB3Ym2riFgD5qcYEHw1D+0t8HswogmPe41g9hra9zimKbjjdN7HyFRuqHS2L
	 dV8WeUT2Wno2EbYm4WjpXHf9BYeYOZsAcmo2yN10mJ2HEi27BHRzoXi/Aj1P3sJes+
	 x4nwFifg6Fv6qu73s5dYxmWg7Fho/G07DNGXL8JMR0ZhR3YfsSV7x3qZfCvjLhPh4X
	 wS/Gx/LLvSd03r0pLSy+EYM7ZTbIISCDg7qxspMvurrZfqMt+iI9yXfRA3RaV1tyXE
	 +u9f3WzHW6xWIUzWxVkbvAGEcQkEHNRfoNj2fWmszBxTuqd6PCVMMsbgaSzzioobX3
	 Sd89UJ9F9+ysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91560CA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668839357.4084.17107029468254261638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c39c0cab3baeea6d0fa65abf83196cf8c3287e393e339745998963e448b293
Date: Mon, 01 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756688393
