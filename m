Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE25175A9D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777172854; cv=none; b=WxTIK3kKqrkdAUnA80HM9dVgk4oc0NTBTQfJM8kD8kUfwj8XTjEPIxHJ8+2C25ZpnQ7i6dFQKCz48ObEk1qCboKYA/ItU0LigtWwx9+ym31sCAdsYGg6Uq+szO+eYrBLOQ4unhWvU/l4cgP8yvfwAqUT2U5jM0qU+txH8W3gBF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777172854; c=relaxed/simple;
	bh=UF3EGWgqMXxMxh/P+xgvbv0eNrRy34z4GUs+DRwLraw=;
	h=To:Subject:From:Message-Id:Date; b=nGss8W+BhRU4jrgiFn4njlHxr1smm5PtuaC5us5/9QtWibF+JprWvFKhbZWjbKp9nDEcbLYTIHTKtAb4TXTdoY21o6Gz3lEs762K3AWcTmKnnlLq7GvsiZISBynIuVtY2U+T+s9CzGDc/RBviyP9VdPedgId6Uk/s3X3bkRR9+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA/juU9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA/juU9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9E7C2BCB5
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777172853;
	bh=UF3EGWgqMXxMxh/P+xgvbv0eNrRy34z4GUs+DRwLraw=;
	h=To:Subject:From:Date:From;
	b=pA/juU9SDuI0Nk/cDL2me162KHhHMIGvmJuBrPok5hThjYQ/YTsdoMCnmohWZlO44
	 uBnhQeEbS57+n+jwUGsyFrGcJNn33+sQFaxUBa0nooMyX1rnpl5vpSnZ5nyW4s1VIL
	 FCESDwysGiTqPMyrqvaGCUVLFMwgCn+j9SmbTtQPpZuFo0PH8WpMVgJs+fDFfF4XSy
	 +VVs2chuX9P47DwQbCBhq+mqu+HJ0EcNStCXkLNl61zJqNpx/saYkVkjQAQiyl/dEC
	 FNOCQWZ5iTCXbBYLAF1l5oWK4048jSEbwHkqxcatW9jeE2fy8l3lQntMeW9EzLDgTE
	 I5tL5Fo7j67Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23BDFF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717285369.32530.12121819697335027240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09900d7c509d3ef68479d06f2f1d6be0a301ec47bf48d9a3e7cecb077ec25ec
Date: Sun, 26 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777172853
