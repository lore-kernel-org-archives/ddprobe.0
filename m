Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DE11F5825
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775525134; cv=none; b=k4910k9Gm9hA/ZcYTwR1xZ6v6Fp+uwClHBVcHWPdEzg7A8VZF8azxhiYpmv4kc9pYM8lawq+/myJYKVZBePd3xtsnjwQbP4I+jcwupzIM3b1iLLYCt8s1qeBJgEf+sPeQoh4DTmstT04Ed2YNYOC6b6XYT7ULhDWL4FR8k8bqkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775525134; c=relaxed/simple;
	bh=Y/Ht47krSndjy2z56edDcGRK/GAZLXzyCIGrCPFLbvY=;
	h=To:Subject:From:Message-Id:Date; b=Ao3y2UgINrA/JxBFQskaPjOLedwlFjvzHIfrPIzXxC1v2StD0nul97CuvM6lTdKHflWfSSgxpxPOiA80Km/xXdiS2wym2PuYkNm5qEs08hhHiemkQjW2myRCdQlKioEgbkbdyC/JNwyI5t35lGXBEct8nficiTlqNKktTu2ciJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POmz6+Bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POmz6+Bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B5CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775525133;
	bh=Y/Ht47krSndjy2z56edDcGRK/GAZLXzyCIGrCPFLbvY=;
	h=To:Subject:From:Date:From;
	b=POmz6+BpHLp1LKRGPAvVRaRbBSh/p8tbmxgo4gye9+LGKpGxTbLJLbCKVhM7dpVnE
	 5+hM4ZxdRcCNZIIB66wZYSZk5cSoh/CoMhaaBl2+rjnTE1jg5Zr0mLTOjQttCurRTa
	 zKX29n2eT3YKNXl7+/waC8XnTwYuciXbDi9nFl0uyXPXqAidBQhe57JR2+IaaRCCDy
	 ugJOskQddp5g0K8mqZhoAerpMJ9SlexB6rc1jDkCkeNL7fp3OjOyq4SNXPiUH6GIbA
	 8WF6UOS/kcKuK9cGza5pdlgz4nlEazC65bjZX1b0WWWUUAVNiFT4gwEMtapjA53hCX
	 E4KKxU18TiIUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B252CFB5178
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552513369.30242.2724677209307762434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce5d1e83e0e36451fd70b4433f73b5de758167f8b6ab284dfd684d587404bd1
Date: Tue, 07 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775525133
