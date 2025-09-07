Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCAF25771
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757230194; cv=none; b=Zl916FTO03cusOlJAhcaIz7V3Ocai41LQWiZXzwmUz7vsVyGRkUFeKwu5xj7oFJARwTctQ0NaqGw1U7XHHCr8VSSS9pAfBP9rHA1dHLeVK4QR9kip5Fq7jrX4cZN5anPYq6w+qL9oTcIKob4Bs4p9QYHFi6t+CI6kP3KlRdM1mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757230194; c=relaxed/simple;
	bh=rqgXHOS/BVPIcuX2QbHLfq2ISaiBM0SoWAckAdrqD+s=;
	h=To:Subject:From:Message-Id:Date; b=BHN608RE+b99QwghgQYLmI6OfXjzLFa4HYv/zXy4hLTmYWJ1OdOnB+/iUIbH/noBuLLEXEofBqWdBIwxEPr7WMO5YdATrYxgmdTYv5WbUdFJRli7Dg2J+Lp/3ah0iyR3kDhisZSPEAN3WjWF2pZZtUalf5/f+ioj2egzlBuXaxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or9/d59p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or9/d59p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E1C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757230193;
	bh=rqgXHOS/BVPIcuX2QbHLfq2ISaiBM0SoWAckAdrqD+s=;
	h=To:Subject:From:Date:From;
	b=Or9/d59p5gMVdH+9OsQnjI2gGU9uRPUMbku1es8kchr2zYKWT/sBoVchFkU6WXp5j
	 q0Ug/OfUBYRXwjdLhtPRm7doF1We5dQvSAMNm+6I1lxmTPJIqNh20zcv2QPVhOrk4b
	 /OCPu58TJuf2TSGORQOmeWL/Ezubx1kAKeupbf0lE69LqjbdwryK9Hxb28422EWl+X
	 7igwBvh4X3oD6fnnr9U1PXmadc26MoUW+qhPPcD4e5CuQujE2xCMdHx88FohvzRshj
	 m94VMOocKqarnBVzsKZhmsyzP+JqmqZvQ7guGAlYzYQuL8e+Z2PpF75HpB4dhgNHF7
	 w3dojDeLeRhWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E26BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723019357.24104.1767137203621054746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b1e25ddb754d999d7fac838bf3653f7b14f6d95646dad79d4db7c487f5cee6
Date: Sun, 07 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757230193
