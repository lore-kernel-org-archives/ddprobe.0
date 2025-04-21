Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30320645
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745200194; cv=none; b=ts3dFKjNiBOGuURrenGI+ZwMZN7kZmy3q0IGHjOUpIPVdlhtMLBsXiEyqcf9H6O9iwbQR1IM7G63u5N1QTMiDu/Rb+T+BCK2K4K6UNAdwPRkvevto0Xmn3FcR2dPtlyQOPvNpCyyj1F+QWMmae7b99wropVim2aTDC/y/rinzkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745200194; c=relaxed/simple;
	bh=XBdV66bG6xDieb5oL4uiUuaZqIi3iXjiloDCWC0Hbx0=;
	h=To:Subject:From:Message-Id:Date; b=kvcslripONaTww5XwYuABw9bmqB4PtXFZGpXsQOoKWPz/cKSoZAPLKNZ/V4L40wDr174khCWns4zxfuxcMMm4hb914l7MhrOEO9H990n9kr/1HnAeS6FiocwttI9D8dZe+za6zlNW4s4uDC6nYor8vW+1f3ln8w1ZAkf4zFcDrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPy/kDE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPy/kDE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89D8C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745200193;
	bh=XBdV66bG6xDieb5oL4uiUuaZqIi3iXjiloDCWC0Hbx0=;
	h=To:Subject:From:Date:From;
	b=YPy/kDE6dVmSqPjegFnBWxEDqAO+Ob1k4G46S2DnPOFAst+TrjKUkpJbnWWRDMREI
	 lttbY/ANIpQckboSryXq2+cvs8hfyYUhfJd47E6T9cQqODBjQbOY9xPSdrOx7O82QP
	 6aQvdu7KaJ+qKxpEUw0wW2USSQ6JF06/GXuJtEDL11D8Czzm8lu6XU5qoEuQ2qkyUP
	 2sEC+5wqpHU9e/bW3/9vDfzU20/t+bGHcbnjDaKBaNSH++Kn2YJCHmlxHRMR5+twME
	 aqzMe6dQSFrQrCmBQzYIzXcLnuF0Sjv5b+qsdG/XXcbLeSyBzYKdtyva5p8e9DZYqJ
	 YjErKyyGQzUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC2C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520019359.2270.4549805276604781458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf994080b2977a9a1fb936043253bac39e5fd276168be4d3b4c1f7ed6dc01d0
Date: Mon, 21 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745200193
