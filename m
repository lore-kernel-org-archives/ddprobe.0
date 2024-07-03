Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BEB74413
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720001723; cv=none; b=Mgyv9ockN/VefRo+JmLTZCtNjyhbg5n9IM81BqZryuR3/TkSUvtyIaKaBwG1AhOxxs9z6//yQ2RUNVi02CwZhgWhieMGHiYBW1SSTI/OMvPav4Xt9ns5TRdmLRnQphWbEWADoxxoGTEG/+4v1LQEeOA43cIcI9oJxtcZwHVhOTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720001723; c=relaxed/simple;
	bh=ahY4/1/PZrswbnmxJ9KICNe774sBJrN6qho+5bKbKxo=;
	h=To:Subject:From:Message-Id:Date; b=hAwbdLdepXYfldO7fAzVH2yzdPSbSwWC39iKxWJ0rkYHCVzRxPTiAi3vatnOQUQBxoYsp8iMBBugnozL5KGmwRehG/dvxpAGc894GG8N+YHIVPMXW/ivOW2yrdVC6Bhue7H8kMQqioep9GcR6AO6cliLCeCXOMrH2MfaAbn2Ltc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTGs7rNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTGs7rNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6ADC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720001723;
	bh=ahY4/1/PZrswbnmxJ9KICNe774sBJrN6qho+5bKbKxo=;
	h=To:Subject:From:Date:From;
	b=CTGs7rNS/EiIsHd4lHY99CknKGnXNc5C7SM188B7jr2MEVv4eoOb/4t5y2W1klG6C
	 CP1J+aTgiMobT3eKmLzd/tgC9xdrL9So50td+uMhIT1eyU/3/pqDR8OUouRdCRcPPP
	 h8NjiSQ3CwZSUiuym6p4CTA6av0Zk6Rbv+7dG7zkbHcy5foSkKWa1Y9jKh9wu8dXwc
	 BC/rLQzt4Z58Joj/TuAYmrk+m60KALitQeiEpVuhyBnBAYOi46UP6sD37VlAbn273+
	 ToKBClpiGigmlUqg6mupFaXs4cfX0iAcyLHPDkBJAGo5bUlhXznDQoZpF/864GWuWM
	 Q3mFapiR8lAQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1A37C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000172284.8477.1129729386357005012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f79c8ac0ca400496aaab5b59f46a15f226bcb71d2774530a4228a16da88e8a
Date: Wed, 03 Jul 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720001722
