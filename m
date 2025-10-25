Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D21D2E6CD4
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761398994; cv=none; b=pyAzyXSW8V8g9onOh2Ma9WWXnD812HzM6cZmDaTkaxhsaP1Yu6cujz0h9CSbTQO9w/Sxo6u2YVlYpxQcguEuGZJTAMyK76ws5DggBYztUT6bWSPacJxuyrsjDMldwtKcaS0yqVHsxO6GIk2by8Z14N9cU35aaompba5vVcIlYN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761398994; c=relaxed/simple;
	bh=UB8csdkC7kgdWpWNib1zg7N+1cOCixPpoctTkb4ki04=;
	h=To:Subject:From:Message-Id:Date; b=lqFu0j7CeOHZQYemlqgykOJebP8paFeo9odcfrqBe30FCFlWWBdZ6d56zttoPiki5wsBbDH6S8Aj1FtC+BGIB0UYFyEq6auM7woq2Xo/1Ih5pgMJvFNrVs9MFvF6RrtzHwdxXFGUTlTNnMEdGVBJEK4z6Ye89SuLkwpMD3BW+Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On3yuMEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On3yuMEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D92C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761398993;
	bh=UB8csdkC7kgdWpWNib1zg7N+1cOCixPpoctTkb4ki04=;
	h=To:Subject:From:Date:From;
	b=On3yuMEgepzs8gFkCyK3yX9UlZcKSzX0tyodTX+NZ2BiaFO477TslJ+7raEog+P1r
	 7A/sI25j9zTnQYuC9Ex3cI5eNV1INTEirfTvxK2V1eJM9tadjFQcAGqmHGSq+lO1nL
	 DDGyEPKTKAkqtb2cJfeYRUSQMRxBTBgQHeKbaLJXFVzN2WM5ayCRDkM/NtkjcNhCIw
	 6J1Ie/7lFFCuM193UdIMnVIUuioGuvahSuFjATQQQePAKzhAIuoItRwC3QuGAXlpXH
	 K3R9yhzerwSWUiJA9jgRZeTdhfTVEl+F5uD+/4n0IZ/Z12eVvYgIZT7rkE1FVMzVVW
	 Ig8NhC/JakDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC64CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139899357.14415.14495106663914942401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039a302344aa7798439242ebc4620750b8ef9e5413c545a11d9fe3108da5e868
Date: Sat, 25 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761398993
