Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374A322C6E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733520954; cv=none; b=gqtpF5m0Qb0H5+vGQCody6l0s1vtHkZULo45kKIB8+EZg2Gxy/+TmwYnZ0FFsXMyYv9vnU/kYS1fD1WzFe/w0HobqR2jPYcrBh2131385vN/inZBg/EvMaETsmaQ9BrdlZJUlGlJ5piiHlJHeOSz5R9QT0MRD0ME9NC8d5LnNng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733520954; c=relaxed/simple;
	bh=3gAjQnxViSVawArRY/RSnQ4KpYHM8Uy7lX3HLSoluSI=;
	h=To:Subject:From:Message-Id:Date; b=rRaAW2KtIUyloVElMOWExZW6EYc34nMuNel1Wc0Te8Ap+AGG3XAfz47cUa7RDv9vj9NVjPe+gkmCmS1wobS0IImtaRacBxdU7RDLvlDi/sTx4vi9EvGzMPkGEJ6Enq6HDQz4RoWgPwxHPoKW4xGe57q74EQQeusdcwuM/cEhKMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeYPdOOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeYPdOOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6099C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733520953;
	bh=3gAjQnxViSVawArRY/RSnQ4KpYHM8Uy7lX3HLSoluSI=;
	h=To:Subject:From:Date:From;
	b=GeYPdOOLckh0vdxGBvtqoXf6qbdQPx+9nVf+gbAKL8clW6B3iXVg0IObziLF492Ax
	 lDSKAnSJigRT0v2HtMv88G8YQIng6KMTznGQcx+9Zccci6/HooG9nZvxtk+9zfxlG4
	 f80Frjt67TEvz9gwNLsbl2fnQ6/4hHoEcb8RgKMijC7Wjwc1nQBDevs9/6eKXrAN9/
	 G7q+8w8CABn5m9k838qU7hAjIPBSJAlTmoyEtKjdT4b3HIHOGVpefTm+CUvVeq9l6r
	 ZO1VlI2IM4y5AxhvSguFCB/uNjD6YQex4ZhXKwE6rURZSwITM8otJUD1e4wVvALchR
	 uEdyqfJwRL3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C668E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352095361.32552.10416946129441877561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54d7b548b1fc58705f714505271ce45da5e8d6f4dafe0c668460798c2796fc1
Date: Fri, 06 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733520953
