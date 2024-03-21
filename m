Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F5B1755F
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711044497; cv=none; b=GgdCGJgp1L8Do96NzuF4R/7fiDos2NyGrlqpV7aOIkHTH6SEcZkb/VjVuTcS0wnW3eV5zNRCl83U1vBHCQsrJMYixFYPQrUJ2yjSPYabAXes4ZHPv7Jcb9nYc/yEwxpV4c/FM7zYabFCTwyvx2GFywMIMUz8EhimwRh30dHZUKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711044497; c=relaxed/simple;
	bh=ZruqG1IoEM1mGCVq9z8farqr70ktTiBE/0aTzmqua00=;
	h=To:Subject:From:Message-Id:Date; b=BRBYWcUlwwdpCSYDsmy10b8kLtgklWbbGDoO0pPiEotSdYaBDpsPe9gVm2GfD1nmllqR7MMcSnKpr+gIxr6XR97Gps9er5TV+vF9qFbwbTc3+bgG2Q+fOeUfYbqhhkEd2fj2ELYv9WhTePZtbZ68RCFhULZhiu4/g+b6i4TznXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRDj4jhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRDj4jhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AA2C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711044496;
	bh=ZruqG1IoEM1mGCVq9z8farqr70ktTiBE/0aTzmqua00=;
	h=To:Subject:From:Date:From;
	b=KRDj4jhnnq1Th1IQeobQYxaFU2GG6sV0+JyCBnsNmmLgwpvQ1oApuofliC458x3g7
	 sOdWOqFElBMbEVqB89osRbNjz/4q37/lpQVptJCIhwUI1TalZscW2bYY+tsw4ULqnW
	 cQSE2cbGXBrLgsbpeOxJLpba3KCNDml4oO7ynruNbykc9jbKcRU2cDGbmTAlHeEr9A
	 9TZWaXbP8dC6Yq/VrHCyQ+Jeqf5zZoBpkDg9KHAvQ3DoSYYDsBDL7MCKF4uYCWoViX
	 BgGjQUQtiUMeuXoPOIgJZFGLIt2d1h8DQ5ErAVPhaSq4Y4h4C/zfzxVxwhmQFDFq7A
	 O1wKiuC+fiuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671BCC6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171104449641.16746.11471781058617983829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d350a4b5211ba8c289d9af36910b400e3187c720d30adf5fd0b818acb38cd07c
Date: Thu, 21 Mar 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711044496
