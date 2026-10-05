Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559E835CB7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791237634; cv=none; b=giV3yg5ne4Zu7r2vl22DP3iF/WF98oc9J+n9/oSlmDjbBqGfkqbmjOcmk2J4TVd9zYfLMnySfUW0TN3mFXm+nephQtsuQDvX4aUlaQ7T5VSbxZQ5GEmXqFD9dJeSBLJzRTz4Q0Z+HUA7X2iZMq5o8R1L8G8lWKKFvECkETuU9PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791237634; c=relaxed/simple;
	bh=ZnPi2m7r9XF8rgXsB+fD1TtjfDVB3ryzv9dtnJOF75U=;
	h=To:Subject:From:Message-Id:Date; b=KlhTVA9O8H95PSfwf0JA7XmZZilPzRkLOCElzPn4Px9G3tgbKOe58tGVIhu4bLv+0AQQpOgD9zy4S+AXwjKcYoqRgrIRYk4lu0wmvoTBnRUdcHfatVCqeseXtQzsfybKHReMT7Crp9lmPIo7MUme+Q0mIVPE4wtR6FFYpBrFwT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFRKPR6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFRKPR6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6288C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791237633;
	bh=ZnPi2m7r9XF8rgXsB+fD1TtjfDVB3ryzv9dtnJOF75U=;
	h=To:Subject:From:Date:From;
	b=aFRKPR6KkZVT+iv3FZpvm8Ie4Yad20CJNGkSGNz/CLzPupIiOAV+gFtvxHYfT3I+q
	 Ihj21wAkpTnr0LhaTVWW9YRoHUaH0IHsMu86oquM/u9UdyKNL7nnzLzzQiG81Kdu4I
	 YyG2UybANJ77xewF2b5amOC5gxbOtNRB1nYAGAWLpC1YyesMlEDJ2f+wyTxwIAh+50
	 gR5VTgDiCMWBkZyTAWoAfDR42IMPg8tUIRcrxv6AK6Zx7u5DfSyO4ViBGvJ7ITHlE0
	 JdrQ+qgWl/Nb8QMY+VmW7VFJZK/4tdA26NeMbZqoFzzzjqIo7fuOJ8rGYoiwa3rbMe
	 EfYg6B4QyuzNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2EDCA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123763369.25713.14108856772594691825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3122eafc62230bb3ed7db84452685e2554ee87ebdc4afd78c5fc2e212ef29ec
Date: Mon, 05 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791237633
