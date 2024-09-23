Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54977113
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727125554; cv=none; b=tVJkNORu1S9dsUd1Z4zPDKdI+8HioEF2VYagu6FGe0pCsGfRL8+s/1HAh/qE0TGVo7260dCs52iY3VIBtEQbZpkvPHv0rFFc1wIzk+TK+YrqPOKOqDXz2Bu5C/zlAtXvNCRuzvV9uvgNnt0KOON4/U5RQkXJ2i7rvkHU8i6upVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727125554; c=relaxed/simple;
	bh=raAg/U3YkeAUX5Kv940ce92aN38yJ68EkIBlkRZ/u1w=;
	h=To:Subject:From:Message-Id:Date; b=UojVBXhSAVCWYBevgiv3phcliP46p/pa4Lhav4fgRyRC/wEfyQ4ZVJs6X9uOKIPzM4NEAIx/16paNkBK6kZp+uJ+CdrnxjMBJUjQLctNdvZbqeThVKqTTaWRuBQTlJiff3t0pxSpipp8FJdfJu9lUMiaS/Wj1EpdoT1yxYSYofY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkdg3sFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkdg3sFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727125553;
	bh=raAg/U3YkeAUX5Kv940ce92aN38yJ68EkIBlkRZ/u1w=;
	h=To:Subject:From:Date:From;
	b=pkdg3sFpQBPdFQ+atNOB7HCiVN2a4dTELNCp7aH5iYQMW6wGTvgBIhvN5eiwP1cBX
	 t5yfek7DwRiTO4OkdfdDunw0iYuPSuJC5z+cIjTWIoC584/4Bc8q1HvaAGOpR6/zD5
	 B/aIEUWEJVXOO/pJ8Bekc5MMjpbvbjiJulTxMl0+UuKnsxJyxbSAwbhiNjSirzSv6k
	 PXz29yggybd8QW+f3M+ozdkTK8OStB8lHg9saOYg2qg87tIchpgMI+IdLsKWxq1Fno
	 h60IlLsrFHRJ1jNDQ7iPheLRlTqPb/0veHRP4zoywOadAv1CZndZx5WxLyTjlOsDT7
	 VxRvbBkos+SxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A0CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712555359.11349.8754222824350691951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552c445c13169d3599f1653f1a5fa6da3478e98e145e7954e336ed6eb241a682
Date: Mon, 23 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727125553
