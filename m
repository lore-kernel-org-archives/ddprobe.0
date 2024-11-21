Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF9583CDA
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732226154; cv=none; b=pn8uCOlPcMc5gswCrCO0XE6scHwTghxXXlRe8u0r+2FWRXbmvD0n5NLvdA0QSlCPGN6nE1HQzPR+C3AzJlSJtHdcnHGpWqDtcsljpg3X7S3j76hspQr7/53d2oePV75KnprCusuXongxnbefz54PR+in3cFvrt36ms+Sb0rdw0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732226154; c=relaxed/simple;
	bh=xDklDwjaex7Q0dtqcESqr2/v6z5hCIY4Li8NSVECApM=;
	h=To:Subject:From:Message-Id:Date; b=YaYwj0oA4oWO2qeXhWOE4QpoBQ4Wf2379ZyhlR3yYtK8NSEEhe2BKG+i37Xvpj0hCXAIZvfwWLmxrpJDe4BpM/2o1pZK9gFMECf6XCZ6DkHCYRsWB9W/Xpf1coSPeF5U2lpmGUy1ZEMajS2am+6qjtZZMFvgEPNhSimrlqB+ROA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2sMwOY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2sMwOY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B757AC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732226153;
	bh=xDklDwjaex7Q0dtqcESqr2/v6z5hCIY4Li8NSVECApM=;
	h=To:Subject:From:Date:From;
	b=Z2sMwOY/4OIElDpW3H7jeaZmRF16a9rup+nbTq07p77AcTy4x4nleNmpMuz2cJGc3
	 TvNEOeDm1uNrsCOCWjz2QVvBoPgVCKvkzu+N6u+ZJfphdOSqzv65n+y9qyKPqaHyuB
	 SametBJT+frqD5P92iVjAvzrfyxdZHGqnRxh8FZYKDXkghv7X1g6xL9Al9FN0cJa8f
	 9obNVIkw7jcPvTdWlcASzczWiYtDCG5LH9rPTJ8VyE1ExWbZ/tBqbQ+W0nYykZ8t2B
	 BAk2SeN4LSesh6bgPdhBzimD4JxOsbUuvlKMmXODTRUgpZo1SroWy6/yweBJcNwl2A
	 0959AV92Soe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F5E64035
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222615359.3530.13005639670090941897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5660810449f66ad3aedd99ecae269645badee0914556c6abed9c17ec4d4d46e3
Date: Thu, 21 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732226153
