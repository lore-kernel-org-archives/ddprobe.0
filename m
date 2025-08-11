Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F41F5B21A
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754877594; cv=none; b=L0dN6/mXceOeAbQqqPBao9gTaw41/Az/NQ2D/ivmXzQ7jiBXpbplgIYCdrC6JGF7Hcq4sfyhUePgAc8rVZd9TKqo4pijzmby/y0bN+L97SxV2NZ2B/HlY36SYFfYFtn4JotPVocOmmlXJVuzs90Dd/9Dv3YY9hd12KSU+u07/NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754877594; c=relaxed/simple;
	bh=iJ76mq31jO5QbJuUlP5NCATSHu6Pjy1zV8E9BJ+9CFU=;
	h=To:Subject:From:Message-Id:Date; b=HnT18hXZ6icpJoYpbVD/Mll0m+VHeZ0uKDSv15LO2xBjGDkTYO4Rr7VLZVHy627vJqVYNyeugKZAz3l6GXEvx8VeuSkUe6d+jzinZLf8Q4kj+n5Q4Ut8hQ6UMJIgZnZ84KL7I5KR/w/FhvpgQrhQ36j0i0O26sNJRys5QA7wpuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0UaSFyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0UaSFyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754877593;
	bh=iJ76mq31jO5QbJuUlP5NCATSHu6Pjy1zV8E9BJ+9CFU=;
	h=To:Subject:From:Date:From;
	b=m0UaSFyR4pZw7S0QcDDx3/LmT0eEiOsy+ewUH86dpfSKmO4gbl8RclK1/KN//RFll
	 O/5CxuDZTszfPQYUM9B6iYHXHlU/hXjo0q4FQ5Fl118qR8MfCkJCx7ETu/UvLdMVg1
	 DSv+D8ZtE+Ba53FJkVr4uw0lJnY1utonpApGxhcnlTpW0ues+vqkDoov0yZcxRjbpS
	 G7blX6xPR51zz86UrhfByXAwELPMmhpGzbkcYbTCkOqE8gPjzKL4ROYcOqHNPd3n3A
	 F3KeiDKHEZVWb9oGrK7J+f+yBJO+YGqPnRTQ4Pi2nYJa2sCIzL+mGYubhNB55jGjlU
	 zSF0Jbd1sZxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7EC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487759357.21223.16136839929449259440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a254abc6f5e62c651519ecf7ff9a4f7d5717cfdf45979a12b8c28e4c34ea5e
Date: Mon, 11 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754877593
