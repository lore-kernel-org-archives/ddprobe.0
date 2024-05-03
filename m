Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7F0290F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714775543; cv=none; b=XQXA1+3W2WXWN6eSAixP16ud0WOe7SZV3WZnxdlEjVzccNIQPiBP9sGnnWJS37GJa4VcKk51SuuS+h2OGA3VQ0us7jrr2kEnkmp3iu6TzDjxQIevv6wu8P4HS97tdsoMHOwMecubnkG+juatT6izkWoTEOK6LxxDSbGtK/e94yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714775543; c=relaxed/simple;
	bh=L9c+rtR5IYxT79S/shyL408fls5aZF8Vrfww9scZ1GU=;
	h=To:Subject:From:Message-Id:Date; b=AreDUQBPXDuC+KCKUo2gGdSMlAMDOTO8ctXEJ3C4JOIkz0VgJyzKxSULAXCdbTXLliLlVHzRHGP+onOkhyh/hpUhIkQ4JLVDqixtY0l4sau0HEKUn2WyfyelKF4jQKUyaMPoMAq/KVQKJXgWhYUD8ctXrgvOZnf50icK1Lv2mmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT2EeeW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT2EeeW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA28AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714775542;
	bh=L9c+rtR5IYxT79S/shyL408fls5aZF8Vrfww9scZ1GU=;
	h=To:Subject:From:Date:From;
	b=qT2EeeW8gVaSs9MEOQ+Pm1nQCvf+oD7TPu58OG+s1Tge8yif0/gzvG0fhoJwX2brK
	 WVxLfZfmDwqQUIwS6bX4VERpwINGKGGkTkpHa4OqMRwQQ155pwvNh49xbE5036JgVV
	 jGrAliYL+oGFHpJmRQ9Dv7M3uSVHPxYkcWDLkQbVDQRJU4ctVH3R6/pOQI+iP3zoXd
	 4RV5pL47wevt7TeitJ4I4tZpvsNGFGvFvewS9TUXriCAkkrdPRTgCpXwzxREq5pTp5
	 TQifZDvOw/vc4KG5xaqWVX8BCq9GF3shyNoVUEzQVXpkCwuYCVaVk/nUu/E1ln0gVA
	 TWrQ2bHsr5pVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB11DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477554275.17078.17359538890107688187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46806294f299b350d834e0eb96c8c0855c6c94af8ea953b24a07e2864cc4c371
Date: Fri, 03 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714775542
