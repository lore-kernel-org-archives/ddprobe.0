Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB051CAA87
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740952135; cv=none; b=WVhfCDjOadYcfuVsbWtlKbL55HMoe8XuUjx/z30469Xk5W17MtrkEOcg0akDe2D/cXJa7stRRLgZ44JtFoq+uHwCncVHsE99vjl2JQOh0uSd6WruywimVqD5zS+VVd3VIxMcQLqJDyk6xE1wlnHgVHnaZA4ihmiQfw/SZdF6zn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740952135; c=relaxed/simple;
	bh=APbSHbTE6hfUtmAq4PT4+hD8TdI4xKcXqV530FweWAI=;
	h=To:Subject:From:Message-Id:Date; b=tp1bkDkU+vrbSs7RnXwZjYz3rUCndy8jTy7OF1gAeFe9+L4jb3FhufYzlPjPeqtO8T0sORN1fYlg21nNDN4ncskxUKmnEcfueNTvdgWl0amPgPhrMNUMRqSxwvYnawFzBgt/U3kSJU/TtsO9MyoVmKUhSYsTRHdS7SgI1rErblk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcu/OWuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcu/OWuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14E5C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740952133;
	bh=APbSHbTE6hfUtmAq4PT4+hD8TdI4xKcXqV530FweWAI=;
	h=To:Subject:From:Date:From;
	b=lcu/OWuovIdWHE2PhHZYn8SWe/JTxEeQdY8NfqC3rK70lGlgh1kyQWhKkEueZ9WHp
	 /ALaCVqkvhVQ4xpQlA1BnhQeCEUrApbfeUTi89X84+hY/mlQu8Kla37XYfSZHhOlax
	 +bsELSJ8Oqe3+aWssN5YDATe0CErKkqc+nHdH2WjzG8L1CF1JJ+wxU4O1vJ7/q7AUK
	 ux0MF6+wfdq0AoHjH05OHAqId0FehxYS6cmVrOfadV6QOpHtx8B7fIsTKzWVXem2+h
	 +5HluMd3qVnb14k0LXJy4+3hacHu4gruFMQM2qwULkEk4Cwuqk/oZoGAbOJkgU0DBv
	 aH9g4cLF3Nsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B25FC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095213358.28939.7224395217357792206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abbf1d12f6a492bcf2219dda6d7d5171ff8bfdd0b42fc70367a8daf80187d7ac
Date: Sun, 02 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740952133
