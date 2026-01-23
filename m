Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F56722689C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769171034; cv=none; b=DhTQ5uXFvcVtgNhEES+A2tqEQXoXL5VwiT4uomlaJBe8gfApKmABzfCM0UOV01VVlWtz8PSlE6PW2sirRoTGV7rs/IPd6cvmk2lCOFh9bMpciuZe1MeIEvtOigWUu/rRS/5ZRgRtilAbQh5RSCHaONxeFfFzbDpQG5ubCWRUgl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769171034; c=relaxed/simple;
	bh=cphkq5S0sPA7dClOZ4E0o+++1r3IDgIA2/SajqLq4T4=;
	h=To:Subject:From:Message-Id:Date; b=H1nkNmFk6cC0hD8jNhLRTcdwOpq7D+Dr+CzCHkw27j6C9iznrFVpxY1GthFtx0uBOM6/O+L4edtOgm2w+njksXjTCJw3opEV5sSVk2b99/P8gCUP809coih2dWQuGKAhRl13yVzBaVHIGMj5nXpmghVoCgkMWEl+5earbmL1lV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eg+r9uR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eg+r9uR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5513C2BCB1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769171033;
	bh=cphkq5S0sPA7dClOZ4E0o+++1r3IDgIA2/SajqLq4T4=;
	h=To:Subject:From:Date:From;
	b=Eg+r9uR1srbTt72cr0WbW1uH2AKmTIV0kVgMFG7Q9kShV/C/C1/TZJ7tVR0jaSIvL
	 I3AXyzK7n7oWVSZUIGo6/pyVFMfx3hppevZmvE50CnHuhINRbGDJ6DUo2NiIhGPLf5
	 fhkobu4LJfSw9MQdsYShI7ODvZ4anmJvWm0NR0fLCUbdNxhC95Lf2NGxTIOWrPGCqa
	 YFx2qj47TlRt0boq2Iad1NpKphGHG/rKEau6JYRtGGTpBXqmn3LPNN+sLnW3/jN1no
	 mf2rbUnaG0h6W4HkRbt8FkYrhXOCuuWPStPXb5BONvI+4Q4phCzGR4QXHBauUS2TPB
	 /QY7L5aVFfwog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91436D6261A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917103358.23558.2901267682827445410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e897b8a50a7a74d002499c62c73e059a7ffd1081d59b761a6e9d7ee03732f7
Date: Fri, 23 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769171033
