Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4E714A095
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736954154; cv=none; b=pB0qRxqLc3xE7OEO8ToSCixA/HOna8WnZac24JKxrfRAwt9pFQ/Ess9CHP+AFZch1z5LD8XrNTft52V3gpvaqrz7Ua+8OCkhHu+pQC16V93AJ9Hacaz4d/IW45ziAI7zfoIB+diFFZi/NwDA+3GEjIfgPMnL1/ZTM+RRX5Bblmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736954154; c=relaxed/simple;
	bh=ndr9rQSkpaZIl4HDQsOHyBVu5lHR9fFYCNIYMYFr9Jw=;
	h=To:Subject:From:Message-Id:Date; b=kD3Ul7O/LvcA3K4m70nI2NSY+NXs13pE7j1yIHKI4mTRTzWdtdC7JHH+UIN/bJn2JohmaLqAYimYiUEF/AyUGv+MQ75v89RMSgNfP/nbM0B+G4vt+EfbEEWrfmP41W9t912zV5V0mKG+cC7+Z3cJ1ysQcYQ1J9R4AxsmZkM23rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVH9NsP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVH9NsP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA377C4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736954153;
	bh=ndr9rQSkpaZIl4HDQsOHyBVu5lHR9fFYCNIYMYFr9Jw=;
	h=To:Subject:From:Date:From;
	b=iVH9NsP/Bsi4dvIjRj6HS5OzuTLHzHoiZJl4oGinWe5YBgTcT4mSpHftxlKNxOB5D
	 sN1KrsYlzjoQSULe9YmE1haIxThji0IhZGYngC7m2oOmQB2AlzJGbAzflIshJu3S+v
	 6L1ttpH2lZ45LO1hFJSM6V4OyJr65lPazuKeIZj476Q+BKkelVmbbABy6C6mnVsdSU
	 nqRrkQiZTj6Y6SLn/60gRs26bRAYoLriQ26GT0bkFxKnGmXSZbSvvierd7LeFO2mjE
	 M9sR1Q87s6UrS7POvtaNqtliuZyMQ46bZOQq4t8JcZG0Ylofh9Z1ZJ6vsnqqwzYEc1
	 Z58A27vpyUwFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93922C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695415359.18142.9027708825765995127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5afa2e3774f70f7632c1d643e16375aa53564080b588c9190c2123f679a1eaa
Date: Wed, 15 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736954153
