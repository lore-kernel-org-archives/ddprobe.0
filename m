Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DC74A01
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724385354; cv=none; b=r8sk1W86DE8OlXX8ZNTjCm0VsToicscn1jSVIKWB4VQaE1Lfzok6MoHfiU59pTOJ3lAHiSKSL0DWWuSEsKaxuepqUqLSwWcutZeukztlXNC2LKi6BZfZKMbNF4+npmlBu9iCaVwv1fFBHp1Xdhsh6+DY4cruTgSVlKuIrfWV1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724385354; c=relaxed/simple;
	bh=nd37+vBYnQDCOdoOHJwmr18r3gRpWMy0tlkWaihu/lY=;
	h=To:Subject:From:Message-Id:Date; b=Ndj4ZIefGNhzNkbaHA3u5UG/21TMTERD9VTxFAAzdzWZJwKRihbtdI261neUlZ6EtdxeBCDmNXVXyYLsADQCONyeahT5AZhUp8hWoDt3zPvfBk4w49MT/d1eK07Z65zcEtJ4Htt6Op8KLyDrVGWgxrnIHPJqs03MI7hskABLnT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=He0sviyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="He0sviyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7365C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724385353;
	bh=nd37+vBYnQDCOdoOHJwmr18r3gRpWMy0tlkWaihu/lY=;
	h=To:Subject:From:Date:From;
	b=He0sviyI7DAQPNEbs0Y4ZpWac1+1Mr5vo0xyfkz17U6XBdezDsPHmSpE5tH/6y14R
	 0UsN76S17boDXTYNaVBnJDnO/HEJeMKvA4g0HSwYHKf6OsJb1nXYAHYy9qPz6JqluK
	 GD1Uv8+BwuTAWDXi1Z7kWhbammhQ/JcAIV1g2Cbj8bzWeV/oPRCC5IJjk1P5vL67jd
	 Y+85Ryt8lHKjskw8jrpHDU8aaKg6CYxVDnMVf5lqiniE55ifn5VAoPvqAAwW9zKq/6
	 Y46xmV5Aw039G3Nul5ZS9xdcJHVakQrEzi+12+qSgJzwuRiytdJmQS6z2qevUk7Gfd
	 N7T6qc/arKBsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43B5C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438535365.28530.9818774166713268370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b3cd1a26397bcc74c293d4ffec75c74d165352647e84fc5e8f5ea00cd359a0
Date: Fri, 23 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724385353
