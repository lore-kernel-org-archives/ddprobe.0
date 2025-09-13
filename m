Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238991A314B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757741395; cv=none; b=kdBRUdaQVk4elJu3RpmogS+M8r2SJs5K0G0Ar5ZPrA04caM8puJ8VsLoGf/r4ze6uS2fHE5my4Mw4hc0K9v6+dhwGhwzAwl+S4rhJ1YnWPzmfj4GtwquaAi1C1JaPKcS/l+fii8ZE0PGlKBELIq5Uq9YKfLB7BqAlNmSZdso96M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757741395; c=relaxed/simple;
	bh=WLOcnDQM197vVH+sG8EmtM+H1Exa1oKz5aVy1G5k9gc=;
	h=To:Subject:From:Message-Id:Date; b=ektEXMhryYS+Us+egE0uApQgTWepf5Q8k8riWvgVm7WNQyx1jrA8MXSmHL/WccJOToeDTQZBAQcdw9biFioT8Xo/IngkYjdc4hzmfRw4EglPrpCUJnVfoZnBhG7L3gzbVI0uBB9xpOjxpFORCezv7ahGGCpR+OO5vOwgDxaR0io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekEYjgIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekEYjgIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0798C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757741393;
	bh=WLOcnDQM197vVH+sG8EmtM+H1Exa1oKz5aVy1G5k9gc=;
	h=To:Subject:From:Date:From;
	b=ekEYjgIZG3kfjH4NHb3KlGhiR4md4SbSaWbSrOSIFehL9DlZBufn1CoqTpi6WSlTC
	 ZvNDRPmLJ376Ti92j5o6Bx4FQTYYZO6Uxof3U+Yy1UBw1jTpyVkcFmo4QIGSuenqCL
	 /dgLYp36Jc5rO6xDVPI0USEdut6+6aA0nHHWYWoK+qjSmBKCIaN9CxkY2HQ0DhYDYS
	 K/0lIZ2iX7pwp3sSeApNFc5gAZT8Z0KrLa+HFlpy2u6WzzZcuY6yduswyqxKCLJ4Me
	 EgKq8/ykn6dDI6QMzkcOXnmtvJ7iToVLuNOa/q4QMgt1HYutKjhKvO4iveYKT97D+N
	 ORXUNRFqYqRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E692CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774139357.12540.3785532458547873281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d225c93e89e9afaa77b9edd59d5f94d534ee4ec99dad610b0124695ed635b56
Date: Sat, 13 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757741393
