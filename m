Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D07C383313
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781196394; cv=none; b=afkzinEpxcNGNfpEqk/VYjfKCb8mag9YsV0EkiqYo0dJPmiW+IysXLlLtyEdniHvpSB0X1yO5KZNQLPL9WU309ZpQPwpZs0vgM4YhsAbSKfJuUzwYUByzkmEIINAyKqIYlmyjgj2uQMsBW3BExOpJra9QCZXsqMFkBPfDxZYZPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781196394; c=relaxed/simple;
	bh=s5O5urxBQoOhM7csbez8pXt5FwKNQ8pl9/NT2s8WbiA=;
	h=To:Subject:From:Message-Id:Date; b=KgK04iNBpQ4lkWepyCjLGTIDTsSwfjKOg19N/IQIR28dixzGXh0/rFAsgxipMcn+WcGM5LOpuUcGahwNbHjx1nni4RmOs1KmHt3m12s9O4HR4yxX1SG/3s34OdnWldZmAVF3WKBUUiQpsblMU7npL1X4cghQapsw9iPCAanJJqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzgkfVDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzgkfVDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD954C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781196393;
	bh=s5O5urxBQoOhM7csbez8pXt5FwKNQ8pl9/NT2s8WbiA=;
	h=To:Subject:From:Date:From;
	b=jzgkfVDjFVGmXxNISPqpSSPSot6MpQbY7UoEc4cNfK7Fuz9HlC5PxDVnJPi6jfED1
	 0CXVzxVeH+nLVPqJG3Ia/WZ+KNnLD+Cl8bhNo/1kTnTUCO5QOk54SqXofJ2eN6UeKd
	 Or2pthHw2s3D+CawQ8D5zKow2iT9hhPD8sWHaT9C+TZ1/goQHHeOj4DgoX6VHdJx+U
	 H84gDhnHVjPlri3gREdoC16O47sZnd2+pk8LxBlJfvz9ukXtfaefcXxdB5nnr46454
	 vUB3yqPT5KDidhI8KIlxMIBfWxsvqNzksLwasd8k8AnFBERQWTHeqolFiyCcEU28s7
	 5UgsOXtWkbDqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00C1CD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119639370.2062.11313895328167935545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316fa15e0dcd5170ee5c4885725a0cbce197dcbbeb3cecf88f877dc15d8ae87b
Date: Thu, 11 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781196393
