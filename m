Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BAF34D4DE
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792121434; cv=none; b=jGD3+pZreg2bFlQGsFcU/m4S8HEaltoU4eczU0NMLUoBnCkpfEHAmqRhO5kik7l0r+Ryrtsox8EZN0i/q9qPgyohHqWsMV5XmmXkkWFYl/vQZ23uQj0QamNQAH2DTWV4ANrkpOe5+xDqrLUgowow0Ul8KTsCynk3cDD19lJ4JNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792121434; c=relaxed/simple;
	bh=yCUNbDsR4+Vi4GzvbY+Hc1Lu8KG7yHMD0CKNigA/xAk=;
	h=To:Subject:From:Message-Id:Date; b=fypWzj/9WZZr4f0dN862wtFH412UDhu87eoeU8w8U+LHX7DdIIwNTdUDc7CBKV4uud38sh5KSCEhS3IB5bUOohrVZx0OcQco33nfUGXjPiM0hnfoYIkhrX0YPJ0UFrQZ6SOE9qn7Kct36O3nQoJxfmMwqNTUbuJQfQ5px/EOhAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja2Hign0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja2Hign0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADE0C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792121433;
	bh=yCUNbDsR4+Vi4GzvbY+Hc1Lu8KG7yHMD0CKNigA/xAk=;
	h=To:Subject:From:Date:From;
	b=ja2Hign0mAdhEoNap9FUm+3NLyv5SHhi8u/cU9op0LgOkZwqMFjRj7qWKZvfRzp6L
	 qYtN5s0XmiQ4nxW7fVQ4EGLM/zkxe+DmmLNFWEnVgKhea1oc6juoevjJk4It0BoUv/
	 f37hdwU6FpgnamIga13gUw8MbCjMNRpMTfLIjDsay+H1Z15y39Bwx8nDzC7AnVqSGH
	 TvTrM5XaY/jVZRvPimowy3dOTXm/eop7Q2UM329S3HV50wTQdX/xVUh+I3hlmF3sKK
	 ZjQvH2VmLVvUOJ747IxD3wL4BgifY8kQ28rdA3xL7IR+TrKcOlVFRbCb+iDYnhIlBx
	 VkIcixsmzDeDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951DCC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212143368.29979.1147334635082700316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ba7a68f2e7afa218a8aa706c22a9e1f63926e3f7173747c1710046ae46c49d
Date: Fri, 16 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792121433
