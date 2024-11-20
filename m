Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403AB10A3E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732065354; cv=none; b=o3Ltxz8MzAKjpw799H58KohVMIgr8hF2rzdswl0SIkWnVMj/A45ouMZHboRLl13MVe5RmLt1wzjLeWvi8VKG+1QsdUDhL0Qm8WA1vqYLnK+0lfTug7qZTyFgh/NAUZl/10I/VkEKOcn4ogyqMIQFLZFiZvVLL1b4TsfmZSRFbe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732065354; c=relaxed/simple;
	bh=wk+pA0hetLpjl/7Hx7whTCVVa9HR8vCnrvIj08GTqnc=;
	h=To:Subject:From:Message-Id:Date; b=r5uWPXPcSkt0YO3xLEwXgvIM7+dU6TzMOidj4aCwxDYXAPmkGR85Lku6qLDPFdV1LoIoUpczyNV0Vj7pB3yyOhfVv1eF9ZQR0rz1Smd2AKAqC4dX6XL0bm/Qt6mCwbPNLvUt1wZJC32+C/9Tz+BLItWfaBc0Sgmz/Jx6RfKd2BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3KcsF0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3KcsF0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D2C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732065353;
	bh=wk+pA0hetLpjl/7Hx7whTCVVa9HR8vCnrvIj08GTqnc=;
	h=To:Subject:From:Date:From;
	b=Z3KcsF0fCaejVn1D4WqCs6yVcRIVNIiNEEvX5QC55+c0MFqZ6QPPGIbX4cAQHPZKt
	 fX3iMYVFEr9TJC5oDXrf60xP7vohRn0/RRbG4AQ1CJ3lB+bbgQ3YU3LqSbupMtzYem
	 WWfniOsuToI/LH0rDVbdO+khlG6aMv9S6+OUQ92ZywFmYOq4W0xgZR6GC6MoMvqujs
	 Srzgw0fW8e9+HdnDTGqecIRynFWHc/UbZcZOOD05f7RL5GYDLotndatWtdS//8NQ0G
	 gQQtIL3F2oa6pBgDE+XroRnLQeiU9fhKbZW4YrCRQ85Ukcz+p//IKvRq3WyQGdXtKX
	 0o00A2F+WkZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B9D6C2BC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206535360.10539.18159099689867045992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9075babad27e4ab3083771b2711fd8b8630585f03ccf78c16a6592f5bc61bc03
Date: Wed, 20 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732065353
