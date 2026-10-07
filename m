Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A37264612
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791344434; cv=none; b=rXRWY+8VhuFfNGfBtBYXxjE5eNdb2an6PzZKV4KrW4UR/JD/Ks0L+JvKKhXV+YvEes3td9AE0ffsIab4tO/ovqpU71tE+d81wbENieET7li4N4omSdowWGkHCOyjmu0PK9J1lpHtHElGvN0Y6oly/5Iys8dvcVbYvH42y7Aah/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791344434; c=relaxed/simple;
	bh=rNMGonyoENRQKVSy90QdLm5B5hTxIWow3mQ0DaQHgN0=;
	h=To:Subject:From:Message-Id:Date; b=KwM5fHSjT05XJM0kgJchiZLvaYSMcpMpk4dxYulKoGj00ozLdEkJOrnALaBjWGGPn4dGlbey68CJ74nAPNrE/MiKfQ8A/2mEUL9UDn68Y0o0S341TVfjyL8+XnSxi7UY8TZ0djJ7bAC9ZJqjYSyhRTZFJGddhoJd7wSu+z186fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEm5ihZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEm5ihZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46BEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791344433;
	bh=rNMGonyoENRQKVSy90QdLm5B5hTxIWow3mQ0DaQHgN0=;
	h=To:Subject:From:Date:From;
	b=hEm5ihZ22NktdNxbMmpOCkz0+0E/e65j3vvmPFbf07hmjCGbUA65pagNQ7qqu/CAV
	 uwCJWyD2640mL9O5lX9RSxnzbYbo4manlbAYaU2EllmuYz7GWMMBs1LTx8rnTrUBm2
	 KdZVaP2404EX9REe8NxLPzd/rCHpSuExhLApgyv86UAs98ud1Pb+i7lw8zm2EUeFK4
	 E1S8+efqCHg8tPASTKXmyRgUh514JWjgoxfYuqNvT3k7ny69nkeD/2p/fHDKrJfHiI
	 rz2aJn+WoR64UFAKNnQ9qYGZvJ9Jg0o9BFdRN/6mbWt0g89QLyhDQXg7U25mzR9xL/
	 t6kDxLQnFs9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCCBCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134443368.23127.13374743153472720153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e36cb85fd7f4ccac0fd9897ba9675cc7e1fc23c7e2a7f4cd7362d428f4b4055
Date: Wed, 07 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791344433
