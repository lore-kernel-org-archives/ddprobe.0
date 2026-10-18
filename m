Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8123DA7DF
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792340434; cv=none; b=srWeBCRwIeopYdx3QkMJu/9G87PYBC6YIwg4Jxblk8b7vVFTj3L38kxQ2YAqf9poaDKOfAp+98RCH7urAVd8tj1bXgrL36AHN4KE5BueJbsVFzOE/GXIVnUJnT6Iapp169McHEEz3XhnlTu5LqVwdC8gW6AO+lzi/9R8g/Z/3nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792340434; c=relaxed/simple;
	bh=qQAxJUMKiNhqMOU2Fc2ImEohRSzOa/OObCiROFRmKug=;
	h=To:Subject:From:Message-Id:Date; b=OdFqQl5ET0fG3DXK0xwuEI1N7E6x8KgpCNBcc3wePmDN7A2Rxf+mM5PAkZPYPxxFDI9DXRbX8UsodkAaKlvjSARygrShTxx6359mTXh8wZHrfMwSMPHPPiNOwlGdveHaIaAlpoLsjtnvno+DShnE2+UB4CmJfB4righdZA+ci2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7dKDznn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7dKDznn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C12C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792340433;
	bh=qQAxJUMKiNhqMOU2Fc2ImEohRSzOa/OObCiROFRmKug=;
	h=To:Subject:From:Date:From;
	b=B7dKDznnCHZDDkc/4wci4BfxcTxn81guRghtWi77FYv5+4vACUIGqaxWARa+aZYiM
	 1hYw3z5uWsYTAnlV9KwkOqC1iDyLMiRNYRxh00s8b0pFz3txarrikqm360qPFg8gTY
	 xGfwrSFLGgms3NTJ4J42mYvCfDhOss6BH39nXzWsLL0j2vxMAhdVw+6FknKCsP1eIG
	 qzK4ppc+KqyO2iwNF32fxmNILl311/qWcFBF9v/w+gSGgf/+3z3eulctYOeyGX4r0R
	 0r78yjOK3KidRtfaDnHodJ8p4qBRF29O+gmA+LYseLpvACega5KpTJWWf9yze9ZY3I
	 jTsDN5OHaAoTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF114CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234043368.28645.15322532127401116577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc272691a2a3efd7cd0686d44f535fa6b0230a5a240303b3099089ed4bbc0aa
Date: Sun, 18 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792340433
