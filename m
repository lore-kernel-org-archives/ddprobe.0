Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6601DDC11
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728329754; cv=none; b=oW939bGRa0A4b45KH2WdAqBAFtRiUSeisvhEkOLwiWPEZfBwS6AGgyzghZT+h7wxvzV2s98DZFHVHdOQJAX/EXpocxaOHU8D55IHnrU+i3uxqcwpPPNaqccCFMdU8vVtS8oFQb0hjZ7tGXWswCLR8hkHar973wLybuJLpBxVmp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728329754; c=relaxed/simple;
	bh=cLG0NtoxLiILh1FdT/W/0kqn7GYUuQnGQ5zUotACQ7Y=;
	h=To:Subject:From:Message-Id:Date; b=aqGtfbud5o1GmraaTibDqpJoFKWRONRHsSYbda3kg+2QXMHmLz+XtGFYPKFkvw0mrDEWRL0XNgbxTgf3TiBxU9m7bIzE70QXZvvuNveorxSQSvjRAnDk251XQ1XeFDAc9s4YeK+VuMw20rY2wXWuWjA3UL7DyqxKwS7VLPFxYIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQlizfex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQlizfex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EABC4CECF
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728329753;
	bh=cLG0NtoxLiILh1FdT/W/0kqn7GYUuQnGQ5zUotACQ7Y=;
	h=To:Subject:From:Date:From;
	b=QQlizfex0rZ4b4rWxNNJtAyQ1YR50b7TTQR7Qjoo340/Die/0AUNfiXN5B2rn1UAw
	 7iMH2k4IEVJGt5YEwsb60UF7e4YfHOviOrxm3/V6aewPugmPkKELcVcXJs1HlAUD1k
	 1DqsyOWNCwNzIvFigduJb81oa/rVFEoSwptX+5r1/dT1HNNdQpi3zEiwM+Bijt+Pkj
	 EYp42jF1f8s8ogEkGxB6sl6I0yuu+44pdA3rM1AzGIGJ/XDaLJKvKHDC7Izl6LHXdh
	 tFMy1vf1TRsITBmKRc4kZF8W69N8zZQ4V/pv0dAS3uKXzyXdr4SKBrN8Db/Bk+gbRz
	 bqfgVRTVcYLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB94CFB456
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832975364.3783.2716467268909199245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25a067a7e7a9116bdea3c2ad4c3ac2f012d83e4d4fe58594546768aea001a76
Date: Mon, 07 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728329753
