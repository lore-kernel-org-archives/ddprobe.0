Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD1F328B71
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779180034; cv=none; b=HGeZ5X324nrV3rSjn3turp1D9mnzGKqha2vAzaB8DFtNTmMpAlwmjBPyw8qtxhqmjPQjSlbgNPrwVzT9OXLBAF1wJ1APUeU6Nu+tgXaTGC7rfKv2RHXzL+YAUiyPytpc3QNdLT2NqLbLLGDx8FiJVR49SA949GeIoR7DGXE3HlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779180034; c=relaxed/simple;
	bh=yPiVblC8FVw2WfzHDoEyOaIMefbhxgXl+KMHEpZt3CE=;
	h=To:Subject:From:Message-Id:Date; b=p17ZJSYO4KVMYpboYnfmTAqZtY3e6v0CosO0d54IQfPp6FmHq5Q9VQZ8DAecuRZICL8dfHjDYfGl/Fsv0tGVANlhmdvs/goBwqpsab6OzAP5VKuLRazYkj4jaZpgZLyUYvvPlVu4knQ9Q8SrHAMTQ8qMPvfQOoOAbYrSCRLU0vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4wvexxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4wvexxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2607C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779180033;
	bh=yPiVblC8FVw2WfzHDoEyOaIMefbhxgXl+KMHEpZt3CE=;
	h=To:Subject:From:Date:From;
	b=u4wvexxF0jq0/D5WgaJCA+naoRQ/cV/ABI4N7JhOaleR0Z+5It5Z4HokmTJa3a1jy
	 N+DTn6BFZHFPc7yjAgwvi/OvX3nw/AsP/AiWMoBfAnFx/AMSzN889dGKTUoIi5uWCR
	 8N0mZtND/uwGgX5jHvQUjoK+xNen/NanOtCxeyOjtkerlfX5+A91VrP/a954ZeoV+V
	 7crtGOsoXew1MSmKC4nH1m8NQmUH01NIUUq5oN+ZReN/HrEk84sNe46PDyqMzCMcKq
	 XNztAXM43CekAcLbjYkHmsYgWUsFvWUJebPEWa/b0b4Lr+rpsb8oelA1dCBs06JGxn
	 9w4EpfU4mBxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24E6CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918003371.26038.1703031911956463116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff3646d8ee840b92ea43a640d473c8ee155eede823c63d269c1907a62c8fb44
Date: Tue, 19 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779180033
