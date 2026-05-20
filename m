Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EEC372B59
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779250234; cv=none; b=vGZCXSLoQqzoaR/QAIUhX9ulgHifErosaXxYvorHJtTQyPhmpprc03t+O2nZbMAEjQcPvrlQXf5eYidVRDJU13ggT7qkHnJ4FBIjShHiCcUkGXFm9jYMq8CkOhyDLyW9F9OB0ZjBgBTmXU0Wx/8cnYjm10u0w77xHkZhbC1if6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779250234; c=relaxed/simple;
	bh=vbBXP8p3lkxxoqoMLzczWFnrWnGL4tMw9Dx7o2PHp54=;
	h=To:Subject:From:Message-Id:Date; b=o/C6Rpup3SJtoOlYzWNDUy7RsHKWvrV1GXiYQrP1KVYfS5elUA/nZkmqGJfhK8EIujKuBYI96hqh93KDGaBdK7YKgxNVA9AfCCBgIXPgb/CVPgJkenMfy3dT0s1sLMLSnqpGwpNtt8RW8CJW1UiT2WU5iYc6ksUQwXBHGVYtmzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXDUS6Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXDUS6Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61C2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779250233;
	bh=vbBXP8p3lkxxoqoMLzczWFnrWnGL4tMw9Dx7o2PHp54=;
	h=To:Subject:From:Date:From;
	b=AXDUS6PcVqiTpEsDQpXekAv3h0WJQF+SFW4DBf1PfsixAyjBloHAM381Br5DOyEs7
	 Z8TwAkJckfUfqj1tnnzGxHzjAZ5nPbJDuS0WPZYPAdrVDJbxiTy4HlNmrDVht59SMz
	 7hP2iVEt7Thp6fqSZPn+ZCEhGoNAuYG3Sg9uQ3FUusu6QzDqyirVVOOR+SPHOwnYEl
	 Ent42hVf+FWfTw+6Jyfg5qjL6BCCqZKwOOOLYqH+Y0df1A7ksyxfRcYihP8/DASLMq
	 JQEW8P7YdcAwTUAiKYCbIcFWWRbMD6OWhpiq4o1pmRqp7D1gBFts2e86wJLt7y5PYm
	 cu7a7oohz2gOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A5CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925023368.11242.11252962835236730434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89f13a682f87c2f522fa1737eb31a3b0e2ecd9df90a5f949faf9dec2b553535
Date: Wed, 20 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779250233
