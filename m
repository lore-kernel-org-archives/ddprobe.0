Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C16E2AD39
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720185323; cv=none; b=NvKm/kKY/10WEBAT8PAY2SJvw4SetY4VEXCz3evMbLy5padGglBsaklKg9JGlKRbnDu0bsBzBwKOIx9cpQYOd8a39D2lPuybw0ijKwa2pce7mERxHz4f9kjTlXfUtaMnzHa7IwBeQSty3wdMvAqdoZbwLqJg+RoyhFUAZIMh4GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720185323; c=relaxed/simple;
	bh=hZ0Kl36eCg1tke1jbVBoI09ndZhY5cYyCxrQKxpEmBI=;
	h=To:Subject:From:Message-Id:Date; b=TacCEXIa0VKr+URnbkgxyKmGQyxKqf5nZN+hprV6WSlOeTXH2HTII6tRrpW/GSp8Dab64BBqFMHueQtkdKTzOy7j3mhfaygak8/bx/1lBmLGVJifpWbCWet2xRV8DRAGSXmg3KF8RGtyuCxdGeW9JWmK0OSsD0+NzOYSLwyRG+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6agNURU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6agNURU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAD1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720185322;
	bh=hZ0Kl36eCg1tke1jbVBoI09ndZhY5cYyCxrQKxpEmBI=;
	h=To:Subject:From:Date:From;
	b=r6agNURUGLkihrthuNIoQpYo4euxj9PQImimDAVtpvPRVhN4XxkKqSSoT8s0PMlln
	 vcxAe4tTRR3RqEXGbKaraBiZMOsfTxEAYiSyNk3ycg3vhCt5uOmzksstJkOrPuRQLZ
	 0eiuP0zG6U85gkK4BsME2VbILLa8Bn5TxynEGhtqsJwEhy8/k3+dtFgrRfIoR+9T7g
	 k6vvtGjEWTIQnvm75TyNcmzZP8OtMB9EczKHHj67ddN59mL7O7un8z+Vw1rqXd4cJv
	 COV/f74LmKTPdVcBKK4cFk4uZbJj5l0EilCVhPGT2VSt8ZiMX3VT2YEjXpl1+6Pnds
	 /w9JK4w0Xn/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C455CC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018532278.30562.11659564806362308621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2833842e784870628658fe3338ed41b668ce65bf75ba1a42f4c1471800dcae23
Date: Fri, 05 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720185322
