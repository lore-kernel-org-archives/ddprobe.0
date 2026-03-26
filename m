Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD7313277
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774491294; cv=none; b=VmFdy5rF7NT02wAgXnitakP8+0OV70dLjvn3O/D+CyjmjRJpXoGd27eJ62TB7Ral1E6dmN5o6h0nAcSRd1ZZifR57mo0j1sEdF4pbTjcL4Q8SLNiDW5vOB97cMg40e0q6rnEeiNByiIKN+RtUqX3i3GvjTJ6sB7bfEL0+orFH8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774491294; c=relaxed/simple;
	bh=M1N4C1tfAvYrtjIBUtXZCfQFaE0JNZ6nMk7Qb6ScOqI=;
	h=To:Subject:From:Message-Id:Date; b=NaUOyDFp7hNrQpK1HNktZab2RnKlub3rBB4rFVPijUqi3XX64uZo+Omfzdn10lHCWHUrItxr/2MRa0xd+9hnY83qJOLRH2tqbi6ZA0m1Hw8XqKUOdy/QceV7cCZYL0LIk8THUsmN+jHZzNqEIyUu7K11fc1FDIlfgih/cpJ8zJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwmOu8hR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwmOu8hR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A700AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774491293;
	bh=M1N4C1tfAvYrtjIBUtXZCfQFaE0JNZ6nMk7Qb6ScOqI=;
	h=To:Subject:From:Date:From;
	b=VwmOu8hRJbKjBbDRhQGDYec6OEEqR38gdZRK2XAAYjQaeM+0eQFKeyq/xd4xF1v9J
	 cvprkNwEjAI34X1sY0stLAf4zEKn16KUJ8bQKzVAS29jZbfSWem2Pi26DgkfX8rM2F
	 ovH/2FOxWcQYTsGls9TInzICoVQj0GCm0y44F1RSACi11aSnsgMmuKpm8hlFO4Jgfm
	 LVMONAcXCgb9TqvIa/PC8ycDDoPFQYpM5fue0ZM1Di6o0lThAR3v1zLxKwzTrjo6rX
	 xOmfIYyp3o7Vx959ukMYvEI0DiSeyqlNpkmMnMLcNaab+R8RfmZeP/MJvQnGF5vPTC
	 dXO03ROZWqOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279F109E538
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449129358.15843.15800989431219488851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58158bd6c8768b0946427ea2ddb49df762e8c022dabebaf31ac664ba157d1393
Date: Thu, 26 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774491293
