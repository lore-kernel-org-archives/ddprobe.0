Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D48F17AD66
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713472763; cv=none; b=BFrsG/0K3+3SKU9phhGkh7So/Xdremk8pjobNJJFvu8IoDu6wpFhsiwcmxV5erBz+ObnPFhYj5tfuQarnHqjSxYXQtQgd9Fi2n/rasCtSIb9j3O3xGgYltzYoRtuL8/8I0I2BDP2PLWZygxvCf1lCZjwk53W+n+6eLYMYWeAJdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713472763; c=relaxed/simple;
	bh=kpypIfsgOU1A7AtV+0DoaKAOFJ8PGbLkP0YFUKzl9fY=;
	h=To:Subject:From:Message-Id:Date; b=uQ35JWv1xqR7ZooU/HvSYL2Pl2zrAHq/t2Y9Jjm2QHd/VDNjt+ZTfrGlJcFHZcqJfeYmdkD+AimhlUW1uzayRx6pa9j0adZxNaAlGjdCklfvGnItIJztAYPXrBi3mjKBd7E+xvO4v83yhVelrThJX9DRpvLgMjRtjC0V/PFVFMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYcWOYZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYcWOYZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D512CC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713472762;
	bh=kpypIfsgOU1A7AtV+0DoaKAOFJ8PGbLkP0YFUKzl9fY=;
	h=To:Subject:From:Date:From;
	b=UYcWOYZRLaBIBLYYkmD2CjJnCiSrivZOdhCQYsUJ8Bv1U7x7Wv7duiZEjGB3gefQn
	 FbwQVMO4d7b4QPCtmC88gRSp2moAjzy42OP8VxVb+hG31ph0MbzyRg7NXIWxtXINNf
	 NPCB/vJEWDjDSyjIOD9L0SdR9lW7B3Q1pAJSCvhtHsTZq5eMyos3FWbnNgdNpNbw7l
	 95bpZbYcJes9Y/hOZ9vzRJPKeY/4GjvdNOdXzR6xvvi4whASTjmLDs58XGKn8fuJC6
	 129ozNZ8MZguWfWdrFhWy+oNEhC5lcXvOffwRPps/EHihSH442kofct4FJxHQqwRki
	 uJPPPibaqkRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E71C04FF8
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347276279.4678.1110928141589761658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa94ead3da53636e8c2beab882bbea23060a65db80034ecd0302ca002faaec7a
Date: Thu, 18 Apr 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713472762
