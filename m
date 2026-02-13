Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE3F3EBF34
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771011294; cv=none; b=byQVp6i2ox/qHxrdAIMuCAw13zli0RGX2NQA4eG6SP7n/d9h04qFOu1O3tRPMJdqWN5WMu1b79JrjYAjzY8NSSfJF25Vd2GJjNkJRbs9XwNYAgrz7IkMIH2xogGbO7rJhCBHdzD0jdn2ds2ZJ3c0ckrcDfTgnaJ2vGGYKV9iutY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771011294; c=relaxed/simple;
	bh=dmYJOJDCPVlezwCUlfyrTWeaYU6In6NwPAbqGWpOoEI=;
	h=To:Subject:From:Message-Id:Date; b=PZmKJNnqrdidTrAg5TVrKdU2gxZAhz+RJC67fGoqxPLrk4Hjwkf+A7rbWPBsSO5PReqUdy0NV0pZnb8PxGICo2btxhC40YmlBaTgszEzZmmoGg+y9HLtV38lBUy37MeIlU6ttJU16eC/T0vjzLyfjrkzE1sf9IdGBNVTFMrLDV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Usk1Fa+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Usk1Fa+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0758C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771011293;
	bh=dmYJOJDCPVlezwCUlfyrTWeaYU6In6NwPAbqGWpOoEI=;
	h=To:Subject:From:Date:From;
	b=Usk1Fa+BosgX/gALN73LxfTJFqM9cL+Zxsnhg3ntr1ovEm1LmrkJ0doKNlcLS50l0
	 LoPqaIV4CTEHVOYTzpXZiYWevT1RN6UyvBJu0BhixqWDOqoty8l07178EmhN+RAWG/
	 kqDZOnylhSs6hEEEWHKeA1W49rWliLkgza1m2dBN8WOQ3fu0re6CM3Ya+MqJMxieuR
	 wb7n9fQpCLiyYu1kN037ZOFMYc46qGCx+cCQFLn7kW/O+JxGeSdFYs6igchyOrLJ3o
	 Jl/OulRjxzLa2X/Ule1WNYircVY6nu1Upl690/tT5HExl+4Wg1piNqAU6tPUsgE1Z/
	 jgZnsKWcN64zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B59EF99D0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101129359.30301.14664419947559047353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ae68acd2c46b19b57ba6cef41e44a9549869bfcccdddc6b0302c551cd143f0
Date: Fri, 13 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771011293
