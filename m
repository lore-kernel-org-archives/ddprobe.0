Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449B41CF93
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726402554; cv=none; b=K2iG1zmuylW2JDt9SPgRSrlpwpUM4vKqucDgOZN3xdF4y6ho85OwgnnMtWRiL4eSXsIERRNAAikZIU6k+o7A88QoKdy47oLYm0FC62LeWo9N114S8M9zg3KektXqLSGXt0rl3bpxpykTnflJOHjfM+iNBKoGt0roYUpUBofUS00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726402554; c=relaxed/simple;
	bh=YX7yXiYf5HbVEekOmoYYLq4mglR0Az6FoVQfmFfcCjg=;
	h=To:Subject:From:Message-Id:Date; b=n5D8AB1G7gykgjmXd16H9MKpz5axD+DaHMPsNF4msSSv9oiKH8zd8DrGcvdmB9reVQffTki+Rs7njHXAu4wf43MWRIRWD/B4A/3gC44+xlzj7hNzigBdieVvo9+EWdvP11mOgtZ0UkuZrS0bYdkYHwsNdlJvJw1phkzpt5f7i2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvQnJxnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvQnJxnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2062C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726402553;
	bh=YX7yXiYf5HbVEekOmoYYLq4mglR0Az6FoVQfmFfcCjg=;
	h=To:Subject:From:Date:From;
	b=rvQnJxnN1xlZ+Wn3ZgX7GeoC1pJfQEIGuAxPTaf/dh17wJJilnHbZderW2hMMGFsR
	 21A53vYv7tHVbvAEtjWtDY5OuRBRKPSkKVebcdtqoiDMtKhbLdqDDdvWsuJ8eB4sKe
	 cV/PodF6k3P9YQ3JqAlFttfi7fOUzvbVAdRWw+rSb2SI7qMMMZauIOfuNPKQ3DeQ8C
	 /bodxPB/nSUCtm6TcZy1iin4tCHpUENVgFM4p7weXCauRsOy+FE+vn4eo/uB2aoCGp
	 jj6Nv7hx7VPvN+gHWGwo4+EJdRV5+ddW5twsGUy+de8CqbIf8POjdzqQfijUKejtr5
	 8rCK3AiKamQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A34AC35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172640255360.14012.3242861084035207211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71db1dc3d0d23fd6f78b6a2ea6b0f04f9af4fdab71cda24b3a69c3a7d628771
Date: Sun, 15 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726402553
