Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44576229B32
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744901994; cv=none; b=KF/gyFIKlYRmb5bEg92aCJhOt5IZIDLNz2OTs+WdnPTG4t9ej6l6lXr9Uq5ImTHPi769yv8SJPoMH7V33w0iPJVoFub8QSaaCT8Ks6T/4ec3BuDRMuR5LxGawVm3auO2GkC/Gi/O/NAIQ7mW6uDvhbh+1UnXaidUpUI4fu3KVWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744901994; c=relaxed/simple;
	bh=RJN1zDYwhx9hRkc7pbrQr0jsCRdK66pc+6HrdNSpg1E=;
	h=To:Subject:From:Message-Id:Date; b=qMlG/ZVvwtULFK5lOfvqsyoc8iVBOshHD6yjoFvMScKI2dj344LRW3ZGmG86OLfUqTsywgnZ4cNnWPSiJ4R7xCnkTm1xW6RYZ7oVLMlrKwjKP+iJnoTpabXduP/Tg7HUUGweAkeQufWjCo0DfZ1t/2JYLRa3lHERtJGuD7Q0foQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXytUgo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXytUgo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB87CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744901993;
	bh=RJN1zDYwhx9hRkc7pbrQr0jsCRdK66pc+6HrdNSpg1E=;
	h=To:Subject:From:Date:From;
	b=UXytUgo7RnQ4DIg9eBj9gyRXorF+6Snz6pm+hxCJluHqUI6LDvZpXuEP3FhOAm87G
	 4apj/jW3RaoHz1nrLBYgsyrV4KjIVwOgwkH/egMBHnlhuEyO8sjOHPUZD4rSeOj8wd
	 H1VdbOigYVtagkN3tkQAry9H4iecaYCN9zSZrRbAAPHqN1wnIIFXkR1Cbb508DYBTF
	 UPmE0Ixc4iV9ucxebHjGe/IpYvGxBiWbq4vHjiH8Y0TMiqRbhhOOBB5+cbbBGl79kM
	 Pex91r8GzOOTcm7uxVysB6HeKzivO9YumPQ0Jo49HDN+XxTCnbFXUxGEqVP3G2/n40
	 PQ8g4Tgvp3Ljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97690C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490199360.5454.2776087284658997911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18836921808fd86d930eaf4f62fcf3b372a432e19c1df95ac06f398ac0c732b
Date: Thu, 17 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744901993
