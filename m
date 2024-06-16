Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78566210EE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718557103; cv=none; b=pwNYAk6fo/zl+/XZCpEtcge6hS1nXtOap2wRorrvA1DPbKfNbAL8oRkyqyCUjPHRJ+7GOX6Cnm6SEkc8RlgndFf9E4e6yqrHNkm0jzi8DqJxYVwxK9nWHGW+Iq7bvPzlsAe3MyqBAvDiP9tj1EcmC9zNBJnhLQBgl6e/PvBXrWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718557103; c=relaxed/simple;
	bh=2N65zwg1FdCn4px5J0tnwE+H6bwY0SvFOTg6MLl3aJY=;
	h=To:Subject:From:Message-Id:Date; b=KLjfgzWoexoHBG3baA+kXPbtyUZudQAHBsN4JUWkXmiGfo2X1xes5F+UziBz+1+JNotp/9YbZqDBGOGuFgeKBfw0j1EkyPo//gDyKsLSpo8qEhKexQSwUQWzK74yVxfkC2wZnKsl8a57NwJGCX4Ym9qc7y2Pt/jUy4hOF10nmJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnksSj96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnksSj96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6602C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718557102;
	bh=2N65zwg1FdCn4px5J0tnwE+H6bwY0SvFOTg6MLl3aJY=;
	h=To:Subject:From:Date:From;
	b=ZnksSj96g0z29lVVEO+w06kEAATSkNG5zArBxOwbllQ1YLek8q0uBTl3bETZ3V9TV
	 opyqWJKmwftNT1FsFUT+ZEg1ldfS9klRLe75i4osdpjWKLbM78ahitSbNXYcVKopUw
	 sDJVA3P3inRPOWdF1b6vGjWygaVVx07fDB90FLQeq8T6qIbVxl82+NKErE9bvmYNKn
	 kC7iZAEpMY5skt+kYEZipclDsBnErkxYu39VzBOoe0m6kJMWcfPRkKjOzCJMXMAPR1
	 dNT3iK9mXnJSp0ZX1wxsR5nKHaxAnKl/F5nvivNwSCgge+/BUPew/yaH1JBEfr6qF1
	 wl307V8QMSIDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC5BC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855710276.29361.2074979688017119869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647ec29e0c492346a4c50a6e1de1cb5755d4e055097ca714e81a9108ace4af56
Date: Sun, 16 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718557102
