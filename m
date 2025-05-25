Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B9F4C62
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748183994; cv=none; b=lfK0VBPpxL0TZOODP/CRPmoGoHi/oFWGpLmGeNHUCvIMUMyE2vdobU6xSTual3MNdxtSeibwW/8Wkyh54vBrBTEXJL9fgh5+MlzxSbR4Suf5eerRbCZZS8g04aeJkmZ8/QgIMYr2EMOET2fDVqlcKfbgzDIoy+eP6N7CZ75sFM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748183994; c=relaxed/simple;
	bh=9kTYKnfQsA3heraxb3NnG2W+8547y7WWfRCwEa1fvBc=;
	h=To:Subject:From:Message-Id:Date; b=O/iqHm3ymwuDWLP9zX5m+1jNeualY9ljP0z34wQ5weKFtlnhyCA216L8XjI5o5u60rTJw980XDdzY5yixJjMbQoV51e9m1ijS5iMDPHeW+8zPHvw43B2iW5SHvMCWja2cu0ebPXYvp/WnEirP/4c+DtfOUy8TD6RfXexC7Ug9DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/BvTzzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/BvTzzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BFFC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748183993;
	bh=9kTYKnfQsA3heraxb3NnG2W+8547y7WWfRCwEa1fvBc=;
	h=To:Subject:From:Date:From;
	b=F/BvTzzftTIgkM2e9+hqLBX2642Z9ZDoAT6kkD4OrZdE8n3Qmen3xmO8YY8MfZXM8
	 UpaXOgW72iS2ue3MRXB6O4iYgjiNNNlrNk/viUd4SKJfobju1OsqVFrUpqvdAisw7B
	 lJbIuidK0RAeG55D1CRkfsprv1ejkCZJxLUh2/BAVNBeFeWVVMrR+4h7WQoG/sUycA
	 HwNcjeJ4EgIPokY/EZvItOzLxmNqJdUHEE6c6YlrHJ8I9lF7N/lwjhgpujIANh5WFL
	 rnif4syrNq/QCMWLklxChAIgfRK4wmXq57lwo0mt6NYYUO49jgcUJWd57r4vy+w1Tk
	 6zha96U79Us+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94373C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818399357.22228.3615611449954589464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec4b09a5dd8bfeb4c36c96688ca2c0ab84065b6757b2ccae9ec060fe552a3d4
Date: Sun, 25 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748183993
