Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DED52586CE
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754219394; cv=none; b=Bfbg3he1Ax8ITj5DEmR6HTtS9UNKvMIPU5Q8wlEiWysoaGeCm0MxqLCyM0mxQnCjR8Yxd+b2ZXNctcraiC5nf4en/K8/cRNqr0bdNBDEUgTBAwQxg9SH3gw7v+2nuXTlHKqqPTsN8D9RTActpbeKtu/WEc5dPgBxWaHmveGjF+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754219394; c=relaxed/simple;
	bh=8RciAvi7M11tF158sZfthgriIlGcKE+95HuUKNnwiaM=;
	h=To:Subject:From:Message-Id:Date; b=Go54OUhXAhIfbKywJnIlLTP9SchPZn11ynQOkULAW3Z2SokhIHRIm5b/vlF+PTNRFhhEz2KquDBI5+x7CpTZAFct9sS4lrHJkcvNI8emjwEn/rlwZNqVn2igOtfd+oLJUWb7KssHgO5QJrWMojeIdqD90tVrgMsbH1hvB4CwLKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2hFwFVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2hFwFVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754219393;
	bh=8RciAvi7M11tF158sZfthgriIlGcKE+95HuUKNnwiaM=;
	h=To:Subject:From:Date:From;
	b=J2hFwFVdVLuSMjKwhC+O6wCjPXMo2qKf3eRb/G+D64q2bcVP2zPOdw2bqIVMs8B0n
	 H71OSiWOwbSiF8W53XJUMXFHPGsT4uUvEvuwgVGtQpQm0ZKOpWRuBHnGrKlD26R2U/
	 LWkAPDqxMBXiNQ/eRWDffQ6aCr17czN9aBv030sXl+oYXYbZ+zw3SLaE6LoW3aaDVk
	 AZ1fBw8HOzV5SfuBoe4A5SoHWagg/PtgI+KwnpeQcjfHiJYYKDy3q/Gi375x6GhlUQ
	 OVFORYG1zA4g165Yp9T/pwK05MVW2Hz91lIhWkkoNwluN6FmWJh0B7yHnGAwH1f59Y
	 XskozJbC6pCTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C9C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421939357.4814.10371261791813932303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae240cb9134ddeb7bc93a47b4bfdc7e53e9d98a6adc9e1d393b26210ac61efb3
Date: Sun, 03 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754219393
