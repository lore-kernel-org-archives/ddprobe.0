Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289EA2D8765
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754942394; cv=none; b=SYkXGdjt6zjyAcak2rS2dVaMw1q98UHVBoT/bdLYmaEgWjDdlEDSbjyxb6lQfRWPRbDOtJW7Gdvj16gkigj2k31EHBg9tTWSoBiQwZEgMbk8kK5euLtXneH7bBHaFToO2hRKu3nKnfdyT/g2+hxEq4dQa0EAnt4VoDta7kpGSJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754942394; c=relaxed/simple;
	bh=xoVe0qibv5wz8IVHPTfe9/GrYV8oXRqUZm5qAEb8d80=;
	h=To:Subject:From:Message-Id:Date; b=uFBNiavoqC1sPWmfow8aX+DLTFQPLXkmFlx9J8W51hAlZOg5UbRc6AFFRhnP/8AnM93YOe1ic9TSlgSiZlL9gHpjPKiS4WCdkPIFYRTH5/l0M9uXE27XUB0I1GPU1306yxleteiIi49+PEiTnrLTGYncKZlTgB7+C14OY3dB3l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgvuJgkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgvuJgkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1463C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754942393;
	bh=xoVe0qibv5wz8IVHPTfe9/GrYV8oXRqUZm5qAEb8d80=;
	h=To:Subject:From:Date:From;
	b=pgvuJgkFCZhtQO86ymUm+XonvhFAizEiERek6a1ekemt9J6C55PULEqXgj7yXfmtB
	 Vy/ptXodSoqG+97SeRdNwHTbmdybOFZpvAcEX6tMGhmA3CSvgttKzpnR8GlDhWxmFn
	 MhpgEZVspor+wpP3fz0YGHbetYKSxH1MPyj3xY94i450ZyXtNOgZEnZaBQniXyms6E
	 2zKC2/qR5xBYOI6OOouTwmqBy8UBgqRz9EAduKwIK9EAACc9eMsQXIXaVqpjFuLSTk
	 5FKDfrCd+SzSvpjWKqvVdu2O+psNQMzrXRThJDUeesZQE0lXH4YmmmnBgSuXmCyt5W
	 wF4FzPUq5blew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3BCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494239357.11246.9566336361155330121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03789bc3a7f69d03e694977ee582983de19bf34642466dc0904455ba2ab58e67
Date: Mon, 11 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754942393
