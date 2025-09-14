Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8F20296E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757816994; cv=none; b=X9bf14CVwpMGRkjdHnn1hOeFQz5V2OUQpoDLRZnJmGj7LPYzllKPe9faZhKMs8Qu26xGnE6HAePOdG+VP5xKCVR2X0OJQhP7L0I5v06b5ZJ2jte73pB4IgiPjfuRYnEQe5DatcDEpf1JjkaNV20TpFuprhnkUTYDh2V5eForkjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757816994; c=relaxed/simple;
	bh=zZ1tLMlpeOaxZcdxjH6f3woqkEBa0XZZ+7CCV5a7DyU=;
	h=To:Subject:From:Message-Id:Date; b=giUP/mnd5dZEvwW/UjZ3OkK5v8AY4jOsOdlNJ6hrScAIeB/OfaQEvc376WGbg55kcEXvYU9PPgg9i2QFm0Z5UH5MoFc9HHr+6SRwGPBKUu/Je4SIlZ66ecwOxBq2gyFo0/x6fnZqerFx9yLP21vYmjfOS0Xt1RFe7ZFztbs4j34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc7kq0m4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc7kq0m4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757816993;
	bh=zZ1tLMlpeOaxZcdxjH6f3woqkEBa0XZZ+7CCV5a7DyU=;
	h=To:Subject:From:Date:From;
	b=kc7kq0m4tl5hvwYmyPmPifX5cx1mr2V80z/o3yV27Gbf+lI4bgdjUgzEIq1GzNiWc
	 2sPm0JeXW/WhnD4lnEDyj43YJaSKuyFKj/P3rqYOMJE6eIHitP3FoKWzxMz1mAStF5
	 Edn3KCAMlUKgD6rKjtPK/ztoEXyqPSBnKZnfzXeqV6UYwjjXCs1Twpv114dBECv3Xu
	 6NULV3lWS1oiYexgVTt9lDyU2shhs8aNkM/Ev1qRcIGX3aWKkLZvxqmzyAgseA17+F
	 y7YZvegBziVXdPJh+5FYN8iFbQQwFjFJ9Mkxtw9R7KF5mH4jPjW+JOcGHmMG8/55Cj
	 AorUQLEKuVreA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF15CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781699357.23375.1895289728696101174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191e0b693dc536f8384ab0327cf2b81e3838512b76015cfeba75efcce0f01ca2
Date: Sun, 14 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757816993
