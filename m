Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB022B9B0
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713565223; cv=none; b=Q4SIHnp9gr3ukCYY/gPVZ0X9RAGacD34DjjcKJpDeqfABZmPGSIq2VByA8xcFReLsewuawp4XlCW6cJUSjqLPD8VERI2nAmdf1qEAZs2tCq1/d4pJtYEcsE5riGuDe07yGdRmYsQm1twLQSYRrBcSUFhJnSRbSXnBPWzFVH0YlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713565223; c=relaxed/simple;
	bh=RiI5nLO4hLk46qSdH72chIjojqZbDA0OJzhnaj/yRVg=;
	h=To:Subject:From:Message-Id:Date; b=leylbljHls6363Gdi9SYFI+UqcR909R52tqX6Vy3ee2oLIKHfPW3TxkvwraNZGjO/jP+9Mys/Du75HAL3a6zKK+eIVloZSYSsN732ICixT2NsB3HUeAjneERg2kdtVTRoyPqJXBa7uVvmPE18+32jKauiEEQPyLF4lLaJmXfEzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guhN1jJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guhN1jJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC206C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713565222;
	bh=RiI5nLO4hLk46qSdH72chIjojqZbDA0OJzhnaj/yRVg=;
	h=To:Subject:From:Date:From;
	b=guhN1jJ/axMu1+kwoIIUM6kPu72Im7rliqaLpKI3E6qVOzlvNgRAehjjU+WxZ4AM5
	 I8Ql4nAaGRgcCSzKGcwpRW+WfBBb3te1Xz40nk18p8dxsce+bdHkoClFe1uOMTxChV
	 unUhT4acfFSRRptwrVukzmqvLNfWDizxvs2S2GLjikLktGQ6dsQxkQtSHdghKPj/6G
	 xUAx33twYXBvAeSmMf12h9yQUjXz7UNDCaY56F//igboCh4cEybG9+JBYfbkp8TtAb
	 OJH6i6H3Ron3o8rAiD51EuScGbXD1hLeTb+10CnRX1tXVo24coEwdIOOr++F3FXR0V
	 +7FQeAoGDxr0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3475C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356522279.9762.12514132353092497035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686af94c496944df5a622116ca897748d96281d1b20e376d78e2d859f06b5944
Date: Fri, 19 Apr 2024 22:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713565222
