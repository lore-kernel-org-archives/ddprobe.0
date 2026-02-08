Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1637B346E5D
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770567234; cv=none; b=DaXI6qfeuajsRwKw8QxnAftyUgDkGF18c7YPoUjJJemHByhWyvrVwHbYa/WBQnBeTqTi00g47iCC3TdaHraNymnK6q7kZzSZEH5iyZLwPle2+DpuAdwq+Gl8mhxuMJreQoc+DKHAgSLdtxSHl5gmfqQbk3YmPXkkFJ7frWPQdJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770567234; c=relaxed/simple;
	bh=kw48KkSW+PZscs1KAMxBDQo2goRP1mC1cEJXDB7q5Ys=;
	h=To:Subject:From:Message-Id:Date; b=EJxE9EfYKgDjKD16+VBQvhxavVv36YgceKXT2NRhfR4hgNYe3SlKsVwgOm4ntQSYwljlmo+noSX7cNXzYbWI9itQdSXb8GMAgnYQo6KwbIDEFLgr+Ti1nF3LWxnarqUm9ePbi1Zp1YKAGMEcOzS5FlRLSEd8RiEv0rTbs6ridYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CH5esH3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CH5esH3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27B0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770567233;
	bh=kw48KkSW+PZscs1KAMxBDQo2goRP1mC1cEJXDB7q5Ys=;
	h=To:Subject:From:Date:From;
	b=CH5esH3W64fItBmmblSkk3d7K+4HIuHLyxw4OC4cBFMeKomeCNFFTp+wFE/P3wg0j
	 X4s4kMwoFka7BxJYTmO4cTNkNTnnNCm4iQwPAGhTrVgPMEKJmFhpx05IrhKDNXFgCv
	 /nAv2AY1lkzJWez5y0iCARindYCXgm1yFVT/t/rzgSbp3Ah6zLXZ22ghCHkfSVWI/V
	 ddCYcBrONWpGZ+c0YBm6dRoSUxIYpKpLi2L8A4vLGrvmhnz2Dc8lJPdrBzUjhindDE
	 VpQ3Fj7Z/M7y46b7sE4blnaS+Sj8q3iQqN3PXdSW1JszQk+whKNXhMWGEb0ftte312
	 rMx+Mn1GYzWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD095EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056723367.5223.10846550573307831706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18b742ba6f1993b140706ea680c387b8914582e91920de9de6294ed07ca8e9e
Date: Sun, 08 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770567233
