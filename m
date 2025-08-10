Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061DA26E6FF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754848794; cv=none; b=ZKaVHknorsXTz7Nubc9l8TgBwKf8qsC1E9MlWtp9UitRv4DuVWbMW+24oHfIt1iCDvOsNRg8xP1gFqx9bCLv2ucfUofXjYfymlUQJz0iL/oN38P9ePWsJlfxJ95+jRuyZfEudQ1D/tlNaH7V+C+7629BXAWpVwlTux8ofx8nep0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754848794; c=relaxed/simple;
	bh=mr/oefF/3I9vCQ3h09+RvyNXcjLgvl2WwKvIZO5S0Zw=;
	h=To:Subject:From:Message-Id:Date; b=qhRAmVic01oP9oE46LPegPQoHElqPcvckvIOJyOsBDXfYD1SezVOpuHJ3qLdrmL+LVwAwRoT9mxP6rb4f10lT0vCHmONfzltVKyAWJhABOghk8uYk0dD0cU05SKHarqwwv0ng59/JnVj9mxowULvDBxduyPeGb9/8lHw3w1Dp7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzTKDkSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzTKDkSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE7CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754848793;
	bh=mr/oefF/3I9vCQ3h09+RvyNXcjLgvl2WwKvIZO5S0Zw=;
	h=To:Subject:From:Date:From;
	b=MzTKDkSDBjxy01A8vc7Kbtpu92KMtegAzoTkraZLtRWfD+FZQ79Uv9hOwXiYHpWvF
	 YxyWZ2ObvCoBphquMnZ49dXn2LlsBmOj36BMcZlyyzFTSydf8WEA9Z5qLpYXtXxgz+
	 Wy8ulrAzS34qgryYYoE53/YyvwD89rWQCgk8GGY6Tg4DG7YorQ9Iv9SHg8pEj0e1bh
	 T2l+kxltzk70/s1WM/U/jntA3YVb41Bn3rk6CEN765k4Qz03fXw38HNZghVfIUKzmu
	 dCOzcOpExLDfgakdlJL8dVHqKrKBy/7OgtCegGTcO9ODNuWO0w+krmqo6Cfb0cTRq7
	 39NEdviUbWwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF1C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484879358.23888.4861002783856360467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272c5d4a011521f349a353288b27c7c65db6d95c73324d90c832c20c88518bf5
Date: Sun, 10 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754848793
