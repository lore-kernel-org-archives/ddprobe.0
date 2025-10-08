Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2617725DCEC
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927794; cv=none; b=JWTOoiCROckrskWbi7VKIBF7PWliil2SYuMM6yd2FQyupQgoTx8Ov/VKgWY4uRyK4I6EdqLXDphhgQ3DdCNZOAbX6uoUb/Dz9MSwH+QFmzOXcoBlQx1vKJQJxEt15KDqMNwNxMFNGkLaWMZCg8jyEccmpVJhU6hU0qePtTUPIFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927794; c=relaxed/simple;
	bh=qNK0roMSpvKJ8BarrY7fFWDgSXyiObSY39P7ypm0qVk=;
	h=To:Subject:From:Message-Id:Date; b=KRaQc+Xm14VvT6FFOnE1clWHVnKyS3P5kErDqx3AShkbJKbAbROtNyHWPb6kA/Tdtf0v/vHQM7VEHJF4W2+gRIds6VRhnpZ5yEnPY8uHgNbDOYETJnuSfGQ0+Wr8U2A6q482jxJsViJ/tNPGYAoO2yyOzUQGQqyFYebM4zOq0UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRZfVWGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRZfVWGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A468EC4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759927793;
	bh=qNK0roMSpvKJ8BarrY7fFWDgSXyiObSY39P7ypm0qVk=;
	h=To:Subject:From:Date:From;
	b=qRZfVWGCEX/1/86gU24VcsPJTyd2d0aw4BPAzYWUImm5CRvWuUEm6gkpVtQ+4aoBp
	 KTBkmFo1ZWx5kDfOyDQXiJ34D1KP+clHnGtdnGxZazk17aIpLsR4Ni2dGzHaR+3XRh
	 f0tICe++9Wb0K28ygZpq6r/ySF8W+MXdL245756y5Ss0qDtodDKEresL2rSCt9H1/7
	 gOa7ee7WjMM3bbTFxGUrdAPtiu6ReHYtVIPhYtRvAdtZIUxfOkn+EiYxGMl3cXxj35
	 mc9gyK3BcWFyMbpmxikzzAzTm8wwfJ74z1rOm91HBbDL5SeX219OnqS4NfYc5d9e80
	 zlYALRLp8uCNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C3CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992779358.22355.13070702645987983995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6ec10432ee14f626dd6c408ac241069d93463fb2d4813ef8d71fd90eff6f70
Date: Wed, 08 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759927793
