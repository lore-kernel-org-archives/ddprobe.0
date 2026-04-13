Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291C33E277F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776103654; cv=none; b=UhpXdVe+AUZjS8Xupe3w7WXRrlEvckdcSwYxugIz7zvB+1HMvKUbYYesFxOby2s6lrvhNVtzRwWHLJT4KwLsU7aL9M7VDMEE3HSOTqgJDgthI+efrdawBfHriHUqxCIAHmwwlBcRhCN2Y9ypjMQ4BmoWVVEFQzrZFzlVl+5OBYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776103654; c=relaxed/simple;
	bh=L8QCWRtRZgZQWVDYicwkSo+0NA0/7DYhVxxDxTTziFw=;
	h=To:Subject:From:Message-Id:Date; b=afXjOlJtwbWSox9sxRoHK/iXgliT5/1zzEjKyDOof0SqFbqcXU431f20Zt5akQvxKrKjzyOwc/F/WffJyqoC+d6Ow7Zx5PY7HxPNoV8J9dYA3RvJtL5OkGEnL1kEw13qJ1e6/PLjGdxHV3Ly/0MiKqd6iNhdtvxUDWiltyAnUBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxPatvkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxPatvkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD38EC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776103653;
	bh=L8QCWRtRZgZQWVDYicwkSo+0NA0/7DYhVxxDxTTziFw=;
	h=To:Subject:From:Date:From;
	b=TxPatvkSNUbAdwLdbILnqgQdAKsFO0IYZK39reP/jR9ot2z0UT6F6IGxdXrGiJRpN
	 6yn0BroNoNcdsD+lz9Qz5R2SjUOxWx31Hf+pyn/IfEpjPS2T9XRLbU5QZEbqewqFWN
	 GZ+HZcoLmD+WNwZf41z2wPvf21OLQqhrcaLLljqD8JqWELtFzQH1l2pOlSlMaSbHyT
	 coE9r3Z07LFWxVzBKXOQKpE6TnV3H45kbTwiqWj7xtnJe6lhM63PzpLxUOCLLUhT68
	 kgNK5aTo6b2jlY64ZuviP03yx9s9BKv+UJknSEmm3CrlGpgG+TmRCOSCBUnfLjKrvo
	 kUUc9QnO9emZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F8F531C0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610365369.27750.9371584351336700760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89130ef89cb5329ae1fbbc417dfe5faa36206d8deddbe7748e8732b6cfb3f333
Date: Mon, 13 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776103653
