Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6BD946C
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759598394; cv=none; b=Ojvn+QJwmvs0VapaIAI/gNjQGRzGDmhQPC0ptFCF4qCj3xvRIWIQPEffuWC/0J2HWGdN+IVWTrGfqKKZm+rto0Gfd9j5Rvo+C9x3KGtKTfMKc++8pWDP1TWo2sl/5SQ2px/MAGNZDZxO7VOFW8lDf9t18HPLIwNIUOLgYJrN3T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759598394; c=relaxed/simple;
	bh=VMI4ORAziL7G0jtsPsoJk4GHYxK9lQpMegeIK+SqS2M=;
	h=To:Subject:From:Message-Id:Date; b=ntMuOMMDCeEA1fDn4AbmO9/ZNv1aiclm8nbq9rv9Txu0TN8Cj3NwPy2c9pPLL4YshxrUEjXHicw0FX1sn4gf7LikMtLiF73MD7rnKmlQ4TTyK+cBSodnopQyI3WKeUC3aPD0BKzFtfSb0+Iqy0cf/Vj2o92kx7H29/0rFJTtz5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAvAfcpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAvAfcpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC01C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759598393;
	bh=VMI4ORAziL7G0jtsPsoJk4GHYxK9lQpMegeIK+SqS2M=;
	h=To:Subject:From:Date:From;
	b=lAvAfcpwvxWH3D7F6VHpzq3KHW9WSyxrlGDBgoMqfq5zjWH0NcwsARvRSQKRVlD9p
	 ys61SkBToYUinTG8LO08LQ2kS4KmZtO7gYJGo1Wl6+edbfjNeUVSVfjQ1G6YlJfgj8
	 f0H2X/++dlEhRbc8ocqK/jRCpO+MwB3cFqDSDVY7malH/gJ+oLrkD5i9aMOTpPQPgS
	 ckiEs9bwLa1Zm02Ntbzk6I4Zo/ZsMmQ33fV3HSvrCp2XaXjkshZUU4UfASYKs494Ko
	 Hsh6fsmNGN6EI3pq9vNwykU23LUdGWuwzlmSofT/1IHj9LsBe+P7h7GWLhj4tx8dH3
	 rbJM0RLAIbMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D01CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959839357.21218.16972972961835107343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0615c05ed6d5eccb80c8ccfed950bf3d56e7fb26e8bddbf1dea27ed6eb2ccf
Date: Sat, 04 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759598393
