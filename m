Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A0A202F70
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759186794; cv=none; b=R4zHbGBpcSqxiWlPvZ72XjQIVkjtBGDj8qd4m/psNIL+eiiNSHE/vsqq6ryMFNaaEIx07HGR9EajvAKUA1OrGMM6862AiGGTWY4RLrQdo/c3eZ3/0OjQfJfCRXjEv6hIETRaW1a7lJ/tMqD2pXBY7PgjP52xgi/2DWwRn/W6c54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759186794; c=relaxed/simple;
	bh=btZC7dTP8JZDtt/x4rl3BhkiNJ+e5nYCMX3hmfr5aTY=;
	h=To:Subject:From:Message-Id:Date; b=pw+0KdOyGZrHa4nHm3W7TdqPU9I+9Et3SVXq/8nH2NBSk9nxG4JAqKY8H+oPwzfCNmnXx40GvNgMj54aZgrTDdSDVw7wSXRk7ssrN+4HEfXYhEaa8wohYZCSYNzY+Q4RsT1o8avPwDRRbJkY4WQv0AR9dLXhUlNYJN4zaeWmgsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVwHkibg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVwHkibg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE7CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759186793;
	bh=btZC7dTP8JZDtt/x4rl3BhkiNJ+e5nYCMX3hmfr5aTY=;
	h=To:Subject:From:Date:From;
	b=SVwHkibgqS/D65E/tSjtYl1eKRgPPFOQcXA8J6m8Fhwe1Rzrkgxirp5tWsGsgM1ZU
	 rjskVhs6+zoKiC9X+KII3Jp0XpJhd60R+ItnCMoO/L1HcMLt1MeTBTA9Bbcw4gcPae
	 HUqTD3nlxyAg1XSlXnJMsgroHu8B1sBk0PeIXn4LREmuwHfyzY+JoJNz6s6xzhMyfy
	 AUklDTIfi9F2TkdBnUlmgDdPpa2gVMucx4ThUmsIE3+m7IfVv0Sal2LCjwfTGV1DMD
	 92SLAUYYJ9CBvysridixrLGO71U3BJHLuHTxFL5ANHEzGWjRZ+JAdzHPHIr5v+Zdxg
	 zAw+IWLF5hyOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01BFCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918679363.23883.7092200500167358150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d11330b5e7a59fb0adc1d313d4ba423edd74843464ecb66fc95ceb797b69a83
Date: Mon, 29 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759186793
