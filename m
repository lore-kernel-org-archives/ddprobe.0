Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146A91D6DB5
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769610234; cv=none; b=orUnrbsI3yYIXIf6Wq8n42EyK8KKz8rnBQG+o6M8S4SvipEe0rNIahfj1HoJYL1Q6s0xnsfW33daBL4vOzBJS+1jrnvpO0j8ATO0FTZI+3TC6LDGwJSk359Q+48i0HldnQwtd+UoQUaUVBGg+UYzT/PvlgLZezefK53Ba8bAdg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769610234; c=relaxed/simple;
	bh=MMrDyjYwKozPVYlkAjs5Uh5d0ZDaDbAC4Ipj/eNelOk=;
	h=To:Subject:From:Message-Id:Date; b=N3Lf9L6FjGwxdvQf1VpwpeGyh8QRd/j1BSWN8eS/qCc42OxxcjQ8qBHi+l2yfxQ4XrOEQZ2qzhT5zOYVt0wV3gd+63rh24n9hjEdf36NQ7SCkI1x1q/SXtAIbI4jLlhAWliv46/IePyWrKfD4e80bhznbdJgrc8vb2boSJwBpYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewTuelUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewTuelUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769610233;
	bh=MMrDyjYwKozPVYlkAjs5Uh5d0ZDaDbAC4Ipj/eNelOk=;
	h=To:Subject:From:Date:From;
	b=ewTuelUJdlp25ZcFFH6FFDOUe1kdkjX1RyR8zI+8o0lB4/1qhJq8JdnGoDfpUNhRo
	 rfqcbEr4kGGXIk+SVVYSfhv+pY988/2AC5kEfkGlK+IR9lFLWKZkdC3BFHPJKOuQ9K
	 sRPQ8pxOrtc9LQmZWh8beQBuho8eVafvFomnZmKZ7YwxeKDIXL0kb1SjmEbo3tCm+N
	 PB3IzDT6UQvdmz/dJIHxHJdkTWTvL2fNleIIIZUwx+emAYaPfCLu8baCsZW6+Y+wEx
	 WFitmM+q5WQmLaiYOTjWSRosTTE62DxMZoaLnNSi2VrfSQyYcyf+XlGRGg0xhAKGa3
	 Cgtdp2WrhhLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90506D3F06E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961023358.27840.13317748494613689779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee4b2ed33e229a2c6f5931e0cd4b8ad33801c276471d6be87dea4fe663de8a1
Date: Wed, 28 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769610233
