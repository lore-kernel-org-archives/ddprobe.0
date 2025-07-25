Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADD25A326
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753474794; cv=none; b=I6cXCUUOgHgcD1T5vpf2OcZAWUDbp8d1LM+LoXcLYL9dcCYEBKG9F4BR3QovF/XiawqBiurBMyPv/ISK/Z0mcSy6OqlgFRZ13QVOQ8kemMHQooqabrkG2WG7F/glX92jcqijgQLYKYSx55WMoQpWRAJuXpajeXNGeJ8fntQzGPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753474794; c=relaxed/simple;
	bh=KupoZtEFjns/fzwpT2bn01Sf1K539ffi6gQW9k2hYOY=;
	h=To:Subject:From:Message-Id:Date; b=RFlEgOvYc7Ywb7j58xIlF6P2e2e7XHGq6cHUsCwyx89PstAxfCZkGdkZAcmWOYP/3HCCIU/Jop+b9KNVXVbppvW+wWTLOOPuE2kOepYmGDdXPYLdmqeUs2eV/BP0rKJLPO/t/Hf2ewi1KO90wGCOvAqJJAMazjg8wmncMTmHE6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGqylIji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGqylIji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B9BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753474793;
	bh=KupoZtEFjns/fzwpT2bn01Sf1K539ffi6gQW9k2hYOY=;
	h=To:Subject:From:Date:From;
	b=CGqylIjiC8saul6jN4v49P9hJh6287F1Myh/7L1s9mhoiit7T2A1jkmUN3nOPcPbk
	 6Dbap57K6uv96HT7jElY0Zybtu4sMY/P215wGmqxRDAOm10HdI7a1G/9rOEuc8inHq
	 sNRCTrHq8wGKFjyGy7FM7cOxwYxiNKybCIaSvVk2YnBfZlQsLlBimA2p5Yrf69wq8N
	 FOdkr88M+o71vM1h42AUdVkaZHVFlSMw5Hmt9zAq4xTb200NqX3J1Y07I38e6x0x2D
	 ZTeUeZWprDUk0vATl4ZEQiUgdAvPp2FH494tWWOf/ju8BPUA75AaE8iezPy4KdUqX/
	 sA4nr4sKqmkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F32C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347479358.31810.5996316645199143028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f84f352de608345dabb1f2d2ec24eed576b8b965e4c1144bb2da38bceaafcf3
Date: Fri, 25 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753474793
