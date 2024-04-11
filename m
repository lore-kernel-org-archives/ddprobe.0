Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09E12EAE5
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712830696; cv=none; b=NuYN3RX16s2xPYgccGeYf1QhD1vmDsgSWGll4Q+TbINjREQxAliDrZCNMsDWyP/cDtcRPzreijCa1OMyzBlWFAZ4vIPHVVUzWjoMvlwJ1fCS1paFF0pajefuR/H2hpJLZkcyx7Qc53GP9K9lBlpx2rDdJUKu4kSkixIu8zFA07Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712830696; c=relaxed/simple;
	bh=D4MqEi1+mkHcdLdFGsQlU75ijgXZ87uZgdEaEdgT7gI=;
	h=To:Subject:From:Message-Id:Date; b=Kpp/jer2BQj94d/rv+ewdpoCqhaMCfxo9LJWtPYzVJp07Ev5joyaNPn1nER0KIit+ZVMs6UaqjTJia2AgVx2D/0rqHiuCJFbBSOOAHhn0enj1PpnLdlxlkDNOjZpWW6bBkq79w+GBIBl68yEYpqlvFjMOsqKvHx4DDOebOv//EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNqshKsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNqshKsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C42AC43399
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712830696;
	bh=D4MqEi1+mkHcdLdFGsQlU75ijgXZ87uZgdEaEdgT7gI=;
	h=To:Subject:From:Date:From;
	b=jNqshKsHGeosW5aVAea4dq5K7ygYxktoqHrzhDpNXq2tKFWi0Jgo70LxGDjmzfDX8
	 IrRLJpvZM/8gJh5kfDTnrGYg02+K1TzcZQchfiGvByVlCb1BQLPsNIFfmjRJ/ua/Sz
	 7o7vi9BwLFNTLVuQVwPj2rAyIh+9sClb/4/nl28i0R5sykKZxzHBFlI8BzjlQlgmhp
	 fYOO2KuoAqmxU9J5Wvi9qzfRPf8u1TBAGlNBjHBcdJ9sgHbHV09JHJ9HyHoBFzYey9
	 T0LZJWOH2Vv+aALDq/8khjRkl94hDmdjc61lDDurbN2xLEVUGvSeG0C18zHYHnfTCj
	 3My+8urP2PHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E49BCD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283069644.2666.9506213727385532833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fdc060c22e3399453d9da614033824e9ca498650bc05735228e6f96767bc34
Date: Thu, 11 Apr 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712830696
