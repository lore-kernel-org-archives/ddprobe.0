Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8A01885A5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767335634; cv=none; b=d7pIYTNDL5c3X6OOdMhepqekB4azD9E8R4kffktwCLzLtVitex57C28Ee8tSIrrdch7mt08eBWmKkKj5cwOkqh2qOeiLmfgcQKGEIRpin7kCgIsn3TTuypvTZvIuNlzMaam/rCsFk6YTQrlzINX9xBzBvltLMW9iBAkrzcU4RtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767335634; c=relaxed/simple;
	bh=oFw328DeFiwek602d00AdtdLQYqH48EMudg/Kua5QMY=;
	h=To:Subject:From:Message-Id:Date; b=MdBlJMpucgcm6RRRAOhsLBremeGUgOIqmQUeI5qcB5C/LCljfpx7IdmJXYFSrkdWoMPdFCm26gWAOyc9F+iTEHFg8Z9WYk6XVriYDe4Fl5NscPRwjXC/rqE7iOj5D43KKCrLcZhYGyWsSmhI51pfuy8lYMFHipeZ9AHY43jcw18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHDiCqQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHDiCqQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A51C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767335633;
	bh=oFw328DeFiwek602d00AdtdLQYqH48EMudg/Kua5QMY=;
	h=To:Subject:From:Date:From;
	b=fHDiCqQgtTUpr1J2pXvdjuT9GwIyrHg2ee1XZKVGFIAMtCsy3HieFnkzM2rOD+l5r
	 yviIlF8kNSFhBzSb18giTVucvKlDdxr+OcyB7Xvn+uk+OUGm+Byq4yIebb+s6iUV8k
	 1VrTp4UBjYc8BehR0yF5NTuAz2/cy/iDitmSeU0uv3OifvFtgRTgFkm+XBOXSftFej
	 erUmI3m42ZKJUqhMQZAAhG2ANBgg7wv07cpptUVWaRHBGCSsyc4nUKDz2GlxbzW1AU
	 emYuMNByR77S31nC8sq4fIfdTylIYMEccVDjOnIQ9eTe/Y1E7whOc2SI+0tg7r2mlr
	 f4Ys/tYDGwjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9405AEEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733563357.26013.15745029642215473078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8161c08f152479cbb0657e9b0156f42f322d9f99585f26d08c49b268e5ee120
Date: Fri, 02 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767335633
