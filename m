Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583544BD363
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791828034; cv=none; b=kPHXdIrB2bpxfwR0lBKaVtCafK3rPy46nO6f93sJAzwt9s+95dp/pa0+jHe4kZYlQfLwwHS2ioAjW71U0eCcjFKOHTf77WdllHcKfdhTdnWhYuq+Dr6dF6b411Pp9SWh0NOG2isalHZ0LJuuiiXPUVnIlKySh8o71Rc9T7eadOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791828034; c=relaxed/simple;
	bh=Vf151VhFW5RLU7kPTEChgDZ6wkdPfwqdefd96GEQxgg=;
	h=To:Subject:From:Message-Id:Date; b=cnjPkxb/J9NtBWYjCpgvH1qeyeE3g+FFEe+1UujtK6C/Zci6dmUCdB7KFtHvtEGZ0n5z3NDgU/i9miGTtSliSihTsCG1cBBJ5pO55sndhs3Gng7AOK0VknnXzbbhnOpR9+6cFey05yHspL3+u7ia8mDN7fnwKO/kXVOur2CHzBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMuSFOeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMuSFOeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D4AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791828033;
	bh=Vf151VhFW5RLU7kPTEChgDZ6wkdPfwqdefd96GEQxgg=;
	h=To:Subject:From:Date:From;
	b=rMuSFOeojxX+3Enfp/m2Pnz1fr9dbUf7xhWdRKR4ElfzheNt0RNj6eWG1S3MbQwzP
	 5bfg2wMbmJrNJlq6FN4H9uTjEsKGt+CInU+7SO8tKBkxz0mk0DQm2cZpn/CJ0CVQ+r
	 +joPyb1aZIFbFfRS/nCMU89LKT5NDi0r5NUCYT31BgdAORAVKuWxk6lSIm12MDHoaC
	 eb2aqXMILEyxgtZDmFfoROdeo/UYsQggmNG4JQvthbNSqBE1toiHeEvPElHIgYUkUn
	 yq21Uz5U/LEVIcv2CQDL6KGNiAThEN4lmCW0a/YASjQgr8/1eN8udJ+3l6d48E2YOe
	 nv6oYyeNm1Tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFC0CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182803371.4416.908779994964683872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1d0eee0ceb0d6b03701cd833475e4f740ece648afc91f8212746a7ad2e57bd
Date: Mon, 12 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791828033
