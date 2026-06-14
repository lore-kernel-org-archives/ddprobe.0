Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338F217A31E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781466394; cv=none; b=J0VgFAhCCujqCHhN8rQbwI/CmsBjLZM+j4eMOqI+75MvOud7WA6EDUAGk5kyT7kARuxnoLiRsP7/7zzapv4Vx2Egw267cWSvjetnMPJSpVgXrJmcK44rhH6Cp9wepoZqXimpa0Dko1pL7YwDHpxeRBUyfagrbDOxxugJfXJ6n6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781466394; c=relaxed/simple;
	bh=BNPn/nCuvCRONDfTQZ2lBX8NaH8Rsc+aKZIR651Piiw=;
	h=To:Subject:From:Message-Id:Date; b=h7FjqOQzPRYj+5StdQRyG6tQWAawVJWFYE5r6jOGh76NKq4K327L3iaeuxP6/Z9clidrhrmwwFiYlWZAWJyIcjvDOIMNIW/P61vBdCvMF6B8ylqyrWyXTzYVlyLc+KcFP83UJ/Z5J73xVBan5IpxibSdesTPlYpQx6FuSQtYPEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXFlwc0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXFlwc0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7F1C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781466393;
	bh=BNPn/nCuvCRONDfTQZ2lBX8NaH8Rsc+aKZIR651Piiw=;
	h=To:Subject:From:Date:From;
	b=mXFlwc0dwnqwAmirH656b0EHEBhI3fL7PmOkEo7jwFrC+QekOjN1a+CJYGsPp43We
	 itw3dCAS1vV7qNIyVcpehmTJE8jDwHn0I2tLr3kH62gfCcktOe3CjltW7HOs9ObPbG
	 dm7gHwPahMNoBnD0WK3pITWwbpwAv7IXUMgllDJfLlFyOuZP9bgizU9+MssFjUovfv
	 aE+VBoLGtrxMl62yIdtBQ9RqRnCuyluvOy0eMwJeHtTs4Y/WoLiPGLYcEKjiunP/vJ
	 QHT1GhLC+ca3hvCXqmi2FTHcUh0v3sKu6UYbDFfc3flDUL5S/Z0mhh9uw0cDF5x42R
	 Hplai3SQr7cEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF38CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146639369.2980.2274834646575350830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbdf6abc5300d5eb1c1a3a9d38fcba23f6db14058024180dd8669d861b61d93
Date: Sun, 14 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781466393
