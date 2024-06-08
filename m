Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6509242A8D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717844243; cv=none; b=T9ySEfBw7ASulfrC9GmACleOFBtNbm988GHFbjWWI+8W/hfpweh2EWWc4OckWTrUYv9/miMhLAJikp6szwJmR82WyoMDAW3UxfexbJH/GAf7gPlOJwM0mYFem+9fW0A29ScziLorKFBT7NR6fFiLoJEZMM1MPaF3ZgmOt3BjVvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717844243; c=relaxed/simple;
	bh=VzxNjIO1FweL9VKcPIUFEaFrH4VcEAs94mruE6DmEpQ=;
	h=To:Subject:From:Message-Id:Date; b=sguRifarIfM141RlKXQ9SPtghpGiIfa5Y1hrREZ/SsA0ZpuuC9xSvT/LJlLEc38aesEokK/JFkULY8B2JfOc8vzf4imjMiuprYdmChMEdZA4+oveUmNw8FQWu7tG1OHfHxORGO1UmpAGtKZbmtvKiv50II6WHIDTvWe3mAWrYyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZXkWosx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZXkWosx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC222C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717844242;
	bh=VzxNjIO1FweL9VKcPIUFEaFrH4VcEAs94mruE6DmEpQ=;
	h=To:Subject:From:Date:From;
	b=UZXkWosxycCLHB3YgLwVfPDsdMjUqqU2dRLEab5eVuZOgXiD1mb0x/sL6012X9IUX
	 1+As5JVdUslFdCHHGxZYQTC9SPWRCfcLkWBUo3WRZsybmJQ2+i3AQIKZ7J8yx+V1Mz
	 7/vaUOzpyQrcm8LG8I1yfmRK6t3QeTg94Tgxez1biCE+tGNzVshoD+46kb+fKU8vDe
	 z2WqtVLE4PddFgK+JUXmVzSrU+ey5SSI/zoBQZmyoCTMIx7Q/jhZRvXYanqzNAGyN5
	 vEHxbXC3/nyn4FoE9GcvKpRpSXa4qCPWhlYG6uaNn6nIggEcBOgmKg/+Q55ajtlGm6
	 V2bH5lQnJcmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DFDC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 10:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784424279.6726.8834038286387420050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc64316fdf8fb58fa5e35ed2816402a9f864aaf8de118d21b0006c72faf4921e
Date: Sat, 08 Jun 2024 10:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717844242
