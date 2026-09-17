Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8AC456287
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789635036; cv=none; b=EGFe2fB28yrcDqkfQUTroHgA7oz5XcYgrzTTMBGV4MC0EtrRx/1OTdvVT4A+x/naV4EwxXcMmJeYIzHbE0auRpgM3Nb29bkxxPuIkgY+wJFc99qJwrkPlSbfz95Lxv/sudxZoyMG++bfXAsq5iczDGsaFPFHZw2/lxIAaU2/0o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789635036; c=relaxed/simple;
	bh=F4qgiVZIlPPMCK5AXSMwQFCVhTwvIH95K/g7LewlhWA=;
	h=To:Subject:From:Message-Id:Date; b=bfHwfOZSWULPjDD6/fVYMWyf1eaHG0x2XDSFV8hFYPhVRv23dSRHeoGfkbISwTyLlM+wHTBOGoEqcT8Cylc0BruN1UK+r5lXafnil734DZDGFIx+xrQ3rZK98I40l//ZO4HwLg7SOUja1bXLQ+jR1V0feZO6Ty3F/T+BUnA8TCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLoNJjEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLoNJjEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD545C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789635033;
	bh=F4qgiVZIlPPMCK5AXSMwQFCVhTwvIH95K/g7LewlhWA=;
	h=To:Subject:From:Date:From;
	b=SLoNJjEFF2jQ/waRt+8mjSPGYD+vA5qLMrC46tX4rtHrcDjUC2ItsqfCA7XvYfHOx
	 94NbSOYXeAB0yqaegC8IOZzNoMiDV6Acyk4FdRVhLtW7EVZHIfeRYrb69d2cbsqzI6
	 dPOSf+E2TwetN+VcAEwCxMnM1PvFYxBYkgf9cgx7Sjz2MURGn7wMgu8iG+dqTutR5b
	 VhMg13OvCYryq+3b8SvfdqVNV9+uM3Q/RzeNpEimLqkYZI2lrxBae9i3MXGLjcY5sS
	 QvrX4JZHX/uRlbw/UvGfFsq5k4bO1/IXgw74Cn9mq5PZ7KLQ6fWc37fUgODIv4tKW8
	 uJkSrFgkLXRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B11C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963503372.28523.13455550885633540834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42f6c13e8718080d4731307bc4b52cd87f642ebc818e2f54281a1b9922fbafc
Date: Thu, 17 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789635033
