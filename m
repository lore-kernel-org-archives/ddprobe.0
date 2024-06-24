Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8D213A889
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719235343; cv=none; b=eE2wStYR/Awf6wB2kib+hE7cSvfRoK5e/LZmSfmQT05dsSBoNxIAAA6Qzlfgr9nhkIhW8/WMph3bBoOs+ESq2YlBV/914Avyn/y/zX//WyVKq8kKyac+GzygyeevaJLDJjfH+CSv4p27uAotZfvdw6MMFOK1s/lkV50JMEQeNU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719235343; c=relaxed/simple;
	bh=IhAaiBX5ks4d74gl3mP5X56XLhncmp4cTSrzUrZ4vpI=;
	h=To:Subject:From:Message-Id:Date; b=VY8qcZV+ghX4Vzrl1nhKCvN7gRFGOxK3uZUZR11GL+cKNKo6rV+UvNrh0WqQpF86RCMabRso0aq0qKeBppHpaCnwYGOm7Hl25HFHZL8W5gQ2/Q3E0s33fXrcQ/XdK7Qv82xJSNc9dQAoZxhWCIUagk5H2PAOUnnMliTkoyXqnsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivWJU6B0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivWJU6B0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA59C32789
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719235342;
	bh=IhAaiBX5ks4d74gl3mP5X56XLhncmp4cTSrzUrZ4vpI=;
	h=To:Subject:From:Date:From;
	b=ivWJU6B0HJMOv+iTfv1819PV9WoDnvgzcJ8lp93/bKqnY4Nt9QhyD3IRKBRqYO7nj
	 Ww7vFbtoHqSgyyOqhqNtf1AKJIuGAEyjVjHKS5skrV8GBAQOfY0LHF47E0T9pT2yQ1
	 /59vtSw3w/dpo5GjxpcGoRRTvDtB36qClI6f7Mw917QP1t5CFhyyl1HUECAhR8t6Q8
	 +H1gkwoddtFqzPB67W1pIVUodJ1cS8vQbgXp1B072J1laXA8dwkkptVufxGKnfyYVy
	 Q70yg7oqlvrS4AJ/GJFMitKRzErebsYUI71jC78RXY4abE6L3fub+qCEG3/mvtfma3
	 0nSFaqEe1qb0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8665C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923534280.13730.8014637555136202585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932e0a7dcb1286fad53c1ca0d8e68143eacba69ec7f5b916b54d4fe3f7390f25
Date: Mon, 24 Jun 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719235342
