Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541AD2AE95
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745101194; cv=none; b=YVKSCYyuJILqGLyT/mLMwJP5jbWj0NnOtI7u0J/N7wqRWliiGWtxf5Zlv7ahZ0lhg2UTQOu8O77suJ0uuKvmTx22GkKDCn/9TigfB9xNRYN/mBaIHBXZD7P7ZOFbY3iL3KOOmmdmWyjY/Fx2FGGsJQZanaLcwVQJFrdjafwRCOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745101194; c=relaxed/simple;
	bh=OI9IDIPMCePkabrN/JTVzhQMmQsRDKrB8BkKgQiOU3g=;
	h=To:Subject:From:Message-Id:Date; b=KNw9zqKzf1+o6Du4DjITlEFdrBCRCRY+cjXzE4ZcBVDWC/VTOcnEmOAEr0UdHwPuDmuQray2+v5CqybD4T39SXNoao+Ahqz/JqeXraNIYp61RJJP08rZkEUnFj6y1DOAKpCZ84eoXZpwPjsizgFhRSCjOloUmPJSckgI4kouSYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXZgbQJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXZgbQJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB71BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745101193;
	bh=OI9IDIPMCePkabrN/JTVzhQMmQsRDKrB8BkKgQiOU3g=;
	h=To:Subject:From:Date:From;
	b=DXZgbQJ1pihUYEPntLbgb+ju6cUUZUNAMAxeHR2mBa5T7EkszC1fQx5PnzBRCpXZi
	 tLdu7ffmV6yF6FLUzJwj0Uo7uYWc0sPng2s6x2C8nHk7uBnOow34aH5sNZhAh1Zf4/
	 yQlILRA6JPkh9qvfG14AKoQZ8S0XwOkYvGW1U3Oe5fpxzsJrK34X45C3K+gn8iOksS
	 8DGajk5eJ83QytgmlLeBmy4XZ3heAn1Twe/X1RIt4BWP+EXgqjQgtWKbI0Du4LHO2C
	 Oms1sysnV99orkdvIc1gcPeSIPu3uz0CvkIwWyi8opgPdrNMctnhJx4uZxLCiZAlRf
	 kb/kDUrW0AbcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EAC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510119358.3594.14053658941772050030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc74fe501d9f20bf7a8ff92fdbbb63344c2a23e6c845cdfc2a9907f23a64f428
Date: Sat, 19 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745101193
