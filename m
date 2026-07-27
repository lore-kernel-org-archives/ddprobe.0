Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433932D249B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785156034; cv=none; b=AscDoCXxhS5YHn2IsOl9bY/Fn8GfdylvZEHQBs7Wv1yASbgNvDUyqQeio7jG4H8MMoyQYzx0zHHlMz8yd8NdektkLhXXP3EiwSEx6idGJ+bqrhzBuJFtx4sqEEdwwfS7XRA9LsJ9ttE+sxDrj2LnVSH1xboxVjDRirWzH2SRUTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785156034; c=relaxed/simple;
	bh=Ddb8LJVqYDBxX9f3lSyfsZ0zLXWv1jm4kM3yvpl7UXo=;
	h=To:Subject:From:Message-Id:Date; b=oACfXbWkbHc+zge+/At4qyeVVmWE6a5SUKB+fBY7KRvo1sWWKqrfTQJjrlhgPP2jlCnYe+YInkzWjtNGxHzgmfshnyZiYguCFRbnuSnsnJHiidtx2uKVdnwJlJ1+CsmON1mgZYSS3N6F7Gn9gE4RO/fqATYdXhf9c3QQbyecRPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGOknBg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGOknBg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE523C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785156033;
	bh=Ddb8LJVqYDBxX9f3lSyfsZ0zLXWv1jm4kM3yvpl7UXo=;
	h=To:Subject:From:Date:From;
	b=oGOknBg6ZDVvdjyJ/oRRwZrI1b5BI5ZDX52VJDj+56krPBHPdcx2bi9Gxpin0R7P+
	 jUl2I5xkaoQhNSHOyZfWJc20HiJ0HCpiSA/y8XhAvCszXS6fbhYx9vsROw3zZg1hP8
	 MLaZNUacMbDNmmUvwp0/nJ5kjwPSjguTkyjm1n4MmHzJkB4/cZN3KeIUEmfgRzlC5k
	 QHbWiJc2+Qjz06d0eGU88kTzhf5CRefi/auOSnOWne93omR4wGSuYjIUvoShLB5mxx
	 8msYhJ0xxWG/o6wMpUNCRektn/Fa0sFoA70y3D8FjJbBai9iV+e4kcj1FYorGotHaF
	 PcRym3QD/k1vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8AC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515603368.27610.14055827348815763175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814914e5d20b0c9dc66332cbc4bd808c24c03516d2d7a40ce3f02917884c4b8c
Date: Mon, 27 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785156033
