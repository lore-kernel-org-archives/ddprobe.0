Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6129A18635
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716639263; cv=none; b=nRx43/wJoruUMjG1nnJj5/jgDfC/j6gKaOaU5Swm0ADqrkF4au+33vBMF6yjWlWR14x7I/YJbbqJtac0y4cNolMeUEPmaMJW+ZS/q//Itish3XE3oJ/Neuj9LsfA+rHTr+aeKbWPuxXJcWCMVtzItDxBXX1V4lIVWa+1FXR+oDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716639263; c=relaxed/simple;
	bh=K3ccR+VpSkZAJWO5wOK6fe/se79GUPc9ZVTecakEH5s=;
	h=To:Subject:From:Message-Id:Date; b=gAaQVfQJ4y2I7P2EkCN7942m+JhNqRxiC1G1ze1g1h356vH9OisIatd8/G/HpqRTYPKCFvN41tKLG13tDssP/OCAJdzXGba/O4kDJ3VfXR64N7wf4DnYUTu5f+pAGJm9Rvkx9mWGhTIsKAle05Gk42fTC2daqsxFzSvBqDNZm9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwCG4euK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwCG4euK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F7DC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716639262;
	bh=K3ccR+VpSkZAJWO5wOK6fe/se79GUPc9ZVTecakEH5s=;
	h=To:Subject:From:Date:From;
	b=iwCG4euKyqmVYa15LeCgEfzSoIAJmp5zByLhJSA2GLjLNmxkIQVQesdWHD0m1TLtP
	 P2vtQZeMIksn9eZUneCV9anYenOru6nNxO2TcZS7qut/kCeTO23NDrphLDcHt1Segm
	 iXOD7luT9srA4ny3E1Jd+QRnlP/aOfyv3ouCydfNV+w9mNSKe1Azq3apdiOkVmXUEM
	 I6yHOyVgyY5jnGv5Za9d/xVMf8vVmix4klAclGqY/s43H49IMg02HdeaNO3JnaoTjK
	 uw7bwwFoLYQjqQVK0NB0m+y5FJhnC958Nl2T6nIemAdcHioDxE81ooxg2gg0triivo
	 d9Te+NddFC68Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC82EC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663926277.20289.12149497045533485617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c5c966e1748253a64f6e2709275dd1cedfb5651a144c76623dd15ff485336f
Date: Sat, 25 May 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716639262
