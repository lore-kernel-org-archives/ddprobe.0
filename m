Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BEA1429A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721558754; cv=none; b=jsS/g6+2UVuzQutDwdnuL8pjEgnZR6AUy07O1c6tRqxi70Rc2BAZtV5XYK8UtwwLEmXRzHJJdW2SYqXmzlBMoU2mZL0C0vDABDg5qGCsEClUrQzzCvnIiSodjprEjfrBoILJh6g9oXt1QEDyljwfOnVKtyMlk5gQy8b+XdUDhJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721558754; c=relaxed/simple;
	bh=3LUuUBw6kX+MhPqmDm/VmoRreXAeTYbIWx52GZK6plk=;
	h=To:Subject:From:Message-Id:Date; b=uhe3l7zTudrzIFDpA79fFgte/1hJIuOc5q9bq75Ttgij60mE7TUoO83H2EY8ImmgcG4m7dr/u4SooDvtNVnvTveN7eCTA81w4h1sYuDe4vEeukaX74mPnAwBWTrxr7p9epjUIpO/ztcJcaIG6TiEABlFtZ3Ml8eClP07LwPx7Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeattWGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeattWGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B809FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721558753;
	bh=3LUuUBw6kX+MhPqmDm/VmoRreXAeTYbIWx52GZK6plk=;
	h=To:Subject:From:Date:From;
	b=VeattWGW/buarRv702dePZdbw48I0GAsd1W8M+CuB0uDBkvyH6Ey31euxD2Aq6bT+
	 Dhu5lyiQhxOii1id9q88tghHymaFG3cHJyjVl0hZQcr7L7ewWJ17psdDObVQ6nnwrb
	 LVLrblSyx472uRo9Yd5OogszaMPr5kP7Q4zPk6k8pkPEHgQDkdKdYDhyxdCNba7H7q
	 WeH1LxNgKvdFql9QwNz+UllVQT05PMMHyeWl6sV88/vXt+qR7kN+2lrlxAIjcMfqcG
	 THHrwZJgP3NM3h4cAeS9WDiu1lkibl2M1rcpd/RAto8ESd2CwUajOEcO+wh8fYmzDv
	 QVwDFoipfN5iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D6C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155875360.32441.15881112186483238659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ce4e2fbc6301369db8714710129e05bbfc756feb4e4106738efe24dc9048ba
Date: Sun, 21 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721558753
