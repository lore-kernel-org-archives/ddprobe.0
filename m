Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DB8F4A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753334995; cv=none; b=VQ6y/vD4hBThBIIWkY/q/Rjg5IuA/G/GgjIZZMrlasv7HwqeX6WA5tNG+HSPf3JY4JDZtySc6A2/qPbeczF/BEzl16NHjDcIhE5EIORDxmF5JyV1EGOy2Df8LZV68ab0J/zFcOZ2tnkzCngEVPiJD49OtzbQr2FZ67Mf9myzoU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753334995; c=relaxed/simple;
	bh=lXsOtCe3h62eW3fEFwUEhTr8I82kVsejHH/NGp8RHsE=;
	h=To:Subject:From:Message-Id:Date; b=s23Iz0EaJOMnE+FGXrcpC9scNSf61gaMJRibLeuxrF4mrU6xJzezOEenObDuoQKIIbufgFRnZrh21P9+f5kFFFBhdj5YxYhtSoPMCeEZNSNt+7YNn2+pFTCsRTZNKODvgOd7qCeRgkozCM1z+wQ/ATfDCsreEgE22jW2TgwO2o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvxMofSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvxMofSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D48C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753334993;
	bh=lXsOtCe3h62eW3fEFwUEhTr8I82kVsejHH/NGp8RHsE=;
	h=To:Subject:From:Date:From;
	b=qvxMofSEk+V/5zEIL10PioP84aCid9iFAQl0uILeEKbKg5Rzs4kyfGbLcpJqd91CV
	 rohsWc380M3/gdgWyMr/By7pAY4CLeTju0LM03FQRFLhjidHe5+e0KFjYkASjPMI7k
	 BTlTJsyxeawNXnSJyibn+y71i44BIM23DLVSh+R4V5j0sT9KAaK0c+yZnzrCNYYVH7
	 rysGwrbkfVOi1MEjY91thR5/6AHzkRgQBDxAaOrIP/LJi+etdBJQU+cBK4JiCeUiRp
	 fO/yjwppvbAvfGFX6OSHQ/6qg/0OcwGOQ/3KWXmZXLiS7W5ZvTUg2yvWxupzHT+nEO
	 Dbrul1qRYTlgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C5C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333499358.9534.11467691158956680128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d744fae0d32bd81287d5e0c0fbbf45cff031b866eda8b61533ed997a855a9830
Date: Thu, 24 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753334993
