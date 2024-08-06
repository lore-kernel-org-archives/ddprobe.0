Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD741C37AA
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722945954; cv=none; b=GkrDCQT4KXyvEEmrHfJSDvTVZ78VMJQQrboH7ss3UOGSsOpeQ1LWbbaLW2wh0rGnApToyEkx7COU9SjmNaLpl2lES08egGiKlKzUYXstbwlEkhGm3uJcmSDulznXvqrQ+FbQDQlafx+gP79/ZQ7onPhZUhkWF5y9cdYPZTdtZsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722945954; c=relaxed/simple;
	bh=URi0sHSgJzYVAwiYxfIsy/WOwke8xqFw1Jficfq/FoY=;
	h=To:Subject:From:Message-Id:Date; b=lu86ypOjXCQdPQ2GSUhG1YCnwsfYVV8SB+bm2rM4WJHMVR6KKW4Ffbbk5T+8zAfEwQ/1jhuK1p0sm9P9cBAnO+7Zs7XPPeP7CxVRRNuc2Y/WbM+mSa09mLqIyVTeOl8rdfFvOX0UkK1mQFF5zNWAna/aGSsSTYXMhd/NgJi61X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZgLiqTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZgLiqTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C4BC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722945953;
	bh=URi0sHSgJzYVAwiYxfIsy/WOwke8xqFw1Jficfq/FoY=;
	h=To:Subject:From:Date:From;
	b=oZgLiqTICiw1Ylfr9QiV916e1DNYkQSpNSStquNrFw9e23LWUti1ceMyryyd+W8UZ
	 zcjwSM49wYv4ygIfWUBVpeBO8ytGgctJQdOFZXttrq9ZmQxX02NpAGoQfH4MPBKf6V
	 omJcO0BJke6OlU7Yi65IJ3U1r8FRqJiwIpdHeACKwMYPwna4tCHmfC15+azOuXyGsi
	 2lCfPo1CVFu8vcdWvEW5PJc3ieB5/xU2Kum61sIXxZoAThdouvcXGBjKW/Ffwtn9JV
	 U7JajaNUeiYe6LowGeYoo6EfuAFIosX1DQyf5Qxtw/elxrREbWt1DGlR5OY+WYBH6Y
	 tdr5P9iUd01yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95414C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294595360.11195.2910902152619770074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432e0c3fb60fb9cedeeb6f71fb6b1d0e4f53bc849df9826c44b72e1032c4ad4c
Date: Tue, 06 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722945953
