Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEDE2C08CA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756236594; cv=none; b=S5nuMQ8rjV+nuwT9CCroNeJ6Bn6sxtdZAPtMimsS9Y7Q8T0lv+9yEdHQaHDeqxuCDoQn7k9VxTgC/43HLAszHzm+Ai+r5uPwVtDVuvq4EZU1aYhANzJz2uX0ubB9z+fQOZjrB72L0agx8FWTm71rP/OQDlWpIDZgvfX1hc3jfkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756236594; c=relaxed/simple;
	bh=zJi+nAxhTqTGBIocAdS5s0FKs4qcdBcrzMkPFvQwvnc=;
	h=To:Subject:From:Message-Id:Date; b=TsOVjCP8V6nFXZBDd2+/yUd2Kx9lkEayo5AjrUC/g7lhSdkcoVOpNNVVb1C/L3ExaFCZkLvSjhI/S/atgzUGpgRFzcjTmqjuw5uqtRSO5c1MsgybXkwFck6ZCr9We1z7dh/An3QvbcMgsn+ASqoLAIquy0QjEOQ8WUb83FZ9Cvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgXJKC1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgXJKC1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0943C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756236593;
	bh=zJi+nAxhTqTGBIocAdS5s0FKs4qcdBcrzMkPFvQwvnc=;
	h=To:Subject:From:Date:From;
	b=jgXJKC1VveNcEOEZo/iho1Ysu+Smj+c5ON+QNeZoDNJytmRhpP8BGm/u5cRgFC9Xj
	 LujSgH/XKxGJczlJ8chabZBb0tL2kx39ugWvKKwuCU71qOiPNQ6EKb85B1JBqCr4Xl
	 z86h7AjZuF3NfdILc1CedGIiMBreR+dI78EW+yJgX2ERmamf/ViEYjwsxTXmSZBnNw
	 se2DcEQk1ghxFELrBYGp6K8BBa7z2zydmGLypsLhyVS0O0t8lNmX9RPw2W5m7xZOw3
	 XdsLWPCms/zjBot0Y+iOabUdUei7fUSe+BdASmqRuOlyTRec6EEAWm1qi2P0D6ZE2O
	 iHF0SEdQ6AuGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E744CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623659357.15392.1702611002798241907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca7ee8b5e8258efccdafb7540a2133e3d37f6ed84320ad255268212edb12578
Date: Tue, 26 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756236593
