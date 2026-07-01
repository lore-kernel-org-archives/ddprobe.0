Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F91CAA7D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782880714; cv=none; b=hV6cxzK6AxjjVE+kihi3g9KtcaVfmWepHIJEcD/qshD1N9vnR6D1aVsQsHL/ibZHPIl7wWTwHF68sHU9w7JSUiqh9OefUFrqHSL/yYGr+zKbfjk1R7FUFHASD0lrfb/XowddeAAKavNLlFgs4DkICsbiWigm0UX1oVmMRi5dLEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782880714; c=relaxed/simple;
	bh=CVNR33wnoXMgWkeL6zOp3MF6p1erQgLhZP8dd9TV2q0=;
	h=To:Subject:From:Message-Id:Date; b=HBE0Pfskg7OtCQMbpvMHzxynvZyJtBMcdbAavwCzaJyRpODFWB/6mdI7WiGsN1bhWArBra44t/TtEYaLW+h6pWy3ARG9WugavHqeW6otipc4xjaeCgYWBcFPlCKbbkpdoOqFiCX4S30Sj7SHle5c9upNNekPQCJSzZ1xH+8e+rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWqZoaou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWqZoaou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B18C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782880713;
	bh=CVNR33wnoXMgWkeL6zOp3MF6p1erQgLhZP8dd9TV2q0=;
	h=To:Subject:From:Date:From;
	b=aWqZoaou4BLlT/Di3YUj37vsiI/QtLbTkXCIa4lPzU6wABhWZek25oyRQqmYqgNR8
	 HCRnljeFiR1ED6pQLIMXy94WALhSsOQiwj8EtMKVq6tpeJb3CnWRja7QXYMrcRvaa3
	 DbM47Nk3dGrpYSQsAUBikzlbLd3jr7GWOUz3bisfeo7ioMmZLZLCBdBarnwwGwXUIN
	 Bk79JWjwHjXV0jwEzq5CDptOMxN+GPfh7mlhzn4ZVv4ulNF584+jzRDp5ntFsoP/pk
	 GhghToJTZdtVmp4IStOJKD+eeH07JMKKUUzlhITfLEP67CZosghXU0oS51R5nfAUOC
	 4nZnuTn72JTUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD76C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288071368.22690.17974434219095468625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bf010f3715d105ba63e6dafc2c82cf00644e7cd4ea554ca47891dd5e5830bc
Date: Wed, 01 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782880713
