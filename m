Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3953D6E2BE
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733543754; cv=none; b=IDJeevNFOQBcyfuOcG+VW0qfL5U8LC6VJQy2sAX8KUdYv9ETGlEOom7hzCEHoUT+rhqpn9PMV+J12TtyP9gZqf7FIg5S5Hu2gJKC2nhxgBDibmI8D69jD139mW2ciuanuZ3pLdXAOK9XgRk0A1d/A2c/zsZQbCzQaACPNTEk/U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733543754; c=relaxed/simple;
	bh=bOTCh2aqnP2jKWjqDfX3u/5vy2pjWxCY2pFEDotCwyw=;
	h=To:Subject:From:Message-Id:Date; b=uoPYsPlnQ85hd87yeV+vVby+RutTCXtzAoszERzSjPghxX2GjzQmqSd6Zp3GLrRVfrgtdObCpCN6JY0d93ilk4jrLehaqXZCLE6IxxopG16+ECJXD5OxXFv9uYt518YvuPDJ0enzE2FFzQ/shGQekr6GP/R1N5Ps4NFnxRRWlGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuU8G2cY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuU8G2cY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E3EC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733543753;
	bh=bOTCh2aqnP2jKWjqDfX3u/5vy2pjWxCY2pFEDotCwyw=;
	h=To:Subject:From:Date:From;
	b=YuU8G2cY4irmgQUEBiFFkwaYXdC8MK8x7p5EnmwexlUtJ1y4tEvDU4VaikEuYamLN
	 G6kDzYBBoB7OvkdVJ6ScFpKD1t+AWWod0mh8tceyLpIMBvO0G98MC/QjnTR8UAGveX
	 NwhGE5Hrw7jUPMMsEwsqD3c19O+/LCeGauCb1hoC0/rsOm87XuA2TUye7r93eTNGR/
	 0GXgBhvL80ElWxM5mcXPoG1vI5C2DIZMFZUOiHtgZFTtsQdWyjjWrZv/cQ1bMfaqq+
	 FNoJ2ognDDuRDDZtqmUf/ZMbCPesTm0+OHgtWhGlxgOIbfwMsMH826rjMLswdOn3/y
	 aI4sYudK7h6NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B379E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354375362.31913.12688330491506972194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00ced0d81b458a812d1b946123d2094447ecd06060a1336ab3564cb33aae8a4
Date: Sat, 07 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733543753
