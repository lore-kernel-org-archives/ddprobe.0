Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAFA381AFF
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778306254; cv=none; b=qFNrsebQM6eMXvtOCMLCaNaU/pp3+Z6Ym/74RvrhB72k0NJlychY03Alq5mvOxW1E/UMB3cfNLiWCZ7u1klE9P6FH3HvIliWDzZfWwev80PQRPooSYPfVQleWGQ2xnLLjibyvkT445+7oAXPBTLq5Ieors/QTjuGdwFbJmMAu8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778306254; c=relaxed/simple;
	bh=XQfwGhOjr7SrgxvfP9bOvHfLxdIPTYJ+bg9qx3FWb0g=;
	h=To:Subject:From:Message-Id:Date; b=j4PUKhQVuxY5CbIvDXbFIUWVVrkO5hgLOxnpIZ8VDy47pyicDdPNMsM1kuy+U5ZgLgWq4MMK7WWgVJMVV5BWT0EkCd7wzSt4E63cIsWCDTYKekd6bRolPzvxOw8jPLx/lkg97unPqVbu+3Jcj1CKDSgpD1O5WGDEBzJ7U70BWJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXq0nIpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXq0nIpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6D1C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778306253;
	bh=XQfwGhOjr7SrgxvfP9bOvHfLxdIPTYJ+bg9qx3FWb0g=;
	h=To:Subject:From:Date:From;
	b=WXq0nIpCA6REKiKo4s79GiViUsPlLEUv7NsW/t+gM+6K4fHKIyi935FFFe0uj1HNK
	 tL7FQ1pWs0N6n39MoR1VFes3IgVfCyRWgeeVe/2X0I3CJjI0YwuvBGXS2A+K5j38DZ
	 A2KQOzaUZ71UxtQ0gbDnjghHvC55B/2iJSbdli1EB7nFn3WO8p5/loN77hkO2l2VaB
	 dEqX7f56mYYDk6TvXaejJVJIi8lVUq/sI8IK6VrTswesEEVOSPJ3uGVt5wihJBklzz
	 fBw7sdt26vavSHBHpo9RqleW9jt67eYJHyAnrB6QGmJZRVGnsstALNUMQ7X9BwT1Ln
	 jXIYVcnefJ4UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE73ECD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830625370.25378.13205825916350334937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07790739f6e0ef98cd0018306a3b51517d6cc93e7e90b80e59b99450ae0c7a6
Date: Sat, 09 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778306253
