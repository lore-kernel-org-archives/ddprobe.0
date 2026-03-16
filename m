Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D67330D24
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773698694; cv=none; b=vCp1Kl40g9X8ZoTbr6Rvs/gjQhm5AVpUa6sXwk+d9Cf1PU4qaZbUrtu++LnbzwsDDKQfi5BpgPN4vlWF87oMYp9+6mrNNm951vz36p2FYRRvEc3t6An/3spzTUxRUyXkdX/zpP8+rAnCDpntIUgo0ENF1g8oYndwqXOQOHvKSB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773698694; c=relaxed/simple;
	bh=NSjr8pOFG6Q9Nkw1tIWhpiVyhRNUwClItwLWjHz3+6s=;
	h=To:Subject:From:Message-Id:Date; b=SD4WChywcjISmKDd9Nb0XVj06sNE6gCxVGxOhlHfeHvrS2ZHAPL7ieAd//NpcyyVP63DEhS+UpUGr1GsE6gt47Ckk56J/o8wMMxJVWZ1JJ31+rxXvasxjqSJM5HpDTxX8S0JpD96fVAMElCysANLPW9XKM6a7Kqvv2SzCNOepW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X49ty73W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X49ty73W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1708C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773698693;
	bh=NSjr8pOFG6Q9Nkw1tIWhpiVyhRNUwClItwLWjHz3+6s=;
	h=To:Subject:From:Date:From;
	b=X49ty73WrDLs5l899jRLEgdkxsivnaWEDH2Yx8lIyrnab336SUMphvx+74NnigieB
	 f5K26gCYO11LJ6ObfDemh/ImcXxEWJuCcUs+NTBlzIzHGLfZxnNBoYXU2gYHe9XAio
	 nqRqChR055vQyj0HxwjtsLJ7IlXpmErnjH+Gqe6xRtQIqkbwNn918kjIJJFsg7qPVv
	 Y1/tw5gaD5iC8ST99MzC4XKX1qJa5vT+4FpaQacsoynnhY0h5QA+5pgulCa1s87lXT
	 yb+Iwx3/fNQrnznvUeUlPgkB9G4Bpxbw0VxqAYc8kNOP3QlmkjOZCMOgh0hQWZroeM
	 7HAWCQ80YoP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F990F013FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369869358.8320.3751318232533620260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc4fdd5aea0e2fa053e7f9c2cba1a1ef9c53febf47f6cdad651ba616f84d0ce
Date: Mon, 16 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773698693
