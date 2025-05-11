Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4513C43151
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746950394; cv=none; b=DNrM/QAaBRV2sBO5DPCi/mouiKWAnxP1LAtmLKkI07x9seJ5sWYhxAF4CFU4oPqULjvOuxhpKfZ9U87R6vQUKgcnlsLzAGCvpKd7QB0UvHzrXA9XSBAsQ6uOdgoHsNxp/iLdx1i5fyRyvfdrrNHwDIa2FAN7zAwNs1f0itxOAis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746950394; c=relaxed/simple;
	bh=PcW1MlLO5+4hZc2VzqyPn1siM7wkf2XaXua4BL6CLkk=;
	h=To:Subject:From:Message-Id:Date; b=LTSwdUOHDr0ZzWK5W8GG23FN9KMN7jAezVw/KCRz2gHpkYuxEGxYfiiBYvnT0D7JhjMjYWMHqlz+4yU244qaVNHOadblzqZZGQOnsb0WKo+fnKA6gLpVJ8IB/GHhsLSeu6c1/SJLlknf4oMQrDASUQkfzWy9xRg0wSZ8WFqCGw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaFxEdps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaFxEdps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BBC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746950393;
	bh=PcW1MlLO5+4hZc2VzqyPn1siM7wkf2XaXua4BL6CLkk=;
	h=To:Subject:From:Date:From;
	b=MaFxEdpsZ/luwK4tZ+M7kwTj7JERRjRJVPRAgrpJwitYQ2gUhF/QsyX+xZckvcp+c
	 B32SjCH/S0Ztv5M+3pDQKFXkadsQLvyqdCfSgKinfb7xVivM98lLy4noD7wcK6qIG5
	 9hqQ39sN95NFa+csnokYdr/+RnNmxEzTPyEGLgInNsrCwgL6hX6wFs4o+12iGtXNj8
	 3N+UHFuyv2osT22tjuIp5ZyMbhR2AjUdUkpJCqON9UAbDfxaviKuBjLtcfHo+OVzwB
	 T6KS2IcPhXwOeVTJKWZlj+2YEIeFiXBr5W0+gB6+alYxFKLzDYHmvp5ZKO591cZh5+
	 VNJB5+o1/XwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE9C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695039360.4685.3034127609423935269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35680fee032bf06acd067bcc467e12b1a1085d804fc175181250dfde3670670
Date: Sun, 11 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746950393
