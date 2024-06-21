Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBEF4644C
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718997745; cv=none; b=UbsZSiH/MXmCaDgAKTIfgzed2YmZjD5c35UKDg1F0ymIsoMUdlrsi3W0fm3+WBI3jWM+0pF6p6uK3JnuOgkMl0y8OkquTudptteXRCYChm6O7rKDbFzeDfuSs3RkeC0BlOz+XPS+AK7JeaVhCphJ+JUmix4DDQgBnm4F4R7RdSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718997745; c=relaxed/simple;
	bh=sXXKfhsytH3FTzuIctMfq1hYo0KKGAJCEGC/gX/F6ZU=;
	h=To:Subject:From:Message-Id:Date; b=Ty9MONqKMvzsFzTRTIxbjhEro6Jz4mUKGHLUleUE5TY9WpGFS+WgOQJGeWPiox/9L3xmVrOXowS4dxtKLonuIbsIlTBLnL8L3H98kG5o08BAb2BaptmzLaoN8ybl6ML6EAOKmEVJZrgSfZjIp8CYQ1f8Zf7+Kw4jymVw8xmHm8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj4Fn+zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cj4Fn+zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ACFC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718997742;
	bh=sXXKfhsytH3FTzuIctMfq1hYo0KKGAJCEGC/gX/F6ZU=;
	h=To:Subject:From:Date:From;
	b=Cj4Fn+zVtb0yt+OKwrG+DswIVUH8AuRpu76TugPBWLIgEG6XeCDPT4G7SwsPn16mr
	 KfF/RWK7TvMGFt+ipWhCjLdFr/8wdZzGeLy4hCh1s86SL+bluPvmjI7svJSYKx6dR7
	 XPTrumR7trHV8gHKXAanvgFJHkEubf1s8mAsKyhRg7SF3UWyvavRTVhKeSN5YFGzC3
	 5Bmwjpw6fol1jMQTR3+cANerNii3HhLfkhn50AUsbC24b+Kjjx+oDwN34mjZ7Vlhk7
	 7DXi+nDLMNUZjmIs9qpKe+S2GfHs7U7q2RADeczHXwJfc1sCvoUzpZ7a6Tb7z1JNKi
	 3/tj2IGuF0Q2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFF8C2BB85
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899774275.29281.12918561003603731627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0a554768b1498523178a10e97af4bfa2f9479b0ed5990bdd0f8ad3ab9c00a6
Date: Fri, 21 Jun 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718997742
