Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAF2190477
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739443734; cv=none; b=OhAEntpQ3CELJ9+FYMf6FzKya0U/0Id9H6PYnu2JwtHytJlAh8+XTKx53i+D2ZJxef+eMa5haxI5KGf+weMgABOcVQQbq5oZf8IcbJz5f1ubFsfaxFSNwOvcvSRPUstYAEdvq45SPbTMD5lRDaQogLHNW2LdsczviQWY/FH/9Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739443734; c=relaxed/simple;
	bh=u+KW8edyQcvklUfmxYlt5ucrrXpa3bcLxwl3P3wAG40=;
	h=To:Subject:From:Message-Id:Date; b=K8TX/4EWMxJW76zkyHSJ9nAKfLlzrsrrkQbVoqu8NESx4M+UpnZaI+ozWAvHsbg/HpG3XYtm9NKAKMiHLACHV498X5mbgRWqi98+jf3WV/SH/0BcBWqUslHcOObM4UiDD2ysbMjMKnLlQ+ver6UnqV8ZM6ilVnDUibeVB/NIPAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btfAJu4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btfAJu4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD348C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739443733;
	bh=u+KW8edyQcvklUfmxYlt5ucrrXpa3bcLxwl3P3wAG40=;
	h=To:Subject:From:Date:From;
	b=btfAJu4Ju6LnfGDwo/0vTFwjdIrRkEaMd1H1+kOxsuC+r3iwrtXYQ5v4pH3ix72Oc
	 ESY6FqyZ2yHzfhOybF68LXzPM2BKph6mBwG1cFi06PYB7GjqlEX+v442moGZWs7VfJ
	 syQl0RR2y18YOkS8LthnfKMlrwFKaOqSsJWq/xIbMUJBDaQ/WF+R1Ebr30UlRnobRe
	 k1mz7JdLk6RcL8dkW1jUI0hWIweAfzUwQdWt2R2BHQezhkD1aA8R5micsQ8yx7uA7J
	 268Ol20is0gY0VN/lcScnn035BzqgbuIXvTwvh61DDdesyhtlaG9XAcgBqXZXxM/iy
	 U4Yy1IRLY+NVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94827C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944373359.22348.15247367832129639980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c9f1880fc9694eac61fafc000d5204b8af50a4dc44af311944f4dee11b595d
Date: Thu, 13 Feb 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739443733
