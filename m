Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D43123A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737712554; cv=none; b=fIejH5uVTpwh3OQc2BEA1s32W1DwxQNhVV4yH3vSo/XP8vruTBxOJvay7+uZfKLAPEVDyvJGKz5L9LE5ygL7cXXaKLsaginiXfyd0DzVVNnUwRTmxanKTXVcjBoJVS7FpSlKkvBBPG7KlKVG2uPDDNPSlOIcVb4FBykLSEJZCR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737712554; c=relaxed/simple;
	bh=yBSxQALNZI3xZOUrBuFHs7xRbfSUCbqiO9euDnoov90=;
	h=To:Subject:From:Message-Id:Date; b=rQBPnFZriMTPlpIdnmarRjHLHFoeQdGbpUCDvNLeLiq7w3AIOsZJvacjNjoZcr3QQ7e+gVgLVXzhvlgnKn4wsHJRdi/iexrbb6XnczFc8xLyER/n6iUPkI1+QReZHucMoiwfrb03bEOBAh3S3lFYuUzhUGsLxsd7qgDfaZk/5+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j23oyi89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j23oyi89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC484C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737712553;
	bh=yBSxQALNZI3xZOUrBuFHs7xRbfSUCbqiO9euDnoov90=;
	h=To:Subject:From:Date:From;
	b=j23oyi89YNBAjpZuALV/er2owkrnMxI+Iv6yTlbRauc9hMKWEoJSB4CNgIyhJqwAQ
	 ONao2ouDbdsa9FeYW3QINC7OBh0mEtGvMGnbywcETTZR/v6V+IV3+DVy1HyOeXbkbA
	 gwnyirS2/r2Hvwd/n4WZTBecmo6JBYWwZASUv2YfxDCz844EX31XFjlp7bWMyHX0Bu
	 Q5zj1bGH0hdc4pcyTsqnH4B9B0olqgGqNTfzlKx+B+qcf0a5LraQuZAhyMAwbi3YDf
	 9LhL4Hkqawi2WTrHDxJo44PP2sonfFLsqtx8PkiS5ExJNCDfYlfy3+Zfp60/nHJW5l
	 GonJ9A2FkDQxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC1CC0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771255362.12772.17217995401354890174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae57248e1573caf9cf77e3a08c78da27c56e35c78469f5b290eeae888a932070
Date: Fri, 24 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737712553
