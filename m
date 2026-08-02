Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5052BD587
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785652234; cv=none; b=XIEc/7zpq1AXqdPUJlhPKZ8Jpu3NwtKXMrmvk+ZYsZIOviCAnMuVeJQKZ9y+YOowJ4V0H1h9efMg2CCB5aKbutvddkAfIz0oVEOeWrKi0cGqYwh69QjzHKGrHsv2AJlju2l07IMFB8jo/kkp/2uV0pAL41eDjGnV6hoKE0HX18k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785652234; c=relaxed/simple;
	bh=ywcu1tSrrwU2JXj9vTefPKQESmV2b5TiBSOp7PNgICw=;
	h=To:Subject:From:Message-Id:Date; b=dN8KCQ10wgnzRf4baiBoTEsd14EtqoNR73+e2e6DMX22N59iefm5k8jntHpV+ux8Ziefe+heb5md/mtDGr/9VxOSiCrcsQwwbo1vaKVSskNdxVtGX/QxzXKeMfX8jGOyc7a5qzg9pLdmcEl0cDO19agMsDBPUKblD0TwAmKTdBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTXutshs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTXutshs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D236FC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785652233;
	bh=ywcu1tSrrwU2JXj9vTefPKQESmV2b5TiBSOp7PNgICw=;
	h=To:Subject:From:Date:From;
	b=TTXutshsMtCT8u7zdaLtQDyXK+Zo69lP3Yp7Ny1uBnZzTYX9n+8R28l8NJMURwdJa
	 6he1AGCOrcbZ4WIJ8wl6kbahyLA2krpB+3p3KQRhRoCiNiGiIogOsVm3xk+h7XN94j
	 u354U+MYggqBJm9WcLkfTfc0Ppf4fBM1+skKgV9hpGTC90Nhe73pYUjs7LdTOfsEdq
	 3wQEHZkRFWfkV+1Slu9sCzmjN0QvB7/HoYiS8ef3viHzC5yKm/FerKW0Iu5a8z/O13
	 FKwUlVMX2klSOX0WwdrWP9c2zPb/H63oEmQ20cJdAf4fk+6t50zKXJosZlX2lTuXKN
	 sb2qam0hv/0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3FC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565223368.2013.12479917028582364674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c3a251f410444f4f014b36cd0e90c951003205f5a51d5bece6b9a082c67f0b
Date: Sun, 02 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785652233
