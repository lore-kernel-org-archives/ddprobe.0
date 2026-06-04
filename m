Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3642937756F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780567474; cv=none; b=GrSUAl0553SNcDHdezkQiYUPyfd2w1hJooRrnFNcj/rH4alshrptzsKvyesqEVJKQdXq3RlNz1S3inklnYHU6R5Yc4NGaglu3emOmIRc0YKE60ZSvMHeIZhCLblTgxpqZh4KECaSZp9QXMJdbJb4aR4ptMQ8jLpE8ndPotoP66U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780567474; c=relaxed/simple;
	bh=ttRvMvVja0PH1KSuUhDxJuEVvfXh8kD/dYDOXTjQOBk=;
	h=To:Subject:From:Message-Id:Date; b=HArAcdeY3YB2SWK7kWZYNNF2EBoMrDRr9G4EqI6a+zvT8C6aYKkGC3E0yCO9nSgcHbtoLgZ3l/LLqTBZSfO2S0qpKxLOi5Im+5qb2EJvqLnjhZYCiyyVaTJYUSiNRraMtsz8NPxyzg6QLrZfw7YzHOV6xgjPwOjyLUTuKVN8Lkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMuJ4Eyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMuJ4Eyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00B4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780567473;
	bh=ttRvMvVja0PH1KSuUhDxJuEVvfXh8kD/dYDOXTjQOBk=;
	h=To:Subject:From:Date:From;
	b=gMuJ4EynAHE0DVgHvrt/RhIx2+gF+XmbERqyO+RsbAh2R1/zVNJ3sOc8QxYXFrSEW
	 3PWvPQRZOEOmyFR4vTAa1mat2M7V0Dt8rzrFcWjvXWAETbDoTFGqdYuQp057g6j0ME
	 9GWXiKmPMB6/K3kqtQpIvA1pFe4z34jZaT+IARhh11pGAHKeeLqwjw/ilukisp0NKo
	 CMeMwxB9r5tH5oaXjt85Bws2OqSnvj5fpmuKS8sMeoOpecTZ9KhKVArBdOT/5F6urY
	 0ChF6gcffEBZS+jbS7BXu58wSalXgnvPMG2lRj0xLfNdZ0wiC4h4OYT2Im3lD0bHWH
	 hQQJ0QYOLNrGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFFACD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056747370.23654.1859704470247652264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5caf76645ed8cad9212b928353a07e430746b39965c855279ec908f52bf4381
Date: Thu, 04 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780567473
