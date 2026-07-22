Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDEE199FB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784681914; cv=none; b=BOWtwDIhzmBGQdMAAOTyHEzHOfjgDb+NXgINZJFj9IeFLFl6IjdvZwsgdwVO6qYggP+Yrn/TRG6z7m/8z0+6hmIN8JJowp2qKJF45231E++h0y8YZ6PorGlpaPzVVBuTNa3jtRmg+qWgIR1sFRFQbibhJo7Ogy7Tiw+5wFKsu6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784681914; c=relaxed/simple;
	bh=BMdkOYharpDoirfajZCfPe/C7a+aPu43biaCPPZN4eU=;
	h=To:Subject:From:Message-Id:Date; b=r+PDzBabjF14Dlh8gQArNuaYOqMefvDuCq7UpKltOOMg/felH+vwthHLVnOwwGV5zithJJ79sxCv1txQuoybsxk0+0/aCwUrntR5gXzSsRPufxj85vcOAe6pJOO83R+rIwpLLSeDTvTZh+/XWhfT2D0Pe2LKkhjBJyd3rI+FR+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+QoYHgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+QoYHgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF55C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784681913;
	bh=BMdkOYharpDoirfajZCfPe/C7a+aPu43biaCPPZN4eU=;
	h=To:Subject:From:Date:From;
	b=E+QoYHgUqz56IKMbuynklgFy8oQ2dFyGvXQVYxhGNpJwtDJzd8w9GN/O6RnYgont6
	 P4GY52+r+Z+v1IpHeOzxkN/D/7Ttk/OU7gHUd2k8sVNEPv652f28WzRXG5xJHCm5EF
	 iwfcLCN5N0iBpH/P8w4bFJ2OjK4VIQSfNDqAgDXiKYgxDahsMQO5a2n7jEixWcNSl1
	 zs5qDyTIED4Wc173si8KHF+kXR2LqZVebykvPP/iLmyhdCf1BhFLTpHur+svNlvOoP
	 4jpaAnWrr4e7Gen20a4xrXdVGpXKoMLf4/IaQwMpXnAz8Tjn/soOGJXL01Dw2grx2W
	 KXQYltzlPU+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BBFC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468191368.12262.33855628091510879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5558a1491a719bc85b20089583559de0765cdbff2c925ced50341601b93d74e
Date: Wed, 22 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784681913
