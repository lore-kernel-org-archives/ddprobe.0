Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC7447ECD1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780646674; cv=none; b=lgEqeDlZ26wK5tRWFDHunD6G8larFahgMy9JJPdJQELOzrqR0jyfSEmEeICcf4ItYzPdHJBXEad4XN76tH68GMOXirhTfcOi1Fl3QqQXWRpXHgoBiqIWoA4CJ8+bcAMhxR/ED0uZ2HgPWRoaamesqvj2LtwFdtOm0zrF1hPmY8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780646674; c=relaxed/simple;
	bh=j27c5bgw2a3oDHesYkXv8+FWh+v3XOmCrw6YI1gsuGc=;
	h=To:Subject:From:Message-Id:Date; b=twjVeZaqK1tdZF8jyV+JyI/D9qSNu7TkhgFPfS2wyE2RfxJcKXcmsq8xTLgiNoOv4hpQvV2gG/FT5UUEQen58ABsJHXo+np+UxdMuBb/gEkigu0AUnqtvs5ec73JRtuEIepC7PK8CxFBE8C/G6/sSGDO5UHyZfPOd8FNFCZ+ovs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry3oEMsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry3oEMsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4703C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780646673;
	bh=j27c5bgw2a3oDHesYkXv8+FWh+v3XOmCrw6YI1gsuGc=;
	h=To:Subject:From:Date:From;
	b=Ry3oEMsGAzHl4YoFiI0w2DHiGs6HhQNqz9nMWopI+Ln2hMSRNGVd8FyBsESOiUEzO
	 TKo8wZ+N35E0SNi0tutMgzqnEdvDj+FkmQsVWQe/+gzS5bcK4ILv8P3a9MFWAraTFm
	 N7E6av0mcQx2MRmsAfy+oLkLzk8w+yOkk2KtXD0fUe7XodABZ/9bqP1ryv8vmMtxWm
	 mZtlrcd3Eo5qwz5JoWnZkGX/FOi8ggCXVA6T9kgbENnxYtbWO9fCudOrk2v67O3cJQ
	 zUU7ZHat85kGPfMG1tP4cLgA63jc8RRleqHtM667b8GSI1CjTGBe+CJXGz5/LQp0Gm
	 M0LKZNqStf5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F1CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064667369.16963.14848577067419864744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e5f293936f539c2c5f6ec1d3a2f714e88fdb75ce4fde849cec6c7c6a4fcde0
Date: Fri, 05 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780646673
