Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6121F9F7A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772868294; cv=none; b=thm8yjkjv4wCKeFroX2tGmpazqCAioX5t4Dbc9Cr6glJ7UbmhQ8grbmUyjUSGCWsalAu7tSZ2noufs9MGDxvGrGO7t0ldSXhEg3qjn8yap7TFNdil7hAeWJYZ0Xp9Ke4UbGiWE4Em1UPo43zKIYdeFM3ZBBmL2A5pklbsgRjB60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772868294; c=relaxed/simple;
	bh=spmpUS0w5U38BeOreBeL0GMfdFOtbH1RaxwPBs5JS+U=;
	h=To:Subject:From:Message-Id:Date; b=WW7yPmTheVlXmwTGezKWBN4U92f4PLvkrFAp45djDtqtKzXsuQDwMJybRMDTj9Eyh4LffMQh6ZHk6mQQv86nw+BX0r1IMdfVB4+VgSX6J3rUSg3lvcaddthK01RyW8PUDvI7AC9fYx+G8eWbXkdbYfxn9LnQcwK3YGjtgi4Dm3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2Vmz+ES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2Vmz+ES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6D3C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772868293;
	bh=spmpUS0w5U38BeOreBeL0GMfdFOtbH1RaxwPBs5JS+U=;
	h=To:Subject:From:Date:From;
	b=U2Vmz+ESDyvIo5vZobPbNh/Ep66zIbRK/6RgatUyMycPm4/ZBOlpliRdTz6LXxqHY
	 hpjE3Ri/LOa2fI1T01go7rBOlspJJ02f9+5ZKHrX2/c7EfkMnVp9wE7mtMQBKst+gv
	 JI/u/piRabL9JZB1AyPH3AgmuJHkFdxG1PHDdZzPuJ/Ciq0Q0jm2CpwZ9+fG9Qsrt5
	 Enie7Kk3/ejr7w7qcH8FF+oVekY2i1YTEt2Hpd7f8lJXzsU7TzIeMFkRY9TPlSUPbb
	 ZnLwPy2StFUPxQkl6OAtUUdPby+96uklZJVoyJgcyT+NujeYwZU8n/byyP9c0t5fnt
	 aVeV+QBunzTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC14FC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286829363.32115.15235850626848126749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb200ff5129e7cecfb4b6bdd0504166bc6b20dd30bb246eefcdc0bb628755ed1
Date: Sat, 07 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772868293
