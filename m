Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D921DDC0B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751597395; cv=none; b=Dv/i3V1xHCOQVKuVGkW3McDC/dkafMag2r4HnDlVwbcFEXNLd/raC3eZvwZyBF0qvlBFgi0jk1EPZdq9Jbn5LMp1pwjsKWKE16JlAFd3Iq/xP91EuwQpigUdF2DWOBc5KgNEqRyhwuje5ti0YXXWfpi1uCsYvIgd+AIP52lH21s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751597395; c=relaxed/simple;
	bh=bZIUs52NMcM4GsxkiGtmv79IRn748J6wF2xK/r04WBY=;
	h=To:Subject:From:Message-Id:Date; b=M0hvAEPRnRJgz4ZLYJ+EsHMmVppoi7gv+98zprk/GgBrMmdsu0QyhzGuP5ezr/N+MGUYqA44jFSL3gPB56F7ZPGae8TwUkkFvbvSsnOtF65xVjxCH5HNrIg4fb4svJVHDGzyhumxPLSZY2/Uc1N7iMOMHlpUizLDH8vtDFD3JV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjRTGGjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjRTGGjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B94C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751597393;
	bh=bZIUs52NMcM4GsxkiGtmv79IRn748J6wF2xK/r04WBY=;
	h=To:Subject:From:Date:From;
	b=VjRTGGjzR+0Oc1PZnudiRSE+3ad9CX1YvoarBFvEm/p+N0mid3+pxI/CzXiU5ibmj
	 Qzosz3BCEAGOfht0OcJ/RCfGKbVjdEnFagHKRWvXpxsaT4mnmRqqC0qczkKlKD2AOf
	 1BxnxfJ0HACiMOVGuIr1sR9Yu9HrSjW2GjYjWVBC2rKv43sgbH6SKyBvord2kRdgqT
	 fnq/zRDHJSCL082oqsrqDpGY0Yv5qRW6d4qCDAGYKYizk1yJoFz6+YoUdQW8brtCAf
	 zWL93j0DxkyMIUgF8D5VaMqSVbDW8JR5pypLvDQFu2owmjnOOO/qL+YQg3576H/Ey/
	 kq4aOjcjY6Pkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC05C83F04
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159739357.7256.3029074796977602918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e55e437eaabf33e130a8047e5c9dcb1e2b9b108c10d8a530755cadf5edcdb1
Date: Fri, 04 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751597393
