Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5864331D372
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784573914; cv=none; b=YAJhNsJ+3QJK7v7E1+fb/MT9PGmX/vVg4B7WkedtXGZkEE/vC8ZmkoA0+H5uMUZJZ7rSuThW4OEe22cInoqcnHsXq7sy9w1r8KfwOfP4zUAL0lfYladqOAFD3tNwdna5BOBgndyKrRhSuk+fAA8y6ufMK/lz7YbxW3yK5uQAOSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784573914; c=relaxed/simple;
	bh=h2XBJjDHcGES5cd1+gxxSNVuTfdgNO/coV33PRCVAKc=;
	h=To:Subject:From:Message-Id:Date; b=OG/iWh0sD8wfSO840g2n8l/F7wTctpsH+fYowxhDFjqO9POD5udSLTYUaL2G9ZH55AcfBALi/iaVlgGQIYr18Oe42k7E/QrqAeGly0HtJKOyaIXyIK9rb04Kxfb7KhK11NbAL2Rnlp6LbmkIdHylRxOSPLs8eNzDQXFw9qWbnts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwxLIHoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwxLIHoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD77C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784573913;
	bh=h2XBJjDHcGES5cd1+gxxSNVuTfdgNO/coV33PRCVAKc=;
	h=To:Subject:From:Date:From;
	b=mwxLIHoLMhYx9LedFPD0jw4vDxA8idsvF9B6hBreKOj9v86ZPxelaJx//SuSTuUwz
	 03OHXt39t1r/4msCQ4CBbnM3e5WzQtlKm8zGm6hP/dJwK5vuqwEBXRui8zBR4nufEn
	 vWwCFyNcDO7ZPkn3pt8T7Z7Uf+wHOBjwNf+Qi3KFVwYdU1YKsU1m+xTv4yTnCQjUS7
	 UrMdBUUshI9WHcZiUYO/51X+bTl44a0+kptysMN/AOZa8OI99TV21eMXm2xWTXkGLK
	 FWr6JdLLLBrPxyk18pXPTA5kTakL68tDzxPW8rdUGkW9NxXa07qd8Jn62fg8IjVBIQ
	 fAgCP69mVuv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DDBC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457391373.3216.11705079700387577812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe37a4bed0eb658ef6d1ff57a2b5969b8618639bf23b38aca4d279b13e4f87e9
Date: Mon, 20 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784573913
