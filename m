Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3560F1BD01F
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741803534; cv=none; b=S8Y9xZmj/CNyhm1QCJCXumi2eF4QtcZDUn4y2mTho5fcL0q0PNZTLWaCYeB6J+Ds4YvDv5deGwlcZgLn1YwOmLI54v8DAuz6M/ZERLwCEVWVCoFNY3tz9i+fJJa7YzFiCrfWh0k9o8DvS6WTqbG1fZwY0OgOVhod1TKORJlGcm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741803534; c=relaxed/simple;
	bh=2jNYFZdeHJRuj+uTSMPWvAZM17ug3CGaQlImVpQFPns=;
	h=To:Subject:From:Message-Id:Date; b=LwEGzEJ+S6AKPYAN8YKBUCX/8WwvW6SuTV7GdCRMvzkUxa+HA2Ab11zcaXn5SaOrJ+byihAXdtmfyqskvJB0aPOiRGzGDNZemP9nj11mCcQH4nV5l+nRIdBtp8AB9ll2GHodLjI9fpb7tNJdnPe3Eo5iLud788Vjy22XV3gbusE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLT0EisP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLT0EisP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA196C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741803533;
	bh=2jNYFZdeHJRuj+uTSMPWvAZM17ug3CGaQlImVpQFPns=;
	h=To:Subject:From:Date:From;
	b=LLT0EisP+ZsDZHtgeDRMRZTpPdQzqf5Edett4qOgMSUd9DfmMw3XOxyBAx7ee8cZE
	 IUStpnRaDXGVvgEXGUfIjBcg/5hZCTjFEu4tll3QSIELyzOT9c+uTHONefmrlKWRdc
	 mj3akDRLNUZ5mpmhnAGnLqTiQv9rFi+rOy7ah0+J1nThSPjQyLUaSs8zxCHJqeINLq
	 ai+VNmTg1Z5E+9u3o9Uo4JAmS46QW+N/cxkGpnlaYQ9bXx2imSYTIOvEZzoJB5HOFD
	 iA4aP7ZLsuIG2Y3hrTzWCqfiBAy/hf6Y6JNG2BVcCePxJPwrELsczTirH9n07XA7Jg
	 ys+q1qPzYKORw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C01C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180353360.29955.11664730047207226829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b270c44ef3c9b7c6cc0c6beaf78e5505cab93750a29f4e0ddf48739d56a23d2b
Date: Wed, 12 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741803533
