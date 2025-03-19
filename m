Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D87211463
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742369994; cv=none; b=ne+kTr0Qkl4fqS2RmQDhI8Re+AcvX74AmR0kyR+mClrjcZje9wBwNta+3JEE1pgE9XdmKUl4mkCCP4zSj94VrvPV+8hm6hqmgMMu+LVXl0BezK372nnZfqd8611ULVlrG0Z/BxUOjuNrn1vIY/uldJCpByKpNtBwV25P/+wWAN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742369994; c=relaxed/simple;
	bh=NpkVulvokFSDyO/1gU80YBEiI6U/x00OCkkNvzYEdlE=;
	h=To:Subject:From:Message-Id:Date; b=dnTpRSMaOM1LNSJ1vXb3g2Lh3xj2pYKCLpqY1Iahz3sQn9TE2sTk8PSEiHhm6YTlRPMywVv46JmNCZeZSpL8ZXd/rsyWQRvajV9u9gAk4losLpyo85Kg9fVZ/DnVR1tW+jv+nuTy7Lm8MA7j6x0vVOVE7MeVWV1XPx4o6HnOp7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt59KRdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt59KRdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DB7C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742369993;
	bh=NpkVulvokFSDyO/1gU80YBEiI6U/x00OCkkNvzYEdlE=;
	h=To:Subject:From:Date:From;
	b=Qt59KRdwvDINsszi3NyquiT1yY3o8D6LdN2jXOiCnEZk3ps3ies9chxdU4XyWs4MX
	 msFoaFnpVKF0LoxVOjGOFpeYzqUwfjth0KUxbnwPTatkZwB8lT9jSTepGWJ5jCKFLA
	 JaudV/X6CHZBoFOI/CU0Moya8sZ7uRgm7RxTT71RXWXg8DQB9WMUAcqTW2bfET02M4
	 Qy4RMv8pZK7e/7HNgczKUUz/xCIquH20NVxU+eXpUNRHc8r31IkgUgc17tkstWox4E
	 8dXNWD7kqkd33zl4toBidoRc2cvDPZbvbA3hVEB9UwR+VdCuVwMAW9JpudW4mvBCo8
	 285n4Am1ZJWsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B2C28B28
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236999360.16634.1784908500954272448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88c8b3ec4e4a003497c5e0ad5767170e144bd3bc74a4686ce421dd4ff3d5b81
Date: Wed, 19 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742369993
