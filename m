Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68287625
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713617423; cv=none; b=XC+9gZGTjiAXUHimPqrFd8dFwr4iY7bpsX1xH/RIXg9RqhZUKKvGETTfS4cgrSuoXBnFVUnWg04bAARzXzVS6piJp7F6jCFRhxCMd44nhUb/m5hCULdRRiUTnZY9pTcS4E61WjldPZO+rK0jzTWhZV1wmDe47lPUuhcnRUdHMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713617423; c=relaxed/simple;
	bh=qiX5+lD65TRY26vB04DSYE0aEERtv9JbZZlY4jVFOSM=;
	h=To:Subject:From:Message-Id:Date; b=Fw5OLPpssus0NcxFRIJl7EiYjYOS02ti5Hy8/geoifHvTG9vFPQNCiDehJlOBdxVp8TeUNsDX/whomyt1OGQZRj8Hd+1mKyvCasgA1+/s24YB69dDM9QDTi90MXBPmfO3zmipHPg3LVjet03qr+zzY5ZI1a9bOzTKAeN59hMMbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp5DTXdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp5DTXdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC978C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713617422;
	bh=qiX5+lD65TRY26vB04DSYE0aEERtv9JbZZlY4jVFOSM=;
	h=To:Subject:From:Date:From;
	b=hp5DTXddsvy0hgU28okKyTMrdr+LyhA+CaxpT6vPZyC+g46rAy9u+Xjw7JKvEhst5
	 qBsSQRjqFuDVo1cDjyGGUTF+meJN8cbqPV/WFL8ltrVArt4Ul2asjeRtwrf5WQy5Ca
	 UwIg5U4cM75IzhXrjeaQVHAAt0eAN9weNuFzgHLPDX1Gqa52qWh3J8Zdo843R1o0h9
	 w+fBhk5e2BnqJ5Q/K3jd7x15YWzWi4jErnglLZeTUSQwqHDXck9G81BYQDpt6YjeKC
	 incH2JH+L1PFsymQUTmDsKY/KDieY04rRuH6n5BWBedAcKhGRYhGcD2x4OOBA8pZiG
	 AznEL3lhMvwEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7064C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361742277.20167.14847038512109754765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f405c9671110f3b30fc8edb0b869c47235f4b81c6e37f523e7e42cfc5e197c7e
Date: Sat, 20 Apr 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713617422
