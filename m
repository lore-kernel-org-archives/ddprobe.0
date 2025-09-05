Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98F8287E
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757035194; cv=none; b=YpiYR35LZv9G671ETYAl2x3/igzVtS9M/atQv+uyGhd2mSwaOBoOjTbjCUADrazBPG05e974lNmBJTjXNOfUdX+2I1CUmaCyMCoIulgRX5NwaxeONSwMxKASD5zBkvr7/WXG9ZwnxR2l45+Mjqa8o40pqHSyMMbSP9mphUawAow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757035194; c=relaxed/simple;
	bh=dfxAgwnSAdkM0klayjHlZ2OgVDgAjoA3hJf8QzmxbUw=;
	h=To:Subject:From:Message-Id:Date; b=aUZl6CvbfhQ6cV7br3HrzENfchnhPPk4pdvXJkm1EJiD4UDKtQhlTwc23vUjrRATeNChdUwb+CbFAkDKmlneVGWUXkP41VQ5EcB2pa08/s3SoHX46PpxX6A6PgqCgu2RLpmo+ckmfrHxcwYSj1AQpJj0rEF0/iDuzQHoGcul9G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIldlOAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIldlOAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757035193;
	bh=dfxAgwnSAdkM0klayjHlZ2OgVDgAjoA3hJf8QzmxbUw=;
	h=To:Subject:From:Date:From;
	b=aIldlOAjOm7Oh/mZyJaDw9ptvr1fuWLQO28W/w9VDqRF+40uRyn4lerbDFDGrt9rY
	 2jfYBbBmmMHbshS0OUONtbsFGDXl8IXOS0eG3UBuk5uR47lpKSB++n/aIpZfnAaz6k
	 fVZVLJqTnxbMta1Yu9/anCUJX2mRNZsBXIvf7l8mqZsSaxwuwslUta8uMy7tYjum3z
	 esy/YjcRl28RhJ5LhqcgLD9bdAODnQhyluicjik3lExUHO7gOH23f0cF6ZCY5934nf
	 rTViI4k2cEh4VVW2VfSlzwVlKXKrXPvZ/yupHuBVWaKU3VpSRTo6sbF7o974hTZI5V
	 QVywUvejVc9WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA2CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703519357.12209.1571079950051551241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31a2fe037b2fda510650324569cd3816a0a504629cc5330542ee73150e6bee6
Date: Fri, 05 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757035193
