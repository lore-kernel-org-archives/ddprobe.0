Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F02EECC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721348754; cv=none; b=cbzFSBPBMoi7WJwqUZvl3ip8HAv5Cqa5huiED8wo77MmgDi5u+q9O4bRD15l6g2XvjU+zvQ+78jn59m+AZpQLvHXygzK4NiMTMtCBB3rCimom3H2JHX2dc+vb0JZH3UR16qsbihXYpHSlNRHZmKSxKMcy0CllzU+kQlCrx++Tz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721348754; c=relaxed/simple;
	bh=lzLihvpBzS8Ol3OV/+636oa8EnUU5nnl2HzdNkgEubQ=;
	h=To:Subject:From:Message-Id:Date; b=Fod87IYhAD3KPfwqMIM5G7lEL9muCvps9yth6t8wgrQiwb7Ww+/7DyQ8svYZbZX2xA5xtuKERbNbRCGYGaGoRLBAVyIOhXnpZYX+SlgqmdKkfO9XvY0EIJTqs01a192tNCCfsOrq6tRGx1h5h/NBh1NLZLMdgR8sCOP3DyeE/iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ2LpTnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ2LpTnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2930C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721348753;
	bh=lzLihvpBzS8Ol3OV/+636oa8EnUU5nnl2HzdNkgEubQ=;
	h=To:Subject:From:Date:From;
	b=HQ2LpTnMsvXZJg9AfEkPRou2TttpqqvB2AU9Lp45wfmIAEdNF8SPmV//YJq4NB5mQ
	 sq38C3Xu3691L35LH5MCj3DAJ5wh7SufGs9IKjJ2CHDbJbArSpFnw32ZzRSTtEVdxR
	 tTzNtOcNFE84wXjIBumosAL0d/Fkycz2F7thkQxRNZM/dREkKoYVeH8vE8TpJ/g0JD
	 2WXZz3eKQPDvNZ1LX86ZBKAz/ViycAMGIrI4nvigJnPYfTySZh1b0zcM/8Hbb6Tau4
	 woL76h2mtrloTI9wLyF+PP2uXVm6MJVGU3ZIpTQKPbBN69P7qObOqoWDQgoXkBGhZU
	 uubVc+lJZD1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF72C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134875362.23658.5529364445683083949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441ee0f76d528e5330570841743c6fe8db14977b0f71c8ea45227040bc2ed7df
Date: Fri, 19 Jul 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721348753
