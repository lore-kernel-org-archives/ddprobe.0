Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5DB1C4A10
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754804394; cv=none; b=f4iTa32iz6BGmISPHBFoQhSc8ZOtjFwJ7s/JARO+EcmFD+ZrmoFyRxB29H7vk4ZULaahhS+cu8ZEKu6QQDzM7P166b56ZLzBghLEfc+JutDbeW97MzC9fm6E7nR+H0mF5s+ryADGwwxx9J4DZP9fq4MOaVbA85VAYOSAoUwk1bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754804394; c=relaxed/simple;
	bh=KuYZTApZdAiTzS0+uOt3tKQI8AuIaDWVkFtJvgrQsMU=;
	h=To:Subject:From:Message-Id:Date; b=YKrIW6h9Y3Cz2F5NwAR+Gutq4niuPZn/0FXqnlGVWs6xgnHQJTnF8ZAnve+SsBiaaroyZsq7ahHU/h6h3We/RXnX34cEZ4cizF0G+2gQmBktPrkfl3Dl37rKpZOPdDwJlz8NK4DiYEqgGSbbVmQeHjppLl6M4UJISEO7PZZXUVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izQuWN5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izQuWN5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2648C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754804393;
	bh=KuYZTApZdAiTzS0+uOt3tKQI8AuIaDWVkFtJvgrQsMU=;
	h=To:Subject:From:Date:From;
	b=izQuWN5o5I+Gf0jE96Lq1B3cf9O+JHQLA3t5Owr0R4Vn4GMC4IuHPtZTXz2/As0N0
	 +lscPuHV6L14U+Iw85GVIakVJ1iEtshsfkqj6PpFzkM2u6D3jR85OIlwC9eUz6R1e1
	 gCI9+8XhqPnimKsltj0BJPW18hAy5kHYr5jFgu2RQxTvq73ZR+LNilZtfy/oNwN00Y
	 VC6nE3yrq0ZV7eyAHtesTK8y9jDqqgAnISvPm4n9zbxy3lAlig6mrPCGLvF+aNfsnX
	 ZbojIbB5bUXBaZTx8AdlqETv7Si3oMEB2rIYElCklwBTKK/oREVegLKehLM9wCYs3J
	 FBkTnFWAwRwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABEC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480439357.29309.12457998181510633761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498f50f39057baab8705a4bf792f46da9f6b03bf20196fb80614426e448c4038
Date: Sun, 10 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754804393
