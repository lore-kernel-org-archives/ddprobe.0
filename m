Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF1D24E4C6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765127574; cv=none; b=RqO6ybdctP8CegkEA7bamNJldPIsp7GHfLBPpkxJwhuYBJ8hbq/xwvdBgph5cyM3QtOBQ4nbt7B8e4DMK/NZQIoeBtj0R74ZHbuT8peKQhdNfv95a1KOS97Y66EIfNt6XRADDOm7phujM36VUBbly3xkhmEbwVNjAFhtUE7GGlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765127574; c=relaxed/simple;
	bh=t5oIQvhpbH8PYV+iTVXceaHuzKC1bn41n/i6FbMa3AU=;
	h=To:Subject:From:Message-Id:Date; b=bwTD09miimSaiTeU8oSDD6jokzMXaG+k3Af3W0sZXfws+rUqTZafnmmMHulWzCjEnFPezxlFtVv6hCCFUNKKf9/q7Jr4fqMCpxYwOBc72A3YcFNsG1zJ2QMo3mZ+EsTfA/nACv6PY3fu4NrnrcR8gbfhA1xnYVccVA6T9GX/Jn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stcXgCQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stcXgCQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3744C113D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765127573;
	bh=t5oIQvhpbH8PYV+iTVXceaHuzKC1bn41n/i6FbMa3AU=;
	h=To:Subject:From:Date:From;
	b=stcXgCQk3VS62dQJ5bAnO9ZSD1VSRBSD4h9CfM0xqSzi96V5uCtTTDe+2kQe3xTYQ
	 cORrplEnpaCtyTX1hxO987KjD48DuC5HnaDIa+0sQuWgyoZz1ucF2dY95JLmABPmXJ
	 duvfUJDqnfzcoSN1J8W7xGwsaTiTQ0MxYoLl5HN8FDTdgtXmS2MY1blMqsmOs8Bt1I
	 vUlaWyXAu/iKGuFWJg4Z1A1ZP1OUNSHzlyb/zU2d1UXTSFWvnduCCvxCDutGliCPZr
	 kS/UPj26WTzGhOtsIgE79iMM8HxlHzsQogsXreiwAKCwzeFJejZ755U4CNSy1qQ+0B
	 feEZgiD+eI1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145ED1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512757358.4883.7907794157047663744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61f3ae5e0085149396972106bec1aba6a8b0394a8fc77aa20d567aa3919132c
Date: Sun, 07 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765127573
