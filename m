Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79E114C5BE
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711561696; cv=none; b=EvtM4X9qEZGAm+CrakxBK8F7Dl9jGCL4sHncfCWtswn9ZN/hPh/kx+wGqZFHdS07BtFUItHY5YbL5AmrNC1pBW9M1StoRNRh0ora7TIEWVESOJTk6lwAd65QPot+xYyEuvLktjUJdRB2vy0s08ohd0ngnc1iO2OwmxPLXawzosY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711561696; c=relaxed/simple;
	bh=IYVvHg5OTzPVrWZxWLAbqk1lOw9PS7X7tof8pWMBObE=;
	h=To:Subject:From:Message-Id:Date; b=FIf9Gmq0v6QsRl+ykCUg8CWDJ1Pd79VKMG6ed7frBEle/BmHvb+BJlTmDEoB2AOkoaqbMWiTJO7g+Ag6MB+85eZRPmt1MfwxQfxTbv3/gOMF5QNR7li3kxHfQXyjJ+1XviJKtYYd4huT1jH3jLGtMgvH2FPthYFI8cyKZrnmmGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeCflxFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeCflxFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA69C43390
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711561696;
	bh=IYVvHg5OTzPVrWZxWLAbqk1lOw9PS7X7tof8pWMBObE=;
	h=To:Subject:From:Date:From;
	b=CeCflxFpQoHoen19qhEHpClIGG+z3Tt6uNAZ/7woh/YL/EhA0r//JM7lVWIGPotvn
	 alDdRqSprtmsZ9QIbcD6w6Um1E7iyKJK7m0sD1nga2aATNRmPH/fq13KN+0XViGbX2
	 12cyMEWLB8VAcPNi+n8ru9+FqlrIM7wTm0rLAe5BRtHZj4ZCJ/AEFocLvjXP9eZLHC
	 LGGPgR21pdahqSdsFPFUjB+6I4qjthL5sL1llKXuabm7CH4jfybQqvxxmHab8/1FAE
	 a+sLkNzKSsHWArZoPwDd6uHtDmsuV9DUQ7tEjdvBSPmrI842nPaDmPDoUrgudN1hac
	 +M21k3bsilZrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BDD2C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156169643.10483.10553420938809336320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f867e9401002d0ca2db481dacf1f74617bdc012c9d9465434a2f3f23d92e2e
Date: Wed, 27 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711561696
