Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F376820DE8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705912097; cv=none; b=NEBn8BXJmxBaQfD4tXG/cPI5HCIdFA6M0nVXZq4q4DRk8hjz8XxaSV+cPqvm4NocN7xYnteKfXrQhjSvj1bmxrS+p/PGNRbjbG2FivNrJcA3b5+s0KxQZyWYnoF2d6SxAErLMY+NcuE+5i8yZGbYm7ppWIdAS0dVHVFP9l7RtP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705912097; c=relaxed/simple;
	bh=GWwS1cMrmVZ0EE7G0jJS4beohn5Kv2qQqFzeSee5B1s=;
	h=To:Subject:From:Message-Id:Date; b=uht6otlDTVDX2loTdtoMomq8D+bSLUfE4rKCt47sliW0swTrOLCd8B/Ptq8J+Tpznc5hSFpFpY6ipDSnfuevLp+w8LI4BUNYIxJ3sOY2IkY6mKwZxHexcGNaggqC+ZoyqZk90jax9Rue+KPgV1DXa75RMskWhyCrhFf7W5AXxUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIBHDl8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIBHDl8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B21DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705912096;
	bh=GWwS1cMrmVZ0EE7G0jJS4beohn5Kv2qQqFzeSee5B1s=;
	h=To:Subject:From:Date:From;
	b=vIBHDl8/shuN+aDpSs+TPvBIkuhvG0wV55Cstk9rk1wyKR4iMGSqH7wWW8ZwvAosC
	 nmeTSBZs0brYr9F+qXzovOxrSLcR5kERbd7ASagykQk6xO3TpMZA3htIFbdoisZB++
	 Jn6d0mraHQ/e4MXxbGI9c9XVXy6ulxtRlhu747miYLZ4Ao241cJ92RQbQx+V099+ub
	 jWuAlr4j0duzyTBFiV+eg/6yr198TiV142GUxoLx7FMXKWB5xT7b0SFviwnYMgvnXg
	 fLjL+Kp6Lg17RE+nAALguRnVhe2BIXou21ELngiekvZ+UIKMjeSHt6l0xFOCCUMYET
	 s3QMbCuWTd6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63922C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170591209638.12932.12143317393225926242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9f853981168cfa8adc904ba5eb8f5ff8209ae4f74433198dc7b5328e61d887
Date: Mon, 22 Jan 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705912096
