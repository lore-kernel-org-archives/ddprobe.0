Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C6D5234
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716346403; cv=none; b=Zi5PiBgqYV2rpaPPk/Ygzg3pSb+egwqcKOmAx1K/6MffxwsLBKrSFQU9Wj5Q8mfZQ76SX1Ct7eEeIvM+foVwtwzVS/ooH7OvSlb9DRwbhRZEuBXet3vgDX4fIjwE2o7EnPX4chkL6slxucN1+j2hz3RYjpP2EviWIx8jSMl023s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716346403; c=relaxed/simple;
	bh=NlnFoF3/8h3NWTeJnPhjCfREJtx3AvEatpqWv3KHsoc=;
	h=To:Subject:From:Message-Id:Date; b=lqzs5LlaIPMuAItuDXZTcook4Zvn87Vacf3mwawdyQzhz1UCzrO9nkt0XWpjcIpcsgAgeSeR3JvsnYly6D42SgvzFKke02T2N67HuthUIc0Z74BQmiGGOIs3bxertN7eZ3XMn6nqnULmC9EpP5aNkz2MhLEFjOT1Fc9tuWelCzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIYYTvS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIYYTvS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE504C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716346403;
	bh=NlnFoF3/8h3NWTeJnPhjCfREJtx3AvEatpqWv3KHsoc=;
	h=To:Subject:From:Date:From;
	b=kIYYTvS51wETgGvH/SM+lf+xJJ3woq7UUZpdSr55bXHlOJp5w2uJcBiPa1EPXljbf
	 IOJ9xuXMctvoQvbFdx15w6KUXUGvw/LWrCgPT44Xs77E+v05nI4gdW0yW4aQWQF8MA
	 4q/3+HI0FfMeCkD8kOltTmPwhhb9huupkrEpxIjXxuoX5pJu2ZxxG8iXii9fNbTKQb
	 7tKKc4k+TM+VKlhRC2mZ2ApM4zieY7kzyfsfZ+wyfImDCJmwAEZ4uMP2uOLQzEYV0p
	 WupG7WI7ha7VHp7iFvUpjxaX4wJbl5YMC+V32FBC+aOU0UbljqVSiWPqBnAlcaSq0E
	 HwzuZAZ45KMWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1018C25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 02:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171634640280.23297.9988712103613292696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e31b127f98063942c5e4fa421d49c66cb7cc9284339b642bdbf21d990051abe
Date: Wed, 22 May 2024 02:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716346402
