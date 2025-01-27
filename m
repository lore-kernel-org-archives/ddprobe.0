Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DB054769
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737993954; cv=none; b=oh2L39zUtEIAHcLZeggPfcP3bAlNjHKF0OM8k4KUh1ubaGxj7fXgEiPlzvUa4hNcLqzxxGwPQ7NJ7ehyVsfJx35BCi2gZlhweAB1Z3pSqFyCj4+YvYqh7nK5uiMjULWUN0pUKYRg0gWwooGmRpgF5PsReE4j5dtnk1BY84vJdNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737993954; c=relaxed/simple;
	bh=Wo1I5IWgrO9A6CvQlAbOyhzA4AVJzlJEYF1LzEMwRQM=;
	h=To:Subject:From:Message-Id:Date; b=rXufAZIHAjj+xIq3wr3auYIeO9M/6xEY/22dpa1YZefyyodGZXhjJYWFc4P6m0HcnixPQwvn+CGoEDjM4gfaONv3Pz7cY4RTtbH4/VhLPxpii9SAukCVGd/IKT3nc7sl+veK1xiykBR2wzGno3XA9PdmwK/IEWdac+3+JoILIyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lio9RKVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lio9RKVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26ABC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737993953;
	bh=Wo1I5IWgrO9A6CvQlAbOyhzA4AVJzlJEYF1LzEMwRQM=;
	h=To:Subject:From:Date:From;
	b=lio9RKVzQbHhyT4pIMNtQxXF5JYUig7LC7LJWL2RoUVD9EhsDDMMjzbjUwUeVjR/A
	 0bRzzculnJAxAmgSQ8nc4qGrtdV8v8yNe+eHzmPRl/HZgOLdA9bpdQYz+vgNaxyEr2
	 zmu0gtTbWePq0SzTUeJHxPG/8PLNnOmAfhbMehmqeMSKNlC03v1fsmVnRjipxBmsRb
	 yJryffnguT7TwwU7cjziOleO7qrmM386dX1yXfM2DOhPQrekFfy8mQHhh4w5w0Q/Zh
	 2eUfHOElczQstlYrpj/GQrZr25aKQBB8wLW8EOpBQPoU7OUPNeYuJpNk/9+nok1r19
	 7N0zYLCBjnIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80CAC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799395363.13139.16425781810503302308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd1e0f5e7169066851b2d7794028114b01d3154094c1ce645f9cf0819f92cb9
Date: Mon, 27 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737993953
