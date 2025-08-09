Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B025D546
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754747394; cv=none; b=oqUpWSzJwyF/XQkt+syprSQ5kuXN0jhMXmWbxIwPuk2lRnUpxILv1MgWWVqb/EL8iTgZijMSeSEW1tL2attea+Mz39bF5NkYU2Nx1XdNob1D8y6XbrRkpFgdGqHW5G00Ds3dr5GN5/ZTxuDUjWrSsCYZW6HQfRTQzsjrnFlwXTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754747394; c=relaxed/simple;
	bh=PCXrLez+en183UAPNbyU5ZlzLmcUdoazmneTIxd+VAE=;
	h=To:Subject:From:Message-Id:Date; b=D8M8mRlAqqIcxWpudArnXvjflJKwr4WakZFeC0FjJ0zDa+5J02PS/plVq+Ddxb8IPfVG8DVw2h8qZhMvikRBXn1PPsEUZ0SLJt0WMG1n7mWrTfNBxkvPdRKFgpBxNkKcZgsU0nLOp8xUXfJ3GnrX+B20Ic2AOhsSnA5FY8jA3AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1PZcPm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1PZcPm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1472C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754747393;
	bh=PCXrLez+en183UAPNbyU5ZlzLmcUdoazmneTIxd+VAE=;
	h=To:Subject:From:Date:From;
	b=E1PZcPm+lRM1X2VXFrZ3SIyP2I8eSwtUN0uAkCgzOFiQcBm6+EbgVMzJ/0WQvmU1j
	 8LWETTo28coOAv2EImLmJy8jknOe47w0E94iY/8XXrDieicJI1zbaHaD4RR79QrZ0Y
	 W+bwSpvk9lPQU1XomcvgTbDwTWIr/QZSBJDG+vkF1vxoGOWGwfgBBbtkozkMXbQU/e
	 sQwodNn+Pji3J+UOiLJC7N93B2NXYnauczHQikawQbizwIiBEI6OOEK6AfgHa3vtas
	 99W/wcN/7xBNyB27kYgkpjlyjUig53TgWzxp6YrAb1ImZexRFEWHfg07TA0sN0fmeB
	 HMJJNNRbBu9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91781C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474739357.10394.17351628025203205491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64138d9eaee4c7a8d139516f7afd40ae356a28773178ef34f6d42f7624620d9
Date: Sat, 09 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754747393
