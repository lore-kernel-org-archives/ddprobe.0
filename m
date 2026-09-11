Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0154E422E3F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789153835; cv=none; b=HeWC4n2oj10JaSg3uOYS8OYz85+kGDZTw85X+AnBbt1gSxRBeg3E14iVfRAPgpckl0BMBEphRp+NHi0zrqsaGep9Z02kNC30vyibp3DBZbkUZ15DK6OCvjmnqYaFagbE7pwWQ072sl+aroUZJGVjDndmYynkpEiAbggsKcOi6U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789153835; c=relaxed/simple;
	bh=vaWgvMXnnRwfoJGgnGCRLhFX1dO7FaFUBy7ODemXKq4=;
	h=To:Subject:From:Message-Id:Date; b=rU04TCMG3F02Xkng7r31ApAsgSAGF8l0oLqXpnjRMcIxPuwzCYFBIw+vEX6U3PusB4OKWlUq32MZZCOqYi6/U1hKhBorz90yGt3DexG7+nyIdIeMi9E2U6jCFc4glaTaVvZSOXJWPf0300s4Us1nm+Ut8fMpyMerqkMN0mRiMjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLkFC/pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLkFC/pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E4BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789153833;
	bh=vaWgvMXnnRwfoJGgnGCRLhFX1dO7FaFUBy7ODemXKq4=;
	h=To:Subject:From:Date:From;
	b=dLkFC/paWUBTOvDv2MfASoGaa6ujeQ9SI7frW8YEK5sgLK6sXIk3r3Bf0sy+EqNS0
	 2F4t7+6ur7jgCwdRfifrSuoSO7ZUNg5oc7tAypj2jeSVt8OLjFKFU22VhlOGEvvglB
	 vFRA0PlPUoVqejMML70P0pcMPKOFsT4kt2RZfW84ayQyhoDzib2GT2BkutXOhf1Jcc
	 sMhAD+8/qNeCZ9Vc4/mpU7EdWCG68mGsi022WKirXWLp/nVFfSNVIG8IPNW865Lsew
	 8Y4ffQuzO6BUeqP62mldfU17ng/LRgOKnzlX4D86sqh0q/nG4ybpq1x12tBQV6g8xY
	 Xr3nYMXASDBuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD14CC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915383369.8404.14898839495626256154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383b9be21213322e2b12d3a01f85639f3714a6c3dd46c93631180de609a97c7c
Date: Fri, 11 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789153833
