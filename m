Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB82327147D
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759301993; cv=none; b=OMEFuwltvask/enDQRJRRq3nbyoqCBUe8I37CcHlA+pOYu8IkdcRhfUsdG5cV3AklV1QTVvN0eNT7UQlWpmhhhAQRNJWzzn4q46qRr9DJWTF3ZEDyvBRsib7mUe1kp4U+Fp+oY8tLwzZ0E60QycK4vZJ3n8yWPP9Xoq8kb+vHEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759301993; c=relaxed/simple;
	bh=brcrpKiMF+sOvI8vK6rRb1ec4yDxqPej3vWy/mp1og0=;
	h=To:Subject:From:Message-Id:Date; b=esiRgLSUxwYT6PZsQRTwtpLglCL+giUSy+ghXU15OfYbt3OZej/Y33pvL63Gy2nOOkG9z8nq7te5ClKO7I5W9NX79UcXtPrfiq92smeFL5iXZDbcVzPR8Y2p3AoLmab+nfcpvpy4nKO/uLJCOBL6n1PA97ZPLxiU/h7zU8Noj0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fctgf2zF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fctgf2zF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D0C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759301993;
	bh=brcrpKiMF+sOvI8vK6rRb1ec4yDxqPej3vWy/mp1og0=;
	h=To:Subject:From:Date:From;
	b=fctgf2zFSTI6kYi2u0CYpyK7hv8KrW0tpBWyUsdTpGjl8TtluMy3htAOP6E05gbNE
	 2rQIPIsM1aAnpzIbZUcdUfEBJ1hgfPOkqfIbbnaABwPQ7NSffG8LeitAYl6rVu/8AT
	 GIT1arcMBglSp2xmvorWijC1jDUQZY7PMLmVD2cUl5PZW43Jlo3ZlQqXcMtEjEuWd+
	 Bn8nNNhbpTfVtLbloeP8zmVvrUtgqfWdFoorf99ztDW8zKm+UHUmI5eeEClaY2O9tk
	 nrhNO4AklkD77ovz5t3H6hPrjmswZAiyPENTYkZ1T0zXB3ykTaxud0nfa0XjA6ywXd
	 dz6cKmUh+t8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91865CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930199358.28102.2813484967362555893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db8562c8ed67302b4e619553a1be40c035a5f6f2d3c3b1db1c44b82ec1d1de9
Date: Wed, 01 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759301993
