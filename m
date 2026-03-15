Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7A9372EF1
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773594294; cv=none; b=P62BTcvtlrqzK+bTCRaAQJ7CYhVjJL3CG/D03JrTny/6/9ZJNJD6k6+VKtLJ79M7M1od5ojDToop2mP2GNedt305+XRJIuCNiQhd5/l2D0cQH3kdCp8Nl9PLXeIWC44lXXzdeeXmfO1MgEew8PLgQaRRUiNQyH7xIGifcOt7LAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773594294; c=relaxed/simple;
	bh=SPAL5duLYjv1uZ7jGIJbARqbJCyARuY2TZg9N1i9bH8=;
	h=To:Subject:From:Message-Id:Date; b=gEXzpPmP5FQCUoCC8d1XYAo9M/NMqjVOFYnupryOhU327qBdLEljvCfCFXUISJAxEhbK2ZQ/BYvvrHD+FpPxrHi6pMOJ9vSQiASkc1NOPS6WRZq2MzIss1/PvBaOZvhywWUc4GL+86KzpZsbOYdTK9SzDs2lJHsBlDMJTlBtO4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eShaIOfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eShaIOfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9694C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773594293;
	bh=SPAL5duLYjv1uZ7jGIJbARqbJCyARuY2TZg9N1i9bH8=;
	h=To:Subject:From:Date:From;
	b=eShaIOfJoSSzU7V8UiY8nPRsHrz7+wmQtMjoseetqmTCaPIbQKXODjnIHe0XuV5k6
	 nPr5FmJmcjqiL96v3W2Yc53qcUzA1M1EIuhuz7DACDRmy4roKNHbD6SfhQvyKqF0zW
	 WRH6q+m0rX43y28CsVDWIuH7ZarUSckNoqdNrR4T0Y28yh1NJXcIO0BKOdhecFX7t7
	 0VPaOl1iXyBCKL/lkrzC+S/x86pCepyzWKgjQoMqP/ggbUtuUiTmvqpZg2ulHk1YCk
	 6xHEe0OAnVXXUsuvrib5vZ1zFnv+sWt+YZtPygGKoVOjzluT1AQxcUucEWTIKo7ele
	 wT7ZQDIV/rBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511BF30271
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359429358.28338.9193838851336548083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f960fb4f97f4844a8a9003f0020ecef423fca0c202d61417f3fbdfede1cb6f
Date: Sun, 15 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773594293
