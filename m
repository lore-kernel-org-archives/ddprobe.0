Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E71CEEBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746599395; cv=none; b=kAjJgo+g7zZNUV25h5u8n5Vpm7dmshX1WHygEQ2UXdahAmCoW92e+Qx8LQFFqYCEQ2UVMPukmOH0K3ihRpS0RshPPJEwrJxJ8+/h4AcAISGEjDpoUG2zffGMHAAecjDnTNlq69ZavS2Dvxstt25U1TDIVvCoPqLHrn/NtRSU7aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746599395; c=relaxed/simple;
	bh=dCgCDagUDRMvFnlhjDyQHvd5OetpQdj5FhWcu1JAnAM=;
	h=To:Subject:From:Message-Id:Date; b=eWs/IxB8u+jJVD+FF1/5KI3Qt0CVXIE6casqMWmeYcqJ+fltzSnoVsyfHwTRGdD/ZCDTU5r6Rb8boqmEHNZoExQ8NstcjZ6BgBzQlR8yE4vd+eGPPBL1Xg9c9NAoFGEEqMgujZRyLjkmpwyCAeNCo/gsNTlkk77yxZfm2QpuhJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxeDs9gC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxeDs9gC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E970C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746599393;
	bh=dCgCDagUDRMvFnlhjDyQHvd5OetpQdj5FhWcu1JAnAM=;
	h=To:Subject:From:Date:From;
	b=hxeDs9gC9aI75GtgaXxmgkr6xm4+0UnMPsBKjN0dVIo0sHgkUoaC6d/XJyMjo9YpT
	 gDXC0NYB974IB+1ZwPe9itEGXg2nhXAVUBafoNoM16ACcvqSVumwzSrwTKLCP6nmPX
	 +ph2RU8JOKN7/GhwDk+RHulvWG5LHbVO9uNpolIMAHj+/cwIYTJjOlr8NEE9pubLIo
	 z31wPfEP//k8XLoTc7OciniYVEfBAtogs4qdt5NP9JOgLpX1S+kxWjFXF9wXpvpUoX
	 qxmptYERVwY29d+pCk0JEFHcOZByu0Ca8zTE0ohMJ5lHJ2YoD3HgEmDyt+9xMlU1JH
	 xf0D8K1g7g+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F806C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659939357.20630.1880207152836210850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8526af64dceb811560e9dffe75171e4edcae706e277b7f4681061059c264ad25
Date: Wed, 07 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746599393
