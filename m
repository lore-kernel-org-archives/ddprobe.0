Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C78188CDC
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725960954; cv=none; b=al5dEBnSzY/kDY3pivD8BEbQf7/JRXd/52EsPb76S6jpyvNXW8g65t2tW6308HDutx3TMgVkLm/rXe5yTa2GCSo9vTWGWNILmmOp3xQjZQclicFCk6e1jBdhBdy1NPCLyeVdCBd1t/rG8eNEJ5Ii9Gicz89+zXXMJzQBfM99aG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725960954; c=relaxed/simple;
	bh=lFWWGCOGxm9j6TbAQjdM6cQl7vFhd1/7rf2o13URCmg=;
	h=To:Subject:From:Message-Id:Date; b=HgZltecA/k7VY1YvEWCo1K1sRomX+AG7R9xA+7yehXmnZeW1ebksG17hygAYgr1YY1d9gEzmg1Hyp7KUEr7TCDAraTWzxtA7B8IRjQsDoPG1GnnIW7f4qKgoDsKQbD+K/fAGwO5+qwkyYYRMsTY2yqBWm5ANlWAwY6OYAQzXJaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O93MmnjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O93MmnjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44B1C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725960953;
	bh=lFWWGCOGxm9j6TbAQjdM6cQl7vFhd1/7rf2o13URCmg=;
	h=To:Subject:From:Date:From;
	b=O93MmnjGJK39TVxCOspYd0wWCr8IKvG93PmmfEMtR6Nru4Bu9q5Q3LbmUlclVipSY
	 dUt2qib5qnGrVnX6hgOrTkLkbIw9UMAd4pfKUyztQ6KKScITLHZTVjxN682TkN0CNY
	 Dwt5hfx7X4RqrPoGAyQ/Jj6XgDEnYNRkGUwbROzSopFtBb0CFS1QYpezy/W/PBWPio
	 ACVruZ6OXKhIGtpq6mG7pOrJEDeFmXbmwPr1BWC9bHrKLxDlASL9MiqspbZJ/NBTGi
	 yMwI/VaC7YmLp+LybQXm72mOjIcwzMoUdPMAKZ2e1cuAGN0Wrkq9dz65ylp4nfUTQo
	 jMB6oBGnEsasQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959A0ECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596095360.16428.15558428654205368733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4440dc918ba448fc92d35edf73778ba280a85905bf9d14e80519447e4f2bb736
Date: Tue, 10 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725960953
