Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EFA3A7F40
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770294234; cv=none; b=ZYfW1D83PDu/25c+bd8ztUuOfcjAINjeAmDTCsFc23T/lmqVAhkXUjvG87NRwKLpGGlJtR2WAtvODPfbhTzfaAzCIza3Dhb4dCqp3yo7po3q5t3eWzGnza7nS2UpiPasjEEKRudeoyNACNqgdF0Dxnz+ivdzskbwlYuhC9YKhLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770294234; c=relaxed/simple;
	bh=4NZ8XXR6RVwCYUYgK8CQV0nQpk8l43fERq05EPNXi14=;
	h=To:Subject:From:Message-Id:Date; b=GRlCgRad9S19hBGu0OY2SPWu4oBlhlLfQAOa5zkkheRe9vZKhBD75FBYtFVtXBsCzteX3CO6try48Wt83rfycNsj8GK/FVPg8CftR37hLG2gkjaGircitDW833QfamVnpAJofAoFhcSjYkIBxNXwRw6CieQhNJdE+HLvIGbz800=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy+FR3ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy+FR3ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB63DC19424
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770294233;
	bh=4NZ8XXR6RVwCYUYgK8CQV0nQpk8l43fERq05EPNXi14=;
	h=To:Subject:From:Date:From;
	b=Zy+FR3ut0rZ1SCiGZrCujiae2Vby2NzwRNqABBBj/U0dipk98seu0Z+ofVXF7jTGN
	 PzhqGaoPx19UW5KcJOkNQns2GZI92Q7EYt4e4NQORzH6umZIWL7B2oldnPOFksEalT
	 1JDVKud0a3rCgD6MJFW0z+wBkQq/fL9SFwGRdWguxrKqbR93en0sblzRKfus8cAYcu
	 o/6Sz8WCGLGXIv6Mn5Kcv9e5mXu0k7izp+qy3j3GMYH51htxhHUfSxGu/6nSquU8Hm
	 JBTAozHpBmyrwVMpHtmX+S2u18pfJK4OzaqzUdZUxltSU6NsBxHaeI6T+soo14RZ47
	 NtKSPsOwdkTKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98227EC1EAC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029423360.19032.1289930709196630292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23e31b1c5e4f02da9eed082c33d35ab2751a3141b235dad5bc96eb987405479
Date: Thu, 05 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770294233
