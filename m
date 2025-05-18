Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353691D9346
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747571994; cv=none; b=r1bHeXZOQPLG7sSNWy1JB1/66ZzHQhbD6GXMG2GUHnP4CJbS5MPqzULgbWVgxLZXmw49A3IdGrEbmCykGTHe4869b5qdr3Q/AGEy7HgDBO7GEeN9+tnMHiyctJor+IuPPAjoYpuSXr5B+inwFqlysh9+cO65Py6215TynlVBfDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747571994; c=relaxed/simple;
	bh=BKtIPmKA2AkwZaZFmMasoksOxGSZkN1fNOkhKXHRbWU=;
	h=To:Subject:From:Message-Id:Date; b=o7CoSWkloDY+2JTGwki5aED2yoyVc+tYjYdDxhALqkcr7mhvYqr9TORWixtL9zN/H6QKsRQjPIevcd/7LQekTL1lRpS7NEJnf3IifeSve2z3LE1/KoQLwo4DJFZkAI3/lGSVwrRuAbrz4iG9QHIRHtW7u9NIsukKF9neoh8sbqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdPbPwJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdPbPwJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF44C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747571993;
	bh=BKtIPmKA2AkwZaZFmMasoksOxGSZkN1fNOkhKXHRbWU=;
	h=To:Subject:From:Date:From;
	b=gdPbPwJhg9yekwur64w+N+YG2HiFQJyIXtmbKGNpIh+UVN0BGLahGMy3TS/ge+LqE
	 u0dEB79G2rkSDXq8FxK6UIwmXck1yeu+AWbEqBb2BuShj76C9kZdOpEwt+ptH1Pq9f
	 3r9RV3Dc1SucegYFMvIcNgUME6fchHYF5HqgH8DHsqET4F3JXwAQsdxXFYWoErh/0Z
	 K3AK9vcgRwlYlm2AjxlwzORGKsV6lyxGkyDUxzxDi54H2cFXD8QHJqqVvc7VnAFB5i
	 7Rs3qspyLFYzamOC2be+9za+/4f5OtE2S0iioIWlF8/65oHrspGpUUwgsKQMrY/ywi
	 F36DfV4Lpu4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BC3C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757199358.9324.15302103600170849947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97a5c690ac7e916339b1036c12f32944716d4f2b41f0c10768656ca2b5fff5e
Date: Sun, 18 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747571993
