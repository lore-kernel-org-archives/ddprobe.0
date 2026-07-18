Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A8B2045AD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784369914; cv=none; b=L27UABK/XkP+bzbRbcETSZoV5vzkIIO9wUAlgFMaojtDz97nYiO0IKjF/ZFFgF1eImD2+hgShgrKVpEaecVls13POcVOcLl6NgPaJhohYpyEue0pcd1UWIAefI0BNpBalwd2Xot8drLqOn4MDL+W6xb7QnPIrg5aikW+52g3klo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784369914; c=relaxed/simple;
	bh=qQEP/ccJXgkrcQQE25AXvR4aHFLUc9+zCXyOAUMwXLI=;
	h=To:Subject:From:Message-Id:Date; b=TvqnBtUo0yjsNF4+d9Jv+m+uNTL5GzFv3cf7HkthfUHFf+OaY2B33e+y8Y/Vz0QhUKnDUiIxE/dWSx2iR52dsyQnRP8RhQJmPziW6IEfORu2Pb4aWZm5RgZkrDt3Zb9Jn4JiSVgt9p6iaznX2EyTJcaOZlCCes+jZ8e6CluPSIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuAOUKhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuAOUKhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32FDC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784369913;
	bh=qQEP/ccJXgkrcQQE25AXvR4aHFLUc9+zCXyOAUMwXLI=;
	h=To:Subject:From:Date:From;
	b=OuAOUKhwFXzUr1dVujIorjnzHj00dSuNJzDivdKJaTFabDq92CDbfqiV4W0Syd4GQ
	 jZsUOEi79Romjq396GYnChH/0dipR4jnUdXN46JoZEEwZpMFzNLbOJFXtaSKrbu5YJ
	 7GLkDHfvyb3s/e4f7Y18riwSmcV16PJoRX4BNv1xGQFRb07acGTLl0QCkZjhu9GLUJ
	 szG4mGV9AcoPBNGoUYGVZG5MAVqir+C+3dmuC5Qu6DYiZ5RxF0jAkAvISKwfoXSsLy
	 KKqdUeKU4AcNahC/H+2ruCXn+bx1pIFTt///Gd0Dyo/k6oFgNU1Ntmq4m5JRUjcsKD
	 efQCtdjy8yxqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA2AC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436991368.17752.10816259478423333992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d94184ca6107c6d2d5c12e279da7c2a52c44dcc696a124fa0873beaa3490ca9
Date: Sat, 18 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784369913
