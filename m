Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0FC38FA6
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718445503; cv=none; b=VpowSIV7+3Wyfql2JfgxzztYTZ46KaQnuW4J6BYQQ0pZGK6A7V0XFhyc807W77IJqQJvHtMm62dXVXkDCfMQEzi9rmc4um4X5eLouAVxCnEsaYxulC6UtZvsa74MjfdFA2aru5gstwLhS/hc1AKx1LMpKCsRSrR3s5gz5r8mk0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718445503; c=relaxed/simple;
	bh=SVfHmiDyjzEYsHVIBjx6Nejo8ZzEKGwXcGfYAxSkVt0=;
	h=To:Subject:From:Message-Id:Date; b=QQWi/pEKsPEzX39nUAiKHmra5kBE69PLQzndM3ZybPYZTgJ4iUZaKjp01iqizTTRDDczEa9htYPx66yZvgj3qiaA7gInE8+x8JwrREQgb3nvCTD4JFWryHQACF401cqPRlyDaFGRGFu1tRJGczO76UXR8kIVPHqcd7o6AEtZF2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvkXdMea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvkXdMea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94D3C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718445502;
	bh=SVfHmiDyjzEYsHVIBjx6Nejo8ZzEKGwXcGfYAxSkVt0=;
	h=To:Subject:From:Date:From;
	b=NvkXdMeaDmIu1Cu21NUaJPcXHU0vtVjd6s5H7bxQLXykroxo5U2sivDGPsUBKkPRM
	 scuZVknKeKxSLyFJeWBOJjji1Jfaz30+YLu95K40HDeSYr42BRaguGTzH6mw1FIjNq
	 9KpPi1BYooMVFFY+OCxOSb7BjrpPXtqs6UG32tyCb4Jb03DHAmp8sSyBRSGrsKpc06
	 PSnCtN5bNSI5Cvf1nKVM52iNtem6Fjx0y/YTn2xRfiBHDkxemHrwhlVlry9SQXIrxo
	 Ow6KHWuxCfy3kWDNnbrbXPAQeeHK1yNfGKKtkn6hx51MPPONnJHeuZtyDP8KNI0XkH
	 08TBNA9iJmPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A3AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 09:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844550275.7749.17223882859842269756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3092bd3083df8b066532056121e6f2d98f9afe3655b64ffec8d1cc9d755c2133
Date: Sat, 15 Jun 2024 09:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718445502
