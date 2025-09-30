Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBEB30595D
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759248594; cv=none; b=YOBEEG+HRk4DW2fq1vXioj4iVM/9TRrjfFstGSD64OTiFI0xf+rrK+r/7iMA3nBU1JLk2QkG3bH0WJUKQ7LZCVkOe7oF8McyVAb8bNHFiMyTM4R9DzX7BU4rOW/XfbnTL1U66Z+mxBMqEeZIVh6f5E6KpLaCPTZxjLHlaDyxTIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759248594; c=relaxed/simple;
	bh=Sj37EW9lPnAiAxNfxMwlX7GRqkfRQvnjshxKS77BGlU=;
	h=To:Subject:From:Message-Id:Date; b=t3dwfTS8Z7Go6QaC51eZqyVqVii1rb8ee7DZLJlbA5NX6uqUlp3OISyV1OUX4sfKVxaj4BU+hq2G7I/GtcvPjZ/LExf6IShnOw/dTBNyXJuUDEnROQklfDrde4GnFyHLgiPUhzZwzbEnUxm+u+fxN8HfWi3rg9SF5fpLhG7Bxf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJepjQ46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJepjQ46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759248593;
	bh=Sj37EW9lPnAiAxNfxMwlX7GRqkfRQvnjshxKS77BGlU=;
	h=To:Subject:From:Date:From;
	b=MJepjQ46Geo3DAhQzkFBbpMTtfiGDvG56XQ06IXoUozeEz/rM3QyZfRmOGzhjrMO1
	 MUg4X6JT/aB4loME1mB+s5b7UmvatWfSXxsJtxOtX2IhiNeNUgs4cBEFQvAO1csTuZ
	 xoUBV7IAmPJ/vZRsbnAnhVo3WLT+vkO5nllpjvrtPRoG8M+AqIIdPypiVMTP/oS+Wg
	 m0RykEL5gAVBjtBpnud+0a3cYec2yeQxZYr5fQWumAzW7H14Fn8yEfM+yB2NmeydPq
	 rJTF/B6wt1dCmg+LTNooN4R4EMmJbzdMTdnMWybwnV8n+jIuPQ3u2l3QHPwtLBQEBy
	 nd5GiD6TCwhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E448CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924859363.7599.5000675031208050397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acd2fccc2d5a879b0182fe217fcc2522523e48ebf6cc33a2e0bfcb49ac76a2d
Date: Tue, 30 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759248593
