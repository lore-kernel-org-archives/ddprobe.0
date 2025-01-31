Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36517EAC6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738331154; cv=none; b=r34s49VPyzqAXgf9pLyry8JGXjQB6n1b9vo6C17bhk0rLm/Bpdekm0S2g9npyQ+5eOBAeM8s2KaQe5ZX+mmyKszRQiU886C2Eyn8ZgF8jeUR2UFqaGuvluiEARP96KlSrbC1mGqXFLITLfA3Dg0AuPKDsrBtnHy89pedtwjj2+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738331154; c=relaxed/simple;
	bh=M3JukrocFs0acdaIc+1ZRr0qgj8tUK+dzdK9GmcVBhg=;
	h=To:Subject:From:Message-Id:Date; b=pgWwAI7hAuxlcJ0zobG3VqsHZk+uvwAMo2RZDFKeKUh+wn67vedCVbeP1XJYPCPbcShrr7IYS5oQ60dBxcDOGb9dEBg/9NvnZnjL6zKAyBjKcBKSHiP8g98d714NSz2hIidtln+tfMfE21GSf9WrigkVaLRBbtENfnP5vyuOqd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3PGElik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3PGElik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BA2C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738331153;
	bh=M3JukrocFs0acdaIc+1ZRr0qgj8tUK+dzdK9GmcVBhg=;
	h=To:Subject:From:Date:From;
	b=b3PGElikg5c/xXBcQuAHyLBPzDCU6swWMDUkUFHIOK+00NmuYx5+Qaqj4C7ubxPjR
	 0uV0xaXcpFZ6ME+TGnAYun07drG+rOWw6m9oT4BhT8tPR2Cb1QMPxRNdeDt1JGV3g4
	 wfaXYfAGzxwwRscTKo57PiDngYAE4+m25o3mMECSfU8U4N4Lh+Kd4Sy4dYFm1gKgVQ
	 Q1Wd8Z3mfXUpbHHccrTJJhX1r0HCqVC1VgB/sVZ/gFaQUCtWibJlHTASk+TBvTMB/d
	 wQIJRi6u/WQ1dlFbt2iQGBCBkd7FGSh0mGFbaCrWHCTHqd29bWg5XgfNelHQ9gYU0Q
	 KV2KKRRULmnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B27C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173833115359.18138.12030864156097301021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745cec34d8af574bbf20315f9a03e1f5d56c7c9bfb1dfb8fff0a52f83db4b5b5
Date: Fri, 31 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738331153
