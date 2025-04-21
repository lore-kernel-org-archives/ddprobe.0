Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA43F507
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745197195; cv=none; b=UlFFmn6kg6HZqSbmpRgDoBR8+fPQ7T7xpQGBaKKfHLoxCRDYwyi9Aw/6Qarf7KMYRJPrCQNi/RUxUH8NL3+HYFYw/l1V6NknOnU7Bq3evfXnZ9JJfjHk2K/0JM8eRX1I84DSmEi95vjs4v+7aVvdeiQloapPvcI9A1+SiRjmgFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745197195; c=relaxed/simple;
	bh=rwXmh8x8vcopgptFwO3Cb/0OKchKeCcTJ1fV0E5du18=;
	h=To:Subject:From:Message-Id:Date; b=jQsW+KzAYfGbtMAwnq3NfUItolcv+ATpkkF/JFOrOD6x9vlIjZxO7SFsI6AIjuAZSLIRcmvmt2hBWX8blm3IoFzfxcFZwkIlQSoZO5QZS0lZK/LoeeOzSU+OFbsF6KsfZOwu/XEorCqH8rGOYx02889xGUOM6TmIfy5tZZAS9TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY4C42YC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VY4C42YC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66DFC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745197193;
	bh=rwXmh8x8vcopgptFwO3Cb/0OKchKeCcTJ1fV0E5du18=;
	h=To:Subject:From:Date:From;
	b=VY4C42YCp9Gc4Uh1YFrFUe4yyLsLPhY8t5lxUsWwDw9l6jEOIzlxmuoBdfJ+TCNfd
	 Xy/ldhYd9IcTaD1UP+GVlW3scJkicrp+PSDfbtMO6/I8Vsnur47WMaXu5uAWJJoLX+
	 9TUO+8mc5r8Fwqjb2MdySTN/4CgXLDPABdERQQwS1pTqk+x75z1JNW67dEvH4JfkwT
	 pybT7+8GuLEPR+7f34EgCBLA/VPKKZIuMLQG0/Ucha72pTDUE36Avq64/o7rk84Sz8
	 2Wz/pihnIwJkmGWU5utthGpP9eiyw6b0Gs0cR7NcxpYLNW/9bfzPGXg1OCOVHN9sJD
	 aei6DGwSuKkIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FA8C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519719362.7142.11806235315809480764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39aea362855e06c8838f88b53e5a65a42b2bfdb6fafdd7acddbe3703f97db2f
Date: Mon, 21 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745197193
