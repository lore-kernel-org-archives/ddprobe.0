Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210A9284B25
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764793974; cv=none; b=Pyn28uxXVCCACPDhKRYuC6Spegdk9GB6cYWgAtIWRgzRNtWBTpSHzppqIhii9TUAQ2ZEyeKBDCC7I+MhQ41BwRJ+XjMTnyHl3IkpKlyDhK6s698SwE97SuIF4Fhrkh/jBjIT5138wblR8JojwN2R0elzN4JCtgmWfY05+ItkDTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764793974; c=relaxed/simple;
	bh=ckL057i8DSep6uUG4KeUxhYczSsxdqeF06ICq2lJaeQ=;
	h=To:Subject:From:Message-Id:Date; b=KU2RUJs4AtYkRjPNz1yL/aqs3po0sRaQ9TRKzsxC71qeamoQzGvkf02cOwxmIeN3xN628Uw/Vl7cirbq944/MbySD0qCh4rU0+uP4eHGGVrvdV4zmCvBWwmAn1h81QOMlbLJ65rMKMncfFOrfTsZ3I0hPC8txXMzwfwwg3gZJwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8o1LVa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8o1LVa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764793973;
	bh=ckL057i8DSep6uUG4KeUxhYczSsxdqeF06ICq2lJaeQ=;
	h=To:Subject:From:Date:From;
	b=s8o1LVa2Zit3IzSWYk5v3UQ6vOhdMuSnhAH9U0s/z3PcTVvM9aLjj7ZldAMK9mqtc
	 hlkCcVmVXpPOYkgPZSIy+hS1dLHuNG0CRVAeXuGPFOVKfaQsRZr3fh/YMgsr5MjhGY
	 G6NTU8M3f+1dfwqiKbh6PU6JDKwfPRqY4OGQGuy/XAQN4EJmVlq1VBpyDYV4ZGXBIR
	 IWHcM61JeNYnEn/JlPFNN67L2Ik9Pcq1uHp/O/lAPmqVG4VPCI3cCpK7aLkisFMZLj
	 yj/1gtgnWNAZnWRj3xTbddkteA4k7T0WNTjKwplOLDEDUN63F1Q/YtnsQ4CAvRZeHk
	 lVT95JaAJP6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991B7D1BDDB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479397361.2550.10363167005933323197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d4d87fc6d0c94dd52498be7354365032a0cca363e9b57caaadc0ed177ccbd7
Date: Wed, 03 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764793973
