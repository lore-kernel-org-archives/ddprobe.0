Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F22822B8A9
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756088994; cv=none; b=d3VpqJVbo2/mNNtLC0zvvpb7Jf6rERofYjg8TtieQmHAiC7G1a9N8hwAmtT4ku1i7fxV1Gnhw/VEt0FudhF6zSTPYsalqaw+p/59lnyF3CjDtC+5GKwVo9DK5G6sk+RVo8qaFQhpOUGYbAn8IqhEoHQmTOsMYwN/J/EIreHPbN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756088994; c=relaxed/simple;
	bh=gK3W96nxWvCrpJS1A9KFC+YTq47MvvOHaLWFDqEjJ+0=;
	h=To:Subject:From:Message-Id:Date; b=QbABIuhc9dSpKx3GWzyymzg5m/tD5Vz/XDdQSr036UEFQDkBbN1HoGyDWj+R9G14tx2sQoSdABEXa43MZ5d8FydQfvNY5mUNePcBx6yjkl2aZoA2nKuGD7hJJa3HrslmKZP9VLIJQU0tx8NVfbAkpHMV369mC2I3AB2BMrIkqVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVPcoJCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVPcoJCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756088993;
	bh=gK3W96nxWvCrpJS1A9KFC+YTq47MvvOHaLWFDqEjJ+0=;
	h=To:Subject:From:Date:From;
	b=jVPcoJCG6Loby3S+q+8JqPbFJ20RYB2O9js/LyIs5NSZccVX5Kxw1btdOoqjQ+Ask
	 QbspU9oCdZFmKjZifVzfKtoCLA5wET2+q/Kqqs2aJJ1Mn96aaRxzi2LTQn6pYftzna
	 mGiphqOFez/9wwAm4nzlq+jueKtGw5UyvPOphZ0C/ApbAPPRutIteIXx7HmrxWWtMj
	 srVEcTtcZ7GoJC/ny+LnVzJ1XNMl2dGZCyEkc0jl2kfe+nTPfk+Dy5OtbHr1ZwlrTL
	 nYs/YNjIWC24z7nWf2I+Npx6umZUMta1vZMQ2Ixg6z3QAV5nI7x6BotjoX5PRQdvsj
	 1W9NXbYwIBB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F545CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608899357.19404.17137322107099208322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0742765faa7940374c25fb4698ae8c70b72b5857d906d769821c0a04daec28e4
Date: Mon, 25 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756088993
