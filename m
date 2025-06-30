Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FEE2F4A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751308794; cv=none; b=DPqTeWtmWagglQFrmYjvXYq0NWIBIaiT4Y+qrDgIoMpDUv6ZZq0iKqFKuKO4W9cWWLbczf/4kVZzd+BmwRD1Gn/R62lM4bKBA3Gpbat4yfLsyuH5+F7yU+jiize+CYj1PYioRek2MvWme9+UztjbnR3YcnUuFyhl+r2vvZK6E8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751308794; c=relaxed/simple;
	bh=IZTLF5rtDimusetcmMH87IcDxozEA/DrzombT8Vh7tQ=;
	h=To:Subject:From:Message-Id:Date; b=mBVO15L7YZ5/5wmFsGE1yUEIeMOFGVpxVttFRH0wjWd/LfUhJXp3j93t96e5iKO4d0kAGPTUHr3pAwwa8tU75xh93fqOYSNh9i8ehZEl/IUK0YhlF991uJRowgkG54ew0DbElZaGR0oRJiJmInq7VizxI7LMO7qMdeKALD4DjUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ1IoP/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ1IoP/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B88AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751308793;
	bh=IZTLF5rtDimusetcmMH87IcDxozEA/DrzombT8Vh7tQ=;
	h=To:Subject:From:Date:From;
	b=NQ1IoP/KaLWAOpE0fNyBZ63OIaoj+8iQuZPiP+lSro5nod/C4MNof2ZomOduegXdF
	 0+aGYyuTiA4kRrb8tESehGkgt6ox07qdsOy2GIo87ZxZRwxZC3OJuAjQropYYC/LOV
	 RvY2NgiWOMhzSz6XmuM8Ye0QvhYNz50z7sntGLEQP9UK1nY9XhGB6PzuxUWS5yb8/L
	 LZFTIWwuNyDlK+aD2Vc0TYtZlZZ8RHu1jJ/MkdabKuc6OEwuVkQCx4Oom0cosX/yp4
	 q/DA9qn9O3Sw/bqHQ9a3nlTETB/qP0uYbNwbAScPu1UBM670SN/wZyAEccGUF06SgH
	 VnsF/QuLskTCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F397C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130879357.32722.4833759686464430481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5324ba017fe47c8d2cb6c50dc4c2aa26a549f47cdeb05aaee1fc4e3f64ce78c
Date: Mon, 30 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751308793
