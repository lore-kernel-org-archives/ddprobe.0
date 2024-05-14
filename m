Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2D5180A6C
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715715743; cv=none; b=Hsv14499NPO22bKimIs+i//Sb9SiCMxhUnQzqoIzDLJUnAxQIczNIeBRboekwQ4j6Ovgls5KzCLlu41XU1rL9j7Nd6am6R65SnTVxgu/6NF0mlJyN4EivMZzlJEtBbogcG08YDYSG0xIA3Vg7EdDOzkrXKcxejseKLq7phWtcyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715715743; c=relaxed/simple;
	bh=k2XrZAsdoOolm4q4DAjzBV5U5bPYpNtytyMV2B9EH/g=;
	h=To:Subject:From:Message-Id:Date; b=HUJeunI1uT+jmSLl/u66Yb9Ynq+POK2K2IAPp/8564wqmsRnu1LjEgO/h9JeAc7TjBLprqQqY2NMGWeWVDHOj9nv3go1cbxrhlKcbqfx8uPjVo/XNDTF/VniTpHYweJqerXL7QqDX6dmMGAcZehO1jWrtCFAi5tV42w+ERo4WZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFbkXdYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFbkXdYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4A4C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715715742;
	bh=k2XrZAsdoOolm4q4DAjzBV5U5bPYpNtytyMV2B9EH/g=;
	h=To:Subject:From:Date:From;
	b=eFbkXdYtj5BBCYumGbd05OXO5lmiphKu0GexN3P42x4ODM7CVjeV4OLUSzuSgKa9B
	 FmTiX17u1fTzRfwAOWWgNdZbMhhEJI4EjT21Kx19G3qlMDJ1truA1R6G1Ecq2Vc3pI
	 f68edrlV/nRi3Otl7sZbJiOv3CaBDcTjAO67pXJrZVTYUGrATjLEpwHZbtE9NCIacY
	 pdX/tkgj2LZyaPizbWK6y++73G5UfJYz9UY5chH5/jfAA5mU9fCAVNH6ePI0zZACcB
	 5NyEX6piw508XG3uAWw4dPeCx9VJvYWomqvaoMCibMbFY6WQ7diBB5BK9x3p7ZEbfZ
	 hBJgrGJXcEmKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C854AC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571574278.23876.3760848580354215634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939c44224134ca26fb76db13db15e0c62ca607977ed097745d257291146c6f7e
Date: Tue, 14 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715715742
