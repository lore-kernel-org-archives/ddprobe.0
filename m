Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AA115ECCC
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754404194; cv=none; b=e4Gri0A2RfbSP10K8yutGQPUpnlxfJFubThYqTIUtySkzSZ2DKIlB4CKHluEzPISapbmXt9RUuYed81ptFIvwa25YgVkIzOA+QoEQRP0iALMv4Sxs+ob309gofYSgFFQrD0S42TmIPaPaIliLQXiIXiRlStVS2fg0huneu36r2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754404194; c=relaxed/simple;
	bh=bcFBXlOYQJpauFIHFhX9orTLVzKvKahCJdQMochEegg=;
	h=To:Subject:From:Message-Id:Date; b=D0G8athjzAscXBEGEaxuR/NLmh4udmO4H0ImBE7eDthj516PaCrCEeyKmFRqPGoqYUvDiFMsu5OmBoTp1VUMI5v6wm/K/JZDZjjxVJVvzJRmzVMs9dMyb89AozJcOcu7f2YtYAyWyDyPrvIfmfWBiw5D6dp3qosVduUWcIAQZO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOh5p+L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOh5p+L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECEDC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754404193;
	bh=bcFBXlOYQJpauFIHFhX9orTLVzKvKahCJdQMochEegg=;
	h=To:Subject:From:Date:From;
	b=oOh5p+L64NOSuoJauIiZTJ2ax/IpVyNbbjd+LEfiSXz3UgtqLyqkOqgRMP5DRCWLm
	 w03X+r1UyNoQn4UbJINdZtDRa/cUkbTCmN/hFteh/x7Ge9NTujEbHqk7WGvCf4NWhP
	 A+X/voZAIy7ZXiS/FJjTe55AtN0tw+StMcjXFMWPB1RAD9okQbbCkDsAy4kgpsyHs+
	 Ie640kJ1UU6uffzR4H7qP1LS1LoaTucY5tar3xtfsg1BnLiC1/sruEyjAWLGUCaBm5
	 6OP8KnmleeoLq5I5bhwuOSiFiv02i03Uy/ubSCXXHmOF0yDdZd3ZgfIwqnoLZbA9FK
	 rvfso7/+AO8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F5C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440419358.26889.16421850057945808215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f557d58b47503042e2af9c72a9eaa1ff190e240b59b99d5fd788811895e43753
Date: Tue, 05 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754404193
