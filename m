Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3A128D8D0
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747137594; cv=none; b=edUQiNKPjB3NLToklns+9JIvfqh6ALyZjGXAPJuu5dRMcyFAKu884rtF2rDZO879A3+enxGne2JPcjGJeAhdyfo8bY8nTKGp+QDODcqg1bMEECCP8HkKNfq7hIr+VmCeOHsokwl7+k862CykoBnf0Oqhx46TFZKW8akxLYoFl5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747137594; c=relaxed/simple;
	bh=vo8sP4E0pp1oyI4eM35sVwCsQECQUgoF6P4KCBz3y8U=;
	h=To:Subject:From:Message-Id:Date; b=Qp9XCMgshYfM7tOueqllkDS3ZsysW6jYXrc5YzX2FXJzNl/JcKLAIRfylS1zTqBhtracWb2Kh7zBmAf/cfz/T9z+jeUv7o2vVVwnwQFUnyuDiag25+pUT5lZVeZZRsl2XQw0ganvfzak36/2OrmpmQjV0w8uO//L8Ml5j0Nl8ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd6UudZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd6UudZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747137593;
	bh=vo8sP4E0pp1oyI4eM35sVwCsQECQUgoF6P4KCBz3y8U=;
	h=To:Subject:From:Date:From;
	b=Dd6UudZiBIYTwIuBSY4GcLgkJHYpkKGS6oQBzcB1kwdYZWrE/yBV1W4u6lTkzGXcl
	 olcqb+4+u/LvZsCcS5E/i07DOILZjbfutLJ0tdmTBM672f/hOiL1vQYY8+cgBKUG5b
	 3e1v0DlEw8Z7cJ1RDlNwM5OtxUV+wEyhSCNGRmjcZxEppZwy9BnkQXyVezC8Tli3wW
	 +FupZ5cgYLUkHCAZKZUYsdjrLJGZiOloK8AUQF9caQAIHuJVHGXoq6So4LXSd96GKm
	 krwb5sVNlNcss2IfJiAwTaTrNoIyHxJyH3UmayD2e6IlqGqFkVCPyCiy5OF1f5ScTU
	 LCx7frE53GcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0F5C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713759357.11634.10045154772730992728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e646cebeb8461ae885f3fa8ff68cc90f9741c32d394889091d4f01b0c7009a8
Date: Tue, 13 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747137593
