Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C5200A3
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723323354; cv=none; b=jgV8wvyFundBWeokt7uhhk6P+AychIteLyniGSU0pCWdN9e17AIgUeRfQLQ2JrqayEJ1oOiJqsngvbD5rfmhOuangu45u+tSIKDHW8xRRIvFwn7iVPeCxehFDljIjFwn15dwL7azmTTLSlEzjbll55oJyTig/AUN6G2R6qlhpx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723323354; c=relaxed/simple;
	bh=roq1lQTBzHAgq9PGlq+tmd45NI8Bm6R4xPs0362EuEE=;
	h=To:Subject:From:Message-Id:Date; b=cimMsdBEeWTNsl6hBAhF7Fc6gnIfRwjOey4UIZ6D/uFm1zu4WnXI+JZO0InmUNu5JCgYeWscj6OBtoA23ejt5I5lDSGx+NB/+qUwCBoiC0qZRKdQTUOkMMiD8aJs0OydY2XoQeMQ7fmDx1aviJl9uEotn2NljoX2vBw8qFxj3so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNObA2zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNObA2zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8966C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723323353;
	bh=roq1lQTBzHAgq9PGlq+tmd45NI8Bm6R4xPs0362EuEE=;
	h=To:Subject:From:Date:From;
	b=PNObA2zsgs/8/jEfFbZS2OAX1i/zHM7ZsfiJDnEk8yVWxAOo0yV/XwRSZYRx14d+u
	 JgDdtR/GYLw2m/tdvtwjJsMAV19ck76d7ex9YFrt5pY8dq/JDRxiKIx0c5tY+7a2Ys
	 kqGHcefaepiRUWfJ9z8y2mMMsdE3YciUuFZxT0v+MTFHDgmrsE44ZwTnYoM2mrnx9o
	 G5YbfZvEgF0/SQwjT9j0k5aUAA3S4bzs/rta1mutILhYLEDO7gyjF8xdGZVwEOySiM
	 lNV+cEwrNSxy1HxDzXYpdEVp5TjA/3TRUjexflzYQXPDX1zETg7MaZUrbY7kfMazpg
	 pSRRKXeHHSDDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B43BC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332335362.14975.12790809027184947558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cc70ecec4434de225ef8f06ad36573c722ab781e346100c1dde205aa53e2c9
Date: Sat, 10 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723323353
