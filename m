Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497C756473
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712922563; cv=none; b=qrTaRobROhflofQFLsFdh3mt80L6H+SNMB8mtaLwwkqZ9VPplm18E8tKRcgISpyRvYicTlVeO6N5Uvse0+3s6rf4BGTtxzK3+yQTZ2gzpafrWV0f+rZ2hFhme/YLFGk1Y2uY44CdenOJv0kc1zx0iX3kVEh5qzq4nzcIJd9GMr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712922563; c=relaxed/simple;
	bh=PwkPRDO8QI+xkwwqJHCMnQQ6nphgEow/OkcHd5L3uxc=;
	h=To:Subject:From:Message-Id:Date; b=Eog7aHAkhP7w9OjMLwK42V280yzi1UrOb7PUtLO4fdVgaiuxxzBTb18uWXfHRl/QiM+sljVk0HETAytDceXI8NM9irK+O3lJOo9MwLELUs2bHxtwuuMC5CnneVxlarYwUiI2eHg6fRPvnYl7OQU7A1EeRXKnjXZc5en/60MOJ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia8w+UK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia8w+UK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A8C113CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712922562;
	bh=PwkPRDO8QI+xkwwqJHCMnQQ6nphgEow/OkcHd5L3uxc=;
	h=To:Subject:From:Date:From;
	b=ia8w+UK72+7SK5oRNkvT9ansDcIXGTXEFPxuY+EkkKVU+1+sWl/UZ93LTutXDIAPW
	 iZwKp7efDt7KRL7oXNv3yVDZ0cTdjLpV81G3zqKB5IqA4hajcASpoG5Km0gzr6/DV1
	 RhCGL8xApz71pIPXVoy8fSlU3dqFquzuuggT1RsYVATy5mXUdKA5dTduEperbMnRAe
	 FXJ1voh2yeIHS0LNyIMoFQu/M/0w0K6jztFzeaX5UcArlWSZaHpdWCdwFS5reg3GX9
	 oxphcShHfgXNQzqJJMGhFnu4TyVlee9E9+b1TRHVLZ3re2iTef5/HhobUBXbp6aEh8
	 rRzpWV461W9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C12C00A94
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292256276.8581.16570724735013773814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08642bf36766aa817357b1d02f563dbc89ece9144ffa764d9772bd785531b45
Date: Fri, 12 Apr 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712922562
