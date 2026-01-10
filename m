Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066E11DDC1D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768085634; cv=none; b=LW2h8JKcNQT7ss5qFAmyYCxcbaQA3GJR0ETZrSyiy3HVakieyWPKMpi4u3JNW618AN7nz/Gi5i63d8l2gOvKRxfhqdNdyus4qMedGaoA5TBpjaTMDPz7Hv7S15LmrK1oy65yuzlv3tkGYj+D3jSqyCkmm7QULNPgAmADpkktFXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768085634; c=relaxed/simple;
	bh=NZLIjjryk/J74De6EfrV1Cuw1xzmACbn4NhAaEv+LNI=;
	h=To:Subject:From:Message-Id:Date; b=O1PO7FYI49ic85+cGPavlmThyV3skSaxEJad3+L6l9cln0SrK5RmPbrRQQqN7dNlpCw5c5rL99hAUVrsRnEi8BjLNPb0snHnuAzzC2TZFiagD7dWtt0/WdZalbZ0sax55ZQkLmjAGcE4zes6Q1clN8aIDeUz6oz12W41dGgcDxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXkKY3uU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXkKY3uU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D090C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768085633;
	bh=NZLIjjryk/J74De6EfrV1Cuw1xzmACbn4NhAaEv+LNI=;
	h=To:Subject:From:Date:From;
	b=nXkKY3uUu6AQdxoieqNhmrZYCDbAH62L2PUeLgJh/5/cQbWZDKf/vXWU0njPAskvi
	 61kjBkzDZErFuebBzNnTBO6uIfOToHiR2XCpgStKcyGHlLugKiHQcTcwK49poz4cG8
	 REuWRVBFYYEEPOSQxi2yc0S+ADi6L/JbIaL/ymi0ua4jqDt2/iZqpGz40qavehNF6I
	 ygfMxJtMyey/7EUJrWiS6X11RHWiqnpMscZ9V/wmTM3FVwjSpX/gHajGpiHvcNbBtf
	 SlcOlpWH01OySsEcrIr/0O8M8dDfL6BKX/9ldP/+01oi+rg6HTT1t5+yJFuGrfkgqs
	 QBuwTYQMig/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9FD2502A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808563358.26623.17398241982038599575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208d3fd4f9df8123cfb515ced4150641c2027ca4492278b9258c4c8ec8443939
Date: Sat, 10 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768085633
