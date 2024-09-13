Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F3B1D7E48
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726222554; cv=none; b=sq5/priIIbGfbrZYu2sROFAJotlGQ1sP1usLRZoZGgoUgDzpdTqv9RzO/9IfeeEtaI4Z1OuOu+zo28MELYYznZEb4rZ1h8o/oxjAQR6kI1NhBXjp8+vEoyEduNJTKyR8llLKsMI+2OQiBTd3F6kU7twiCYSF9YBhJ7xbBjkY7M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726222554; c=relaxed/simple;
	bh=LR5/pUxj/PKdTzOMqi7smvesiE4F8DrU+NaHPi3snso=;
	h=To:Subject:From:Message-Id:Date; b=Tgu8zftZHelQouyz2e+yQ51whJ1un5aLxXyxJP7o/3LALkxlx69woodgdc1NazkgW9SogzDFtW/n1CcVgLk6BUAywYGod7txAK70QCPydtBOYhqYao5DooLtvYHXNJIlkwsC2pULg5aVFFQ2roKclTPQqngXYk5ogbVOyrEB3sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2zVd0F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2zVd0F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC729C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726222553;
	bh=LR5/pUxj/PKdTzOMqi7smvesiE4F8DrU+NaHPi3snso=;
	h=To:Subject:From:Date:From;
	b=r2zVd0F+B8GzdNd14CxVLScpLkeArNirsEgKzYKkZxv3KjalAEvwR7jz8WthRyWfF
	 x+9uXZJcSzUlS3ai+c1GsEImFL5NrdtnxPDcjHs/p6XvpQzZe+svrIxN0tETrsCVjT
	 n2L50EarVsS2Y/7ClX6cQ3ilFC2RBDq4zzps87iIcTYOQvSN7oyDwC5LP93v2jN5gl
	 Cns51HxYyZyM41KdxyjemwO8JpwgdNt/ynYwQlncqzlBptgS3kX2gvlTqOgeDxQrvd
	 zTjGOugFpOdEkI7dCRVmSJL06pb0BIImAVsA2LWT98yZEN1U/I3FjTeasAAWprKrhT
	 HQ5y+8sxjIDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F96FA373B
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622255361.9626.14073590306172250534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19c73fb97e23deeb7cfdf58553f3b23ce0b691772cb01702337bf998955c15a
Date: Fri, 13 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726222553
