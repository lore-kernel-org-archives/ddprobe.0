Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064293C2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771265094; cv=none; b=uRrLnhd6WXLkA7j5X3Opl7QqminF1v9hzYERTOyOinPDpju9ojOKC/wOGwlFE4kU+V037w7vXo5r6Bqfm3q1LlgMbnWd0CYBrhMHugijbdaHwUfRLDw/z/CAEOUdAt73J8GdneDKWxM17/uTtxAj8Xo4SJ9pvy14LixFfLd7Id8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771265094; c=relaxed/simple;
	bh=D4wAkL1t1nYZ6xMty3SW4dNmMslLn0qjFLdwlv36OFs=;
	h=To:Subject:From:Message-Id:Date; b=bQJTsCZ3GBdHAXHg0qhe8e4NCc3wd+EWF6zDENSSSl5yLgGK6Uws1OkXJoe3e6jZwJeNEy2FDYpi/vR3oSyo728fvPcNybWiQEG1Dhu759SagoLYH0W1R+/sXBWMCQ8HOaJXtBxx+FccOXAwiz3TZUqbYHc5GlpVRV6ltjgegro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlE4LZxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlE4LZxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53BCC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771265093;
	bh=D4wAkL1t1nYZ6xMty3SW4dNmMslLn0qjFLdwlv36OFs=;
	h=To:Subject:From:Date:From;
	b=PlE4LZxmDHE1KP/2OTAW8MEMYcdUs39e9SPgSsZucRrSO/q2uRdv7KIkb45gqJ/Tg
	 qXKLqIC1ABNvzqg/fmfM6U5I1Gy6i/2fIpRPYYK7I8dOIU/IYRs1W5vwTeRvyZOulc
	 T2sQ4+UVzpeAXKcvejXFUlRKFpJNtSqmxKYXQg6k59UTiaEajLVv6HjiQP7Nk9CZHZ
	 MwrfbZhYbzPfuS91961AHvPO/4KKZsxGwTzG9gPZN8PtNf9GPrxJZ/G/kgSk88+nUd
	 Mn9DvQozfJpqqKNOleWA7nobekws1DWy0UUN1MK6K4AgzheTc6JFcWWdUtiY3HLLsf
	 6vjNcFC7f0Vxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A6E81A5D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126509359.3911.1018538253225295353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3364f8e34b582b3d10256707a2a7b54a4d70d43fe1403f8afede22cf800f24
Date: Mon, 16 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771265093
