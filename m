Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D1A86250
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768563834; cv=none; b=ABS/VNrA9RsEj9XiaidEJsPQoYWeozICOK5H48vgfMMCFiTcYINxBlO7McE6NX6rfaN4Khn2Te2i1/RkTUsbiFGajhDKhwqh7cA3m6EucXHiiQeRi8Wj8m9oNb0MSRetsCEQ55OpZTjk2Nq4NIgBAvUyl5ihN4M5FlwWzo6cPqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768563834; c=relaxed/simple;
	bh=0CC/89kOmjoR51rT3vi58FCieNQsJXUJVbSbjlsqfUY=;
	h=To:Subject:From:Message-Id:Date; b=Y3TasLx1wiMSALlCJT+6/d+q/mAt8Uo3rlAPifJK2l1jUgPAFgwPzULBavQWee9+ok1HuFLxcM4ECMrMOVvtnTRXbYBqDLLgPFwA8r4gYp15Kf+10lhNEhlaRuD9BL+TDWNpuJQpZpp1VLXVy8Lv44JplqGQL6YbeszblFI6o30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGPE4Oqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGPE4Oqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768563833;
	bh=0CC/89kOmjoR51rT3vi58FCieNQsJXUJVbSbjlsqfUY=;
	h=To:Subject:From:Date:From;
	b=JGPE4OqqsfYfMt8xXOn3fBlZeMuamFjnBvbzAHqi45cAUPD3FNwFV8wcs0hhnuc+q
	 Qk0gsuBNOyQ1OOw+SWzHziZ27BJXiPfsOLJZqz9T01CJrsxowkefqpK/kYfhZ7uTso
	 rKJ1bB6AoLZ5wWyx01N07q9YajSbMWCRWug4yt9VikeohdI6IHyVXXK1C99cHuQhmv
	 A22XSAhwmqltyCjYsQukpAzlH61XHpqmzn57/V+U9NSXZUZMBO3WEfgeA9ukXGusUY
	 S+2ZSNSgvN27epAuUCiq+KUsWFFgz1/1LjhOBxJrKVSoAn6KTnbwUYlvedhl/KR25X
	 YGhoyvmnRqNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4BD48981
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856383358.28183.6734234503217393393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a3efad1958df0dec020904554e79dbca73ceb6c3d3434de63812fc79e83fc3
Date: Fri, 16 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768563833
