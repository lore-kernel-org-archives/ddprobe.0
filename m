Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178A179EA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750553994; cv=none; b=XsPs9ylQAZp1EZXyNErAk8yd0OfAIRvys9lzfRR7/e7lGlXpirdnBPsmRd3i0E7RGCAwyVL8Q+nyENl8IqODzjGWBj5U8wWeCyNy5hCSOD24Z7/HoCL12CopkDlGLl0GNOt8VWJoqt2NoO5m6pU3eHrkqDiTztOu1o195VpRnXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750553994; c=relaxed/simple;
	bh=RFbNk62G66t9Fqa2vY5gUFY4WA0B0orT3T9vg8w+tFY=;
	h=To:Subject:From:Message-Id:Date; b=aXFafVyZeZ75b8o5n5wdaSoHMWkpEiO29tXKWD5CEJK2JozpIz9PII5riXU8HfX+MovIZ5dsGx00mwECHx11AtO8MxYGjmKAY0YTm6QqO//R/5Xmp/vg1cZuX9KV9sVj9AP8GyyQi/xd9Z6kjxBRTWJy67rjgjvsW+Id2QozhQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaawrHTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaawrHTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1501C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750553993;
	bh=RFbNk62G66t9Fqa2vY5gUFY4WA0B0orT3T9vg8w+tFY=;
	h=To:Subject:From:Date:From;
	b=jaawrHTcMIE2dVHaBMqdMbursIRBYmgYRe9FnYHK+oNEmni1IemSxoL3rpo+T+fkw
	 LP4mS/cMpuMCdP9WfHCjLCVOKNXQTcDb+M0vsX9x32V52hGIxhua5LG67RiPJtXkpj
	 PiGuaCjmpOHzZET6YtW8RyHl1BFEqhEZxYrxKurYhepmdjqLKEIGxbPgNizgPbGJnW
	 FJwOfSgtTqpCwpQqcFVYGCYvomijfIcHzoR71es1xAoq+c1rBehGzJY12qt2J7dxFI
	 cTZD1aGaGwzzp36R84AxBOyD65tUn2TZNoUh/c2hyPlqHHPH0qZ/za4aVw8pUDaomr
	 jn4FkIevQe1mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B8C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055399357.29109.1902286046669673301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d41327e9888441c24475affe8e34aa66d7ca4d500cdc19100602d59c69821c
Date: Sun, 22 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750553993
