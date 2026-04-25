Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC16E40DFA9
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777108654; cv=none; b=ejBffKk0PEBthh6myUaJe/FFGdtC1DGah6p/CWjs0stpWolLtUkA86GUnHl048lwpqvQSotVfn+lO3TiS4q0D/ziWstgPyGbxxle16Kobwj+HIq5nv/8osZ+MKp2hIXrtuhphAFSDqlJdEmd6hqlkcZmKT8JgVdG0Zn70ikRcZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777108654; c=relaxed/simple;
	bh=I/xhZ+WvVX4f3kAOzYwtuuHesrKubXVV6/MeztQPwvs=;
	h=To:Subject:From:Message-Id:Date; b=d3ikCyYLXXPyaL0IgOk8ZdeiOZaAcvfD3uYLrF6Pwl5olZEx4hbG5APUBj9+HL8NagCxAWYme8vKHHLU3dAQIlZTbj7bDwQAHRCVthnvMjgHmtPMBdobjZ49vJphm7qNFWm9AxMlYxtDmdVhvNmnKFF+i+VdXVY928bH4aUpOY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSsjetPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSsjetPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0442C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777108653;
	bh=I/xhZ+WvVX4f3kAOzYwtuuHesrKubXVV6/MeztQPwvs=;
	h=To:Subject:From:Date:From;
	b=OSsjetPg49wxb19jQjHXxSuI0yOmwdCRb3QRTAU+0qxVxCr9gceN1m6KLHtbBtiAx
	 ia1o6QMMv11fAZ2CBkgfoYxorqAM1RKRxvdpPSBsJrJdIomsv5aHLhCjHbo84Ga3oz
	 XBmy/EO6HZBv4mmugVgW3+hzgH8SmLOSiFuvHuwaG+Sg990tsfAFa7Cm6yz2e3I4gk
	 lysmRt80qlAuvsf20P4CV++cwsIdRwwcmiizqc+5iPfbJXyJQEtIGY8KPv/ro65ujR
	 aGOZ058j3O2t0LrdmHZ73TvxceZ+89FpwQmwL7EaCn0K2mtDIpJK8IaraYXI7DaXO7
	 nEkhNDg5ZTHfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC1FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710865368.30798.16294664909532942130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55de4bc5f185f35cb3e393c28ada2edc2e3a7a7ff840540cb7d92ec65d39781
Date: Sat, 25 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777108653
