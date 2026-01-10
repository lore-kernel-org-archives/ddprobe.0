Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1341D2139C9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768085034; cv=none; b=mwxufwUNmZa4DSCeWumslUxpcQQQTENmY7F4LlWyd6t97SB0QE0NnlkrXtQmmUQF+QReJeBPvmPOS3S5XjW5JNolD4Tbvki/EvJgeEFe7+HuaZHCkMkWYcosN4xkrWo86gr/exNJdyW15UuX4yZkM/xFiyw6eZd2iNZyKvbfvBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768085034; c=relaxed/simple;
	bh=t0A4TaI7dIXE0/tJERVNihBMyDKwYClT4MeEIqn/eug=;
	h=To:Subject:From:Message-Id:Date; b=pX+gh1piqoj/rOiSd2mjvTHpKrnqBeh87ccStIC86ZzfQaS1wSDbf0AyIZod3gs4L//alN15wRpcltOzvOBX5+625bE3xXXJvqrP4L8tuTWDw+jbhrefv4xYRSRaKgoVaw5Mb0e1urK4j/JQAGqO7f25hIvyVSuxTWQajLTm3tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1MPP6vL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1MPP6vL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63E5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768085033;
	bh=t0A4TaI7dIXE0/tJERVNihBMyDKwYClT4MeEIqn/eug=;
	h=To:Subject:From:Date:From;
	b=H1MPP6vLlXZT34NCBMFc48ecGecYVGchK/XzQCg6pcpBSioxDtkbZXaQz+qzGWsxw
	 NhhrHsedxkmaZF/merR34GQsZi52kWHH5iZ4fNz2EfBzwVki9UOSvJtrcYmYa9p9va
	 ygcUYPJx0EO9dbcF4cI3h2x7vrtUDqhFRqkeC71QuN6NaBGFirEV9b+G94knU0NZGu
	 3EAYIkuTsH33PH21iTJc+e80RjPf5ZvN9vlc3rC+VIMn9ADFyvKO01Tqoy5Y9I3F4/
	 xiucPBOFiYr5t+BMk9Mhq9MYtIo8k2SgKgIcrwl/oZRYJC6OPPV7t/CAZEclNSotZH
	 Ug4I34vnUm7PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B87D25026
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808503357.32354.9608896529939923777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3959362d5d13cf62dc5c1287ac677f2fd34ec1ffecd76b7452cc7bc53b1f5080
Date: Sat, 10 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768085033
