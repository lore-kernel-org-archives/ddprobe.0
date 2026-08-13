Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5988F29D26C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786586434; cv=none; b=mHPfAosUjrnJ2YFe68vpVh83A/s08iRBXvZdpu7BqrO29ROH1cH2MOXoGimPrTgFMC8qynt+GL0qL0k0smfHalXH8yjGpM+mD0Gn2s3GPJfxzyMIjAxhbHeyb7qGQYKPLHsWP0o+5zXywMB3bKdVJpibDsKm+QBbEB3aTuZr7rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786586434; c=relaxed/simple;
	bh=3yBjyZOHVz/U6RVriwgqlEqnrcZUz9DnzutUYlEfzNk=;
	h=To:Subject:From:Message-Id:Date; b=IymBb9o2JjE2sx5tkvL0hNYIZxrnGgJ5z1P2VlOLU1yQviFurbiboNTFB3kilHhiYPAUUNBClqEm1BFl5Jg4Ld3ag9RtPs7l/5Zpr5iREUThTRUqrZ04PC+rqhNT+t86ZqWdvVjq8nJ+l9oY+/fWhrV5/9GbFRzQ07/IbFCM6NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYokse8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYokse8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F83C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786586433;
	bh=3yBjyZOHVz/U6RVriwgqlEqnrcZUz9DnzutUYlEfzNk=;
	h=To:Subject:From:Date:From;
	b=EYokse8PAtjK1oUrOiVD8BW5k0A55btkGTAvZ/UzxyxgSKIvbSrDXzuRaazJ0kvmr
	 FzywdSJCv5/GrXUrOU3V5JsYAXC/3Muo6kqUMq7Na6ruk4d0yzfUJ/d1oJG6bYbEed
	 s7HRjapBXUt05OAXKdC3Mj7kMKjvX09YM0zu6DnCpit7USnBSgln4FkI9OLffD3oiU
	 EYma4itqmxpcvM4sISoaE3Cu6cn3OBhrtaiavpZ6vRf7RtuHWhNfub/meayAUHyfs3
	 aUBSy00yrm1GDQ9VzLWDHk3Hz9ohcne/vLtXHji9df32FGUy3PDwfoo0eeOHVDVvIB
	 DwJkZjwbakFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C51C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658643368.27370.11850839774455636895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e721664bdb3d112b930d4f8ccd0062fd73a32783cf0454e8f01302c17b7db6c5
Date: Thu, 13 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786586433
