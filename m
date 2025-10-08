Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082DC1758B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759925394; cv=none; b=iv8leqQAJC5TyUCAIsj6oYsl0MDjqJi5xWwLkx4USpUxxzijEbtum+DCAKPe6nPXV4SwK75TyEVFL0B1dBNyJWGd+e/fDh28RmM6EtoFHn1F7Yhnn7coszQWOtueOXCUlPr0Zk6DNQT3XUAm5oLLj3pwqxSVpzgjw0hxRuKQ57o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759925394; c=relaxed/simple;
	bh=WAI1olQ3w/yX7JDAOMEpuX91ltGZf+sOcQRMAtgC0Hk=;
	h=To:Subject:From:Message-Id:Date; b=hlEHT73LDsH9U6j/UmHozf/Aqcs7K9BvMYRwfENxll4sL/b7qM0Hou4cd7/3uvyMnCt6GJRa0u8Ifml6lUiZphDV1XcJtZlFWdXWx9b8C0AUTNbHfQXUb162Q3N8mYAe3C1teu2QaZ5pBGWvd4z60qbLhWorKudi7TB8ov35ohI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhOQ3f+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhOQ3f+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33BFC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759925393;
	bh=WAI1olQ3w/yX7JDAOMEpuX91ltGZf+sOcQRMAtgC0Hk=;
	h=To:Subject:From:Date:From;
	b=fhOQ3f+HpYwICgxKOzN13VqlEyXZbxyUQv59py+QIaGD0SEIVCo58578Lf3Fbir0c
	 EeejgIAIR54UooHRQtwG/j+NcIlrkCfhjWI9DoQX/2nhGAe6VFQAkyh3SWXEXhlOl4
	 DVEajRIMlvr8p8MpDZz3XyuMv7XRvjkYBhTdN2XgqTwxY+o9w9zf/p7Y/1zC9U5PG4
	 juLvBEga7zskHNBSjZfNhBYNvLu4dArYLt0dD99GWlroDZYAH629tKrYaxHAg7xJpP
	 Rmv18jP26V32We0E2hygm8Bz4ueRzggBI4OIs9L5U+Tgus6zWIW1rQhLCET9EpPU9t
	 dugDozcXafJHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992539358.20118.1332709486554413800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff81a45205e3e8932e698d009434f97794507f13acf32af9dcf4f6904b31c2c0
Date: Wed, 08 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759925393
