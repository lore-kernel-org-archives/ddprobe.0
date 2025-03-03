Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401417D07D
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740985134; cv=none; b=FkxttyGsxupOni0Zeqia8xXsOTRbjfrXBkrorbfgZ6Vqu2FhSxxNKhMZBfim0OR85n12zIJNQYjYS9L8+FcK1pHPajLnnBV2aqudjdbUfLZlGse2IwImQesw4+mPE2eVrm3t2el11dmu7xAFhv1Sop107zxRbNu1QKwBx92WbG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740985134; c=relaxed/simple;
	bh=izMgpRQbkUSx5djyeicxJY2tCbIBD1Gxh9e1CAm44OU=;
	h=To:Subject:From:Message-Id:Date; b=rQlSxJ0WqhqGecZDAVPGq57IexVOX4agE4OSCu3ngJ0D5vVtx/4yIjhqX81m+dt8Pxj1/FzGflIOIhmmEzCUdTLttzV6v8/V7suQKZKiUdd4SsIhgg/Hh+G/3tuGfkW/DQ23wexyLZL6y6VPDQ5ThkqRIrDwOwT+VDr1J8gnjP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln8wXuTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln8wXuTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35F0C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740985133;
	bh=izMgpRQbkUSx5djyeicxJY2tCbIBD1Gxh9e1CAm44OU=;
	h=To:Subject:From:Date:From;
	b=ln8wXuTVvSa7ngbnSE/izaW+6JqLHK9Sgx+cF/hgIdP2u0JpHwPErpkeN2zfNFns1
	 SQQHEqyLcpkK0PpYW9AqLiX32ArsPuaNP3iAFCjCk9Ld0X0kKTZ2sRFxZB2uB5HUOv
	 Ud+UGcZn7MszI1qXDUw4o+7TKAyFpHAm6Z0LtOJulmNmJXBC5vm72mtdnoNcwcVcl4
	 Gk6dqQm4Ca5gfw6e51JJFaXWEi4/OlCjR7TUx+X8cTPSszlw2wEs6F0+lmNnc7XPIZ
	 nTVWA4LAPcMwbvRruwJdzXmPfYcXvOaiR/x7oc5JPLmyFVDUSVq5pcZejBDt3Hq4/i
	 uCYk+EaOo7M/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E2BC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098513362.7666.18170021648218671984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc88af4dfc259768927a767c5567c4bac82def0d815f1ee3837d4b5d4def82ee
Date: Mon, 03 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740985133
