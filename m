Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5488B47A53
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720950623; cv=none; b=KWVMo+Bx+O4JvDxeeXzdSMFEHAOJ8NN9DQLkUYmitGbC0Zpe4rs9u+bBvxrfwTaaIq/IwNjrjCx2XAm/nVK8F4qhZ+IqLaAlgxsDkauU4NoAoaOF7EjUOiW9GMZjM9jg0GLNPhHQXziOqd6JpqCF0urkELSL2cGJ1BlUfhL6ZOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720950623; c=relaxed/simple;
	bh=ExnW6q2uPs6EmuCId8F0Jmwl+R4WSVObELS3Z15PMwc=;
	h=To:Subject:From:Message-Id:Date; b=AhhfskIRJSfyrHYLu/tirB3R0yjm7Xjg0G11a9GuyP/hj/RD1hHxT1NP0VGkiti9RexmEc5QlhUpSAyxaCFPMdgCESdg5LIsh2/UBYQHINY7ZNwA/XvdSPeiTbi/8tWh4b+MGYKMxE8srrGfCqiDQM/e8pm2mPClk052wdAB60Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHKNnEmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHKNnEmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77DBC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720950622;
	bh=ExnW6q2uPs6EmuCId8F0Jmwl+R4WSVObELS3Z15PMwc=;
	h=To:Subject:From:Date:From;
	b=SHKNnEmbARpS6WRlsyi4xCFuFUT9rP3UHiSjBLqGfl9luh9fU9YjiGiFasJE86j58
	 7rUlsir7hzZKmlGaa1gGs6+nj1xojKBbUCmA1jo+ztQQIbQKvUVygvJt0gSa9MKy2C
	 gG5LJ6jsFSqErBcGLzCkPdtvlK9hxt0wYfE+zimhljHoyU0iT4Cvj13pxaF4fuSKGN
	 bW9KvNRcPl7IWeyb3sB7v5gZsei9PdL1z3zmIthNWRTCaLaB0pj7PnhbEoPUJYxMd9
	 mXo7uzoCAY3p+SeRvgQJp4/BvPAvrQ+a6EH7DANbNz/ivxOKD0unmAxWHFhes/Q77I
	 +176AF0sgTqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE95C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095062276.14787.8177771292490579574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b1ffab8757fc1ae98efc10467c3e0bee3598f236112f89c6024a969b1b8b85
Date: Sun, 14 Jul 2024 09:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720950622
