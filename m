Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BD5A3F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719450803; cv=none; b=uB6My0XM8gEw3Oxn+Ui0JnZmbxHq0ZJ5tRYfmCttL+Ny8uk/Xtyk+Nvq+qXSbIl1pXXKfDXoMgbhIAFjMLZbbSZLGdm5Jy48EQ6y4BThtMXzcth0VhQ6/8gaZNSLsGY4wiiZ+GHQh1KVzFRLvWlQdT9yRI/L1TALTFiBCR5R750=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719450803; c=relaxed/simple;
	bh=skjfLdAwmjHVnwy6htpie8G5LpcG67kI4qWqhuNeaDM=;
	h=To:Subject:From:Message-Id:Date; b=nNxaZ6DHte5QTLJtfWOI9Xpqax77JV9v7wCyYWzC8qIHwAzleBk3afSxVy+TToOsXQSA9nyCTLhlP/RyFjPB//TXHeDpvsHqRQPlac5q4GpBBcldejxJBBYH4dmCKZYLNV2Mcx7tyEqhm1Zy+55gjf7HqCgXK643IHkGGbG4420=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9Cqw3pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9Cqw3pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFC9C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719450802;
	bh=skjfLdAwmjHVnwy6htpie8G5LpcG67kI4qWqhuNeaDM=;
	h=To:Subject:From:Date:From;
	b=Q9Cqw3pAoXDHNQz8ibjD0RBd4p96L+dwBtuIYSkHgkAk3pmp+E5vzc9LCtHQrUvo5
	 z96BzpSJzKWDSPNoauRg0gcm4wYHmLr/HDMoskyWjj1o1v/4+9Ig0ZT9i5vj71FDhQ
	 YhVjKL6Ia7Lo7CMKsDRnaVQax7YouXVit+/ryBjvVk7mdfi9PgQaXgHUMlubjzHoqF
	 C4Estk6IqmG4btztFC3N3GE9MvLxOSmnYPIB0/Esm9lrTSnVZPMT5AutZXfXbRuK2e
	 H5OEudBtViv5LwLIPhZcJNIDXG78FKZ2H12HdSnsLio/U8frUaZN8mh3MebXfhEyVI
	 ked/cQ0dJIFzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF50FC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945080277.31635.5878220538478783347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473fad1873a0308e39b9443219a0e575408566c575c551d5ebe0797a361d0f36
Date: Thu, 27 Jun 2024 01:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719450802
