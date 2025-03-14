Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401DC2E3362
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741970934; cv=none; b=Q6kXp0ApWlwpuTp+I31pElGbyI8itiFeEedDE6N6BNs1PT3nLRRxfcBusBZB1lND1qURIac2IEzr0ccL/yxD+CPWMlYlV+7WjlFt23JH78nuRFc8zDSLtGVWTe0QXKBasC3AV2gjyQZrjhkZpw3F0T5w2hR99hhB/ACtvdKght0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741970934; c=relaxed/simple;
	bh=A6nJh0oBLIjamcFEtPh5rcb50S/GxOHlPF232I1pxio=;
	h=To:Subject:From:Message-Id:Date; b=s8Zyy2t2pvUFbdEia9/uS5bTCcMTA0Vo2mYXNBof/zovVDUxKYdm+agbr6umu+qVAeJsbfDbdNmdCyN7pW1RZmvAApG2vY0taE0aOkrDvQ+rN4xjF8XFG9Yt6EhHWUjgC++iz4Xd0R1w5wepnEwshRez9kiNM+Vy+kXtbrvsBes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pxln7W+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pxln7W+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB484C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741970933;
	bh=A6nJh0oBLIjamcFEtPh5rcb50S/GxOHlPF232I1pxio=;
	h=To:Subject:From:Date:From;
	b=Pxln7W+j+SBaZQyUhX9LiicMEP2uVNV5TQ84EBqlx6N0LPILDdceg0rtmSFNx7FjY
	 hhD7ODqiGVOlCTYLH3rrjW17/+7bSv+0IBT7b1Ido5w84PzwZszHfGT39H0LRHiB5X
	 Oxbz455O0Njw1bXVf1Ic5+w78CIP+tgsUH9d67kOltzkazdUA/qbkz+xmC/VoaaAAb
	 thDvlaekKkefiU5IwhimLLgP0DvtwrfjnlFrnN4DJaBW8Yw+vd/Y5FXAXYnDAQFNNd
	 3QUSWp/IRBdrsb5d0jtPlsZnaETy4fgkvVfiVT4yj8iUysuYi6FJA1AMAT5M/7MtzS
	 ck9VSVSYA9m4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A656FC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197093366.29329.9792681432286144849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f98bb5803c35021b26a77f9dc9cb279436d3292e079adc5f142ecc2f250844
Date: Fri, 14 Mar 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741970933
