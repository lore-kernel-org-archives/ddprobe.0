Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5A11DA0E1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785615634; cv=none; b=Rip11KTYqm6Ury3f2C0fmSbqDIGOLs7D4jaIwkaK4AdwTJlgxxRKvVpiZD53KLSElq6nUwXWCwfy3jSoW/yMDy3lroeCAVYR0aCSUmzP32c2W3FAsnTzmn2U/CucnjU/pNdSw9ZMEHlbtEZAQhGnphiKE/vey/qUo0VDPwY7wRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785615634; c=relaxed/simple;
	bh=+bPqHgyKlTL5/bV3aijyuCkCuXfsSAs71ECPmcI0OxA=;
	h=To:Subject:From:Message-Id:Date; b=rnI/bdy58+1kug7LyD/6rX9kw9mVYNYQ0mTF+qP3LF9DXPKlAlfvB6X6PFfZPub5W70fz6ETHTP6mSHIFPOTjB5AjBgxwb/QkXoxx7jibrzFtFnL/QvUmBeF7wgkOCyUIvIhwXfxAd25qxxLMoNXpQf0MSYdzTsiDQT7f/gbTr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH83kW7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH83kW7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21F4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785615633;
	bh=+bPqHgyKlTL5/bV3aijyuCkCuXfsSAs71ECPmcI0OxA=;
	h=To:Subject:From:Date:From;
	b=jH83kW7coGbKiKX3mr9uNzwUBOnSnx+55HigKWayayPWbcF9zrNEyu8RZmFP2sN4S
	 lliQNsxE5jy7sPZCxGwEnA+HTlGdCp+WdXDg8cUKGceO7gVcGWak4/Tkj4djEnRGbc
	 ZwqfyvaRtir/L8Gth6hxHw7bToseYbx9AFM0vd99uwllADQhMdT+NJ1T76cIXTkzkC
	 nekSN6uHX5fFTTdfBBIagRbj29YhsDLpdqpA8hJcixTWtkt84AQyM3EsevRtpvTwU7
	 KgbUascehTBMrdXmhHyXn/m4zmzGud4t44+uSQHk5MdW2ygNPLXV70JV9lefHb/PQS
	 ic/4nDJIgF5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F8C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561563370.14900.15367100698640328732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b352c3c87c6448d3825265f4531055b8e692ca8375dd095a16312ff7b43e19a2
Date: Sat, 01 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785615633
