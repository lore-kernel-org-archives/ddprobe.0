Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF5318E2A
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743299394; cv=none; b=FPaQtXWb5yq+Gft568fE963JLd+9lCdPF7NtWhktoSNAP18ywFkiLxFnHXNh18KlO7q+6LwFohyUfnnx0rACNVPoV1ZaonBSYdRV5kigwhQRX33Be8C/Z6Fo3Ye83ePaWMgz5623WIj7XPIDn0HnDD6n1EwpKcyjG6WyWLLk5Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743299394; c=relaxed/simple;
	bh=CfnUZ5p8UnipceUt1mHvI3hmuJmfSbjMXUzYL7uVLNc=;
	h=To:Subject:From:Message-Id:Date; b=YI5BznwCV8FYLCp6TlXrSjwXYnzkKjk9TeoI+0WNWs0UlK/JHkdUllpQhTe9LEXk7fy+1EzoxGEmhYe7LuwhT+/qZR9so22MgxO/bvo/zYIH+wrsYq1kJ+cYTjSMPjfWROd3xuLi16EbBxQX7IZ85MMVLBN8QCzkEJ9WC3CSk6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAFJwt4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAFJwt4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83B3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743299393;
	bh=CfnUZ5p8UnipceUt1mHvI3hmuJmfSbjMXUzYL7uVLNc=;
	h=To:Subject:From:Date:From;
	b=pAFJwt4p5PuDIU9pOnqP5yhNKK6eXxRUQ8iJPhYd7T4n3ZHN00+xss80/GhSsp4wv
	 lzMNo2TnOixs7K4Ofgmxb+i7Pvl+T5iHYha4hAGLaoF+KwZdm/CcBXmcuQzFnCQ3PA
	 kpgMrgD3kWOM6sMkpmpNA84DlcOYMTwe6ouZdtr4d8KujWZgR/6I7LZXPTHMIOZmr9
	 5E7jSEYbIm+jglsFTMDQshuBn1mx62evehuO4cotFBdh+C3fvH0nhIgaFGblBXlQ1n
	 nUvDqDbha6G6cemHhKGFd+tMep0n4ZFT5cEJt5pgxbYGQXEJ0tRrJF28iOCMrJo8WR
	 CRq9fVnr29MZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBD0C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329939360.12517.11141445241576133556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d926c7c99465c8e3f105a30b3a87fd0523fef2b9fab0065284c36714dbb583
Date: Sun, 30 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743299393
