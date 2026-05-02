Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CE42E413
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777762654; cv=none; b=OS8DBt7McgEW/0hLf36DPCgHJKjwZ1zTE8Croh95qr6uApJ6uHk/3YbgpfAirga1BbaRLhxZxjeR7iQfI1sr9LZ/tJ4KAtmw17LmENad00TiCFSJQUmM9j5hxhvKk4Gse/yGYepxjrMmY4nyaHmnuORHgTDLqkKhG3Ec/J4tqpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777762654; c=relaxed/simple;
	bh=7EY/Neod0+88KaivsbX6vZ89ojgetCImiHHoSD4AC94=;
	h=To:Subject:From:Message-Id:Date; b=CWWatJltj6+MAKJtGzpXBLpjBxzVh4Ym8CdZ9NSggYlKNLqSFhUR7/Wnvkj/HP/PgfBauHDWahHLR5ltkGpE0/b9BicQpjSh29hxCKt2FN6MneqBy19GCiF0bAnm2Q62Xj4lOUtMH7J3ZjrfgFlouugphmbZuWLZTqQICgW8v40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ww0RMWeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ww0RMWeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB37C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777762653;
	bh=7EY/Neod0+88KaivsbX6vZ89ojgetCImiHHoSD4AC94=;
	h=To:Subject:From:Date:From;
	b=Ww0RMWeZgNQovlO5Gpt+YYnJyQ2vtIuRL/XeEgN1DRI3b2V8XfaXrTyCqlIaM+cuc
	 EIA/I7faazdEpX0jwagrtVIruWQOq3jGxXU7KFfvrvHxrEMNSwTTB7CHYRbgHSsiLD
	 eMbLYk+xdocqJNJrYkU7r3w/Nksvg4jyXJTsi0R7XcnEqvIjvX4KvLz5XTJJkKSKPt
	 UqCbHbzao+q1tEIukrjKb+HxgEdhfdq+8fxi6PCEY1HXa1rsEXHc3UE5AqVtATuQNZ
	 uuQ5QSnbapvBWYksU6pTMcHqjkezqHY/xD+CXsnMAwmxuBoIwdWJ9068YP03ZtKWXZ
	 VZPIuH4ZUGK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9037CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776265368.7606.1569683552456314995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a939da91e7f2b933487113b13695aa96986a6d92a907859559fc6a2a8c4402c4
Date: Sat, 02 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777762653
