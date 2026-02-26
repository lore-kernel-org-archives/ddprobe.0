Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0220A3126B1
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772087094; cv=none; b=JRxZPXst690HNFH1LLFYNnm1ZrKWGPslk9NPqV0zzPJwcILif755YuzaBJim67A4ElxyL6R3xuOymMrAwSiMTxAmBksEY2+cF8eWMAY5pnc26ZpA7wVVUem8ls4f/jH6m3UBs1+zqFSDS9Qla/0Bni8bXuzp7DIf7jtk31QGUIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772087094; c=relaxed/simple;
	bh=DhwCqqQZ+0vtJ6V5643DneZO/FugcO3cnl50fKQqlHU=;
	h=To:Subject:From:Message-Id:Date; b=um9e92dZfSbZEj0f4iQ/oGe8FI8Jdu/eBcCuLv1tbM7IALtWunfwZj/mGjOwbGXl2RSjcCHaHVN2QXyIpKdwf8a0WjY81/rrh9YPvKqrA66wywC7wBm/RBPniSHmuESoacsatIfqdJTwyIrVmbClbnLxrPx/GG7ohfW24sSlhbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vc81vN4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vc81vN4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C5DC19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772087093;
	bh=DhwCqqQZ+0vtJ6V5643DneZO/FugcO3cnl50fKQqlHU=;
	h=To:Subject:From:Date:From;
	b=Vc81vN4y4O8IX/b5Bf/NCEz+jyUYlbpZE5HkmlWmkUyripUzreUnfcr4f4YKcVGjL
	 NRhct701dBKjwhjCrGLYQUf1PElTRxd5MTfZxXcCP+eyPTlV4rhOI2sWfzk0gYfjNh
	 DDblB+zbWx63NwH8ChvCXaa+BxyyXv+IxGEdAtMNOEf9ej8jG5KbVhmvBRyCXt53t8
	 QmzAWV0QDQ3e0+MQGzFe9juhpgLh0aLgvCk3BlU1DtslQVREQtIhIHp96lNxzbG4ND
	 dQb9gV4+G4tqa3ZPSfHXpftuimnn4OtLdMquWxBAGmKR6/EcIgj2De+L0qNRCu0pnS
	 I2D4JCpdT44FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ADFD461F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208709359.22557.12806426560361166094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5c2372403fd7a333155ba8459cc14281e5d9b9ff672f54f1cd4f7d6a39c98a
Date: Thu, 26 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772087093
