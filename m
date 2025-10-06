Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B9F1DE885
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759740594; cv=none; b=TwpF0f023ofHSGV5iMdR0PFvyHkF2RxIJE0+nQHgKa1oaEfGOY7Qzsg5LAXvvmz3cED0CvVCTWJ8Sp/uHfx0BeDJOecGvayBOca0Np8I71OTQfQGYVD+bmFH4mQrAacZWqXoIr6BfXE9y/OnCxl61NTQ22X6toK6VtH9JiAuNOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759740594; c=relaxed/simple;
	bh=BPNW+y2CFJNUQwZP/U6tw3GkXwTJs+F5wj1udmRUHy4=;
	h=To:Subject:From:Message-Id:Date; b=Ko0EGqK58M7FaT2TdAAsG9PIOSDcydIXjiniXxLNNcMAAATkOax05GkDSJM5b6TBeRhMldmyzFEgUPY6dVDi4N62w/aNslUvQZhN4wlKyHt9eVoRkan2b36UCcrcO1XVEafbFSTZLEHrN/Kjl/oR0dB4rL6PBuR0lVtBOVKQrrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdKpbvCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdKpbvCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2184C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759740593;
	bh=BPNW+y2CFJNUQwZP/U6tw3GkXwTJs+F5wj1udmRUHy4=;
	h=To:Subject:From:Date:From;
	b=WdKpbvCL+N12PvQPgFpd5VyDjT4JheUih/vfJX0laWuvZwm1rP0K5sUlAOtlualy4
	 bj4sgolGFjXtiPgWHK7te/L//09enDNmmNhaihjsgm0sEBWlUkLnb4xMi8cbp6k7qB
	 jHyxPXTHjGMl65iwH6U4RgDLRtOo9fVuMzfNpvZIg08x2CnMOaJaKWj+RSja5v1QaU
	 mYkjCa+4cq8Cr4pzp96BCjCPXQidIufMEfyXDBMR9RwNyCG0A7A5I8Rn4bSZ0NVPP3
	 UP5B8eRtA+6TsgVISHRXtLJPhehOoLmLqcXsRnJADIy0Rmf8z3hQm6XoMXW4bUZ0yf
	 OaITmDAwDtQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27F1CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974059365.3205.1573619993786364804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f185f4fd83d85b0156e4fa2770e64bc5f29b08dc164b68df272f9ad0258ddc69
Date: Mon, 06 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759740593
