Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DBF1FE44A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790830234; cv=none; b=tKDUsuFLopjlQgpXQPskdCaVUpFzH6eEVvPhGLt4gu1AOGnsbX1EB34U2rwb0Dqa+jmaGL0KYpcEho8hAP/mjoV5kOoSzdIBFe9165Fctui/nDhAf9rOIVV9hbi2DMtMFxOwnZVatBCpQhLlXBFYnaPhD+okyhPnyI0/5NswVxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790830234; c=relaxed/simple;
	bh=PIYL7r1SG1a/CpfRVrXEtPja+pC5w1FZAsclbsAKsUA=;
	h=To:Subject:From:Message-Id:Date; b=IA1VWI9K0fNyyZLevbaBjuBO+8i3jWiOHrPYmmJB4AJq2HYUGe9trl8DvmNr+4+DdCDBAMPiNmTMMnZpQB1swH24/f0h8K0v/jQV59//+nIBB78XDe5EQyA/NmWXsfCgQ/E6g5W95Kg0TtFbmKX0p3aP6Zg+J6t6jEoKqhSg/X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuvXBtOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuvXBtOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2190C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790830233;
	bh=PIYL7r1SG1a/CpfRVrXEtPja+pC5w1FZAsclbsAKsUA=;
	h=To:Subject:From:Date:From;
	b=EuvXBtOGOpwRaeEhmDCG2N83vcVALd4nnQYo9FckN9RzyXiHIKUs38OO69Hk32Pb0
	 ZVMjcroWJUsE248I/bru6EoIZ+gD/GCckUL9+4CKkcyt4nc+lh4liVgxag4H6n8KXN
	 gNa9HkOjOYykFt5yeoN/FqGSbOxAhp5r+/gJlmfY0/FFQH6B/EOg3CZ122b7gP9TUb
	 CwuKlqcMDnWKAmDdeb8bENjLHN1VDbSJykdiq/Sp2pDOc4n0ePfXNXaPZ7u/IwAOeH
	 6MTpRKXQ5jQd3M6qaJnAMiHXGlu8ARiYarvKwOQqqhEPxkECp8wXplddYZ/J4wrFqo
	 2NYD84eLLPgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACACA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083023368.13708.3089894273365393345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5bc4a6d1a44aae76d7342adf8449c0a9ec87b2af36da6a4cf97d686dbb9866
Date: Thu, 01 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790830233
