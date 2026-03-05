Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2993603EA
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772750094; cv=none; b=e+zRyGnfYWucqFR0+lJOG3KEBM4oxapa0uWlUbIhVlp1ruPr7KPL9ZuHEmm7efwpfKb5ql93b/fLntlwi/U6huyJHWdleNkNaH84O/0+jVo5QG7ARHkey0j3aEntTlpWJ8Veb3LGJwQJeknCwJd+nKamIdXUcOIoOpeaXE+BexY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772750094; c=relaxed/simple;
	bh=+YFCT0xHL9yir7qC62LAHIeaUJORAg42rL0ZYvGfJhg=;
	h=To:Subject:From:Message-Id:Date; b=UBaXjH7lJkRPsng1pIBzRdRAX8tNVMAwVuM4Kfe8yo+ys68btCtkvYbTY3Xx9+kNvEzH5Rvq592vony6eXdfkBexQ+ybuRKXy5+7MUDV6g3JMtHMfWolEh5nmo1bgdtKQyv8kBc/EuJmMoILOyKfyP4AKylvMP+Os0rMhy016GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHdn2nDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHdn2nDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB727C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772750093;
	bh=+YFCT0xHL9yir7qC62LAHIeaUJORAg42rL0ZYvGfJhg=;
	h=To:Subject:From:Date:From;
	b=lHdn2nDHZJqRibhFPzzHTpY+atRrw/1bAK9uW/ttT5NxiTJ0B8DlyZU5c+kqVyFje
	 5dWRyj9I6Bujdv10klI7v8+K8drZqXH0G5hVv8Dj3+vBT2LfBKogNvd6e9slKykiAz
	 IDTgwYWV8qgk9L5gFYv98BcSfcAHOx32qE4d1Wl9ANrohlrc0ORpJsnTopk2+daj9k
	 ecRBg1SL0Mz6qLbg6ZRfabedlR8wJXeBBBHA2tFfZi8ocgvq0LF+rNp1lC4CfcMw1e
	 JqNVjkwcIq3ixmO4um9IdQeqWf4ImZHNwuJzOkiJARv10Q7ygaunLJ0jSDQo7Hj2z/
	 XswyPPr+JRO4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90183F513E5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275009358.4391.5021187503192186145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4cd422d29ed597e2e0ca788a40aea3427807169c4207e4e3055118e5e94e90
Date: Thu, 05 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772750093
