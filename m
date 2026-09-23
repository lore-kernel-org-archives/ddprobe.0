Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C79921A459
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790141434; cv=none; b=JHrZtgynwiS89yZjN5/UdIb7TLtc+l+FozNvuZ4RkT4XYVzAyrCf87uM8yLUy4g3+vtcGGp8RvfbUfK5N3GNBsx4VizsBfmOjpyzsICnuzs3FtfIUZJ/46ZHwPmqT9orTEJ/72Kw9TVYKUqN6XDBllGPmwAT7O9IN4ceszXcI1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790141434; c=relaxed/simple;
	bh=QQSgrCaiV0khrdy+3MmItv23yUxE9QsVVgqRQKPvPnE=;
	h=To:Subject:From:Message-Id:Date; b=rESyFJ74exXOHSo3MIhrk2e1EPn7qPZ+MXv9pcVm1UcUA4kGozQKl6y1uXBK+YSOFTwErynGhf2b3gZcG8/XOCUKc+AJzYzA88Vg1F55Ap6z8IDMUkDaslkiunyDEIYtbkbhEiON9ry7Olu6XWNRm+S7RRLNolMH243E9ZuvsVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFiB8mkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFiB8mkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75A3C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790141433;
	bh=QQSgrCaiV0khrdy+3MmItv23yUxE9QsVVgqRQKPvPnE=;
	h=To:Subject:From:Date:From;
	b=sFiB8mkJv/JtFTkfJyOs1ej4jeeHrJ+uymmH4AskCU3zgq+I/ZQMIj2wfKGPWhX1m
	 exmYNpTkSwJaVLWRWpZjjFBF0qGHq/JxdK27jZm6DwrELMWuc7zLOGIZ6xi4ymtyyW
	 FuFtpZ1eqp/5/Cvg9Jml0HyOkxcXQNcrFNpW0uxGP/VlQxllwS3yjTELLvgt6M3ExV
	 uJvjHOnU4CConr0UeixTCIlSZ15lVGIZb9RYt8AY0lNlRDQpbKLMSjwbwfWuUarkIv
	 U+8OgQ0GccP7FhdF7Q6hVG+fePKBvCKrTRy1VoxzY1MsSkeW4zzD/KFpzO0MnOhpc/
	 WSKD8+tOl1TfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A2AC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014143377.13139.3959101178140866970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8dba606e713186c9d433dab1177a6582d7bada9b737f7b8a8e2cc682a57960
Date: Wed, 23 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790141433
