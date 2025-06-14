Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501032AE6A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749874194; cv=none; b=OA4FbOAnYG+tWKwwRdRdTjVIDaE0qufN7mC9tmkB7ySmkozCg2qGRVz6XGYmYPpC1tRqA4zI81SmAsFLl9rIywqROQF/X5GQFJsHpsEMVTPGkeXrzPtfyroBzbAViamlAA8jebAgaFXImbuKJQQlJYf2qNTBQOqC0fq5bpkumRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749874194; c=relaxed/simple;
	bh=I50f7zaSz6jD7f9G4wlSDr9bZlMIN/qPMFg6IMJeqPw=;
	h=To:Subject:From:Message-Id:Date; b=G9LpjGlTJesIaRvVlEKdVesG178PFjUpsTVgS2QkrY+DjvZqTs+Hr0UhfxmcwYpTK/r6j4pRtmVISTt2bi9YNJWLT2a8yl277nAWOyROSsDouoMUv897r8fFECYgUXlsP20TvsvW/trxMOoEfVPHQbjyYlb0WthE/UFBzWnT5K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FePRv75T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FePRv75T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6167C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749874193;
	bh=I50f7zaSz6jD7f9G4wlSDr9bZlMIN/qPMFg6IMJeqPw=;
	h=To:Subject:From:Date:From;
	b=FePRv75TCgPkcFQ9Nzvp9Z9zXUUP6I9hkGf4yl5RXWWaUbg7n6/on+pPW00BOTbMA
	 nYirgc8NLrDICcNTCn6gOfzX/6cOXoXwcTS40l+xFG2i97DpIvz1y02YOsh7Sns/4E
	 WJ/g48jz0fSa+CEwz9oinBJzAWeBTyHEBAmyc+Rp4EWypVepY07TolODwoGTxyYpFl
	 3VVLPIQW4VQnJqfG4GrXKlZ3p/ketotOnSiHtWVlobbe6P0wj4xcoakSmnbW+YoS6B
	 TfwXOMIV+2ofw0e45JzsirdZxFEJ17PjXb/RlkDeXKCbKvib1djddzYrkJXdC4s8gh
	 h8l0o/Utmx62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0C0C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987419357.768.13771349925131082612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331ed2c26460d36612c1f03ab3f691178fc51427b6374dc815f2b2112b4cdfda
Date: Sat, 14 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749874193
