Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279DB2F90E2
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756981194; cv=none; b=UzVDbEr1W0n35272bEpZ5sz9ZAJ0NKIAGmisy++G4hsJlE8Lys1aSW6eoUgUgjShR9gYVcT3vnR8YnmX3r3xAK7oX2r/BRRiDPx5XbOatzma0u/Iy9JlRtT+9JEpUpLBSHF+9IZrdwcDq4bIzL3wFu0wypPYjMc0a5XnedWBlVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756981194; c=relaxed/simple;
	bh=PCTp5FvLdxCk/kJhF1HAckKoMnwtT4lJ+CItPS8auDg=;
	h=To:Subject:From:Message-Id:Date; b=OgZk+IlnPzskWYo9qLLZIFy1t88DOzE57NQOc5BlJd2KXAUaWMIa/R+OK2HF9KOeJqcq8kFy9Hzsxq8xZdHI6boHR5JUzCOLUyBF18SkDxGmXxxYUS5d0ojolTbupiPMeFeOEkuhuboHdfiZlJ1mLFidjKE3IDdS1JQOMcwCk/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+3LR1zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+3LR1zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756981193;
	bh=PCTp5FvLdxCk/kJhF1HAckKoMnwtT4lJ+CItPS8auDg=;
	h=To:Subject:From:Date:From;
	b=L+3LR1zq6irkK2JGXQA2Ky6OoR6G0tSjhx6eJMReaf51FeS+vROmFouMwkodLjRX6
	 oeHLr/t9gSzIiaeEhWRXzUhsY+7eYpFlzMIUThz3P4+jgifAmWarNqGpc/ROLM2L1V
	 e/zE8+sRVeFUTPODR2KtuY2GiGL1aQY/kcM20BIybBtAQ8gCAUUnMbIN60loi5/J5w
	 exhGGOfz+QYoHwc23Bf8oVeduW2SsltqNp2sT2nS4dV2vlo/L1E2xbYqynRJteMGWw
	 jWEJEVwiD5AwMllO4x/RNZIBRd5ChX1BX/lPVg5bYxVBFZJxBcxyGRYwwXaBXSFln3
	 MEHK7nRq/VEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC1CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698119358.23382.9728128893280787744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8eaa8870ab88b25e289862cf2c56bda0aa52f1bd5173235965eb491f981fd32
Date: Thu, 04 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756981193
