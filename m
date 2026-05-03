Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF56F3ACA7C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777823853; cv=none; b=hTvmtN+U4lUJMuWSfD8j8EwA8x7YgdJ7BI+iA0jyNpS6SNzZH4CpRYwGqrQKZH48usGjqB+cj4FBrGSaa5avc0ndCBvelJOlwbl0RdLeg12pj0WRGrUqiernaJHOmPb4fxskt1o+7rVypYRafQuKzrQsXACv0M7LVX4aa5m9Tgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777823853; c=relaxed/simple;
	bh=Pry8YHcjuksMPL3O/z91W3geFagqeIb7Q9uOrzXhQCw=;
	h=To:Subject:From:Message-Id:Date; b=Yj1fxxmZEsM7bmANHXXInYa99IQTtZXPHYxW6NIkwyrX4nU6lnGonXm8dYN78kDhzCQCLm9mvnNs/e7+G69ne+EfNPlOPG7MzsjwdAXkC7Z3T+nd0Nx3fPy2ED34lIKdxki166rNYhGOGwIWIbTayZv1JRqODQZYxx3z5mrcpkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6tCcc2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6tCcc2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D23C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777823853;
	bh=Pry8YHcjuksMPL3O/z91W3geFagqeIb7Q9uOrzXhQCw=;
	h=To:Subject:From:Date:From;
	b=O6tCcc2VE0VLTNFys1o2yPO9GO/FI42Xsg0vaFvg9qOtKebmwVyNi40YE+w44wxZC
	 lIeh+VHTW/zVpdoT66riE2WxOyeSQQk9LjB+C4OKbG/FWNMuWPmI+DllbB7HAfyFgq
	 AzNshD7i+RhPqLZvoaPWgw3ut2pZScOQJbdbg+rHCE57+9FbYNXeKbAFES7NLd7Obu
	 o4HMqelBVlkTIgFAFNyR5SyM/7JSEgm0KVtU47f8r0eV3jYZjys+sb7phFwTWUdEr+
	 bOOIlxdE7y7kxBI1SpqAZhwLS9gEgjUC0Sz5L4JaL/66PZ/YFjpVYK0qwqdWY0PudV
	 iwcPHjWH8VV/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB62CD3427
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782385369.22014.2406133921115019815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fcd63b579e7b13ec16486b1b55cd8385b1ea898384e3c8f84c3bcec7ebc6a7a
Date: Sun, 03 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777823853
