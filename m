Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B0C17C61
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730118354; cv=none; b=KXa5A9U0FZZECoE9nwanPwHb27R1hO4KBbCEdJoME1cngVfxn5v2WAa4PD6hdYMpqVlSQtWruKyW+zEkmxRMgqCgXH8pgwsu75FNYuO/TprjxVmBeHBYrOmxBiG9bRIgs8PNTzljF4/XZZUGzZUV/fuk2LczIBajMvNhsrdD9RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730118354; c=relaxed/simple;
	bh=z2u8ZX90LTsuPFN4aI3L5OtlA2pcmY+o/I7+EzNzTn8=;
	h=To:Subject:From:Message-Id:Date; b=jfUZH3WcNxPxOPJTedoWrrwkqs0H1i6LALMtWY+KLYYarRw8vnE9MyJJBPLubvX2cK7bp2E7weH82yj6rcBYrsnYi2fBCRRjliF6+gIINcvYCZX3SWjLgGFv+2Gps3taHTrh9rekM+DrhTdyy0s8H+LoCstDCY/VXGtnW8zdSJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfSS8vpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfSS8vpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C6C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730118353;
	bh=z2u8ZX90LTsuPFN4aI3L5OtlA2pcmY+o/I7+EzNzTn8=;
	h=To:Subject:From:Date:From;
	b=dfSS8vpeaOSJHiGcG0k2iphupv3zR7dmlZcSDsznbTjvUWJBuzbU7ZunCwd04fqzi
	 w6YIyHqkZ0OU+kZPo2m+EGRK/CxFu9jwkbGI5aLMQe9ptNlXbVrvEvc78LdvEQTBhH
	 3KhLroE39kHI89LKTYO1ur7ZKkMKQY6rHDYoKU7CioJ5tvQncyF7qOTt/7dZzGp/yD
	 Ip5wl7zGhm6JfffPrUcoGMFxwzmpgMhNyGQYQwRiCoPI0U2jybLEpFOHYSTblYzoky
	 XHMzS740vm6ph31+9Sck32KPgFfYafjHD/ufXjxk726sHESp+ENuGBSnYr00m7gbC9
	 9s7iEHGB20rvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94338D1359F
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173011835359.19875.996754871246685788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6188b7ded179185b2f0fec01a0fc2235bd05032bb0c04685223bcce4d1bc7ab6
Date: Mon, 28 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730118353
