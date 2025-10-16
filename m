Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EACE34AB06
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760627994; cv=none; b=ZUvoZClw3BV1JYj6aAvU434Vsz3pIkrDkQx4UTTRPhLa6wUD7VDa5xoAalGYD5UXDFAj5zIV5Jd+Eq7j5ssDV4qy/AWfyGm2/UyCd6RmaUgrj4I8apv+CaV2FKfJkxexnvruKRbsEttP8T+0gV3UQwREGGghBii+gJXWsXEWc9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760627994; c=relaxed/simple;
	bh=UdE+ya32xhJykHhLnFB88q5itPEVBMmM3as3ARr1rFE=;
	h=To:Subject:From:Message-Id:Date; b=efH04Y4vtc4jXm4amS2mZyaVJx3PlAysOxVFQhgIU6cbHA/PPiLumoEndUGNfKnfTaC4teYSUuM4sS2F9aXVARU2a+V6btlZaj6jugEVxRh5g9mFHG1vUpKdsbNQrIJG0vKaE9KspzzI3X0pVHq7dZ3LkJEfpIl7HQou5MebLhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLmahRkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLmahRkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FDEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760627993;
	bh=UdE+ya32xhJykHhLnFB88q5itPEVBMmM3as3ARr1rFE=;
	h=To:Subject:From:Date:From;
	b=KLmahRkTZHxg22tyHyei82g4x/3VF21fcSaRfgR0syKd1lTqvWFooGcODGc8/2pDs
	 ZxdFl/9tGpGqhnPloqelfR8bpqpdzpOwB1xPM5w7vvTSCnsJZMR1mzIfCApWlPl9kL
	 Ajoi4bwBjXpDr6nOCrP4iiPtqWLxMn/qsVZt8knu5q0YacN945rKKKsdZtnwnRApe4
	 A2evJT93lmCtubLi08q6PhVfAICnene3nFmvjbT8GMuWaFKdqnxsyMoBRqJhv9Y+jZ
	 nQU8Fz+logZAns575sjcr4gwPLBLp9N5NMbbQVNTsdqQwjni4q3fKQ/PscQf8NL2eO
	 dQG5oj3YQzzrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91404CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062799358.2617.17992330996493236752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd19df10889a1c82c22caaf6db19c60bb3b8b223c2433a4b9a5f2c6070f61756
Date: Thu, 16 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760627993
