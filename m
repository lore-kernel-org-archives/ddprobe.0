Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73169522E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719043343; cv=none; b=cfZ5BQIl/GWovzrdxlWZGUOQyGs2mR/8GGw8QghUHL82BAnhod9fK3+6jHj7FhfNklT0V/CYHTuV4EQ8CF4L/97+CwKmaZP6RcNFe22P0+sU715WX+p1cXQ43K7hWhWajoeOooL7/i02rIJOiUL+unCkV7nWpzSD0tWVTj1whB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719043343; c=relaxed/simple;
	bh=m+7ZZpqmhj+J1txuCjOl054RUVrkLbapOjdZX9l6wBg=;
	h=To:Subject:From:Message-Id:Date; b=nbwZctL1Bnb+DEPHkC3uwz3Lr/r5wcF8XwQO0YLXqo5+xAXQjW4od6HNgkEjhUKDkHboieBNXkxVQATEJDjbAXIhiHXqM8UP+u4GjXeFv1KsiO5mEwtT2r3A972v/RNBVEB7q3jp28VsbopnbdtYu0GfQjtFrLNcn8ZE2OH8BTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG0ioPBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG0ioPBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0117BC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719043343;
	bh=m+7ZZpqmhj+J1txuCjOl054RUVrkLbapOjdZX9l6wBg=;
	h=To:Subject:From:Date:From;
	b=LG0ioPBKZ+lXktOepA9ZjCLP+LEkRsTYLgaWLH0X2odKGXtb0IqFL9+S7NM/4gmLQ
	 lWCTYT9W+RVWKr1XmZ/1qq6zGIZ4GbciZ+nS8vlH/we6PZGVJctYXZUs6Cqo60Y86f
	 AzQkYAvpARCdRz3J1d8Q4cdyVx92D1fZFOz++jOiaED4egIJ3KZsuM35UGVP5ZHlMA
	 8EEne4zAcfEAFp8BvNIOGv+5f06xlHlR61DkDxgVSLWPtLcRTEuREH4983ijgk7JB4
	 HgoY2ad6qZU6PXBF2Q1oU+p2S7R7x7LOSoVla5pkkTnB6WlNPE45zbke9SqLl9R2VU
	 /wz5BgBhABYvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE92C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904334280.26615.14853086164617137592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9513f8fc1ca6c2f18b7a358c79f7edfb4a796dc3de19c2c1f85f663d34ee7f
Date: Sat, 22 Jun 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719043342
