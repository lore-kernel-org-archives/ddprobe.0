Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3382218A6DB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755408594; cv=none; b=HmcvWgHzMkoQMUbTXIOEn1unbp/QMtKbT058A3V9Lof9Phg3JZkW3XnwuGFatHNXTeJ6e6NxlA+gpv0sP9AuERye2Tsb8mLV/pc3nmtcaE4UduwjFb608wB2rSRdymWuhRbxEFfd4qiIZYdcDnsJfeEoUA02cvY8OT1WHindszc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755408594; c=relaxed/simple;
	bh=w1DjQ3oMPX60WnU832cTzkVB7Sv2zNRgXOOvHzRuffo=;
	h=To:Subject:From:Message-Id:Date; b=THnDW0X1LCsRzx84PACoTcwXrI2b+c7O4vs8YYBZlF6BTeuaRVjOtuf/ec5rxV+8h1yDrg0ZJQxO/JvgjivUVnwFwlopLDFamAIdERk4vxYgSt3ayM9dqjtiLhNJ5sMnXEQMCqUpFGsE8jtUErQuBtcbSzGQrKX+iNrVwexs+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCPl0FnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCPl0FnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755408593;
	bh=w1DjQ3oMPX60WnU832cTzkVB7Sv2zNRgXOOvHzRuffo=;
	h=To:Subject:From:Date:From;
	b=vCPl0FnAhfHFXqfxzzBU8p/ZExcHQhqDMtmkD0NpNSq+aJhT7/pI0Rt/uB3v26tEm
	 WDY6T56BPG0F7KWP6H5Z//pTXAG58cu6flbstARiepIkZmIRQcpiz8p3pzwVlEtSq9
	 A0u6bxiH6BXl2EaPpJ84tMfAevQjQJ6GjSqAwTLbi8cHRJYNe7e2gUaijyZFcRTqTt
	 RBtyJT3IsnsYHeOBWeo/y2qHmFrjr6M84rFOrmWSXFTkgik0E4wuGWX8xM2KCqZc0K
	 Dqu9Ee+LY7cUJFJorUf1OZ+BeWsSnEjvJOIT7q58ErWiwRdDhI6Tsp8Fx/qUi4sir3
	 c6IT7uTT1clWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C53CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540859360.25519.16577033857460534565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5744186f4492ba7bee9b7a6966429c6f9147bc7d6b31bdc9f9d09f6814b7b0
Date: Sun, 17 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755408593
