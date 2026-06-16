Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF0612E1DC
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781583394; cv=none; b=B4uDzv1ALqNut/e3/W7RS7y/aopSwUJB/rb+DJf7h7GVJGimhWVWvbhvhfLyRfig2wwyxRLdjrZLrfzRUnRg5CXvholep/vwV7vmPqb8/XVbe3+E2yMa2w29IGj8F63czx/GptddDDqV/Ep1qXcK8OZCyNgdTzPUiNvhkVNIUuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781583394; c=relaxed/simple;
	bh=gDK/6XrOnWwBpCUzjkdSsclAjkTsJS106+5h2+/b5cA=;
	h=To:Subject:From:Message-Id:Date; b=aGBQMABIwhgQjxRd1DBVivE2KEr1SbYkxx4ykASJO1kIZkSAkXkF0GUfrIfrSQsB7h0WhYzD6SXD5RyRP08z/ma7cQCswAact3M4xQFVqtMGMhIaRuHDBKQ28Mgkj42ObJYlZs8zLG1OfGAmdESt0VuDLxnlAzVhLEG9Ige3CAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udWZlAAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udWZlAAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0090C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781583393;
	bh=gDK/6XrOnWwBpCUzjkdSsclAjkTsJS106+5h2+/b5cA=;
	h=To:Subject:From:Date:From;
	b=udWZlAAnreBW19EwgFW8gEhkBiYVZNvam+szWKmYIIdPpxgMgGqjphWZWae5wMfMN
	 /1Wr57I2hjuWxOrJwxSnp3Vo1icJdfhQtl/RpumPHce0USwj4+0pEVitTF1RiZIARd
	 wj4EYxKrWUoLvdf8OlMqp960v6MZKViDrT55dlA+feQRiQ3WH3LchYZ2mc9MSo5pl+
	 kbgnHdIhRjthTmTgmSvlhp6kmgVol/U06/6xXQk0HTJwlEanK4eMxSs8MiJcyBdL0L
	 Zjg50TLY7kYChj9CH2NcSqdmjGaCLIYXG1+EwNy0huVwg4cyixLMe6fnAywGyt6cLj
	 4WXzV+XpjcWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFA4CD8CA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158339373.15075.3176225478585068842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331a86e84d86f646bddfbdc942c8d865c149090848c5cf89c1db5221b03c3c97
Date: Tue, 16 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781583393
