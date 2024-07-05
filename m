Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D353A8CB
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720170923; cv=none; b=KUbF0oAkc0/B5MOVxVz9iTfNh8jsUKhyL+rA/ihBLzeH2c2EgenFpl8D0PyPmiroEtQ7bHRWQ9dGn8uVGEOuekrU5Z+6bJ5hWsaqbpktNbEJ/2Tt1DfLy74lmbtkFvz2XgS2ojUEuJTLlvUA0dsfhnqx6arzDIZUgfLYAY2dC6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720170923; c=relaxed/simple;
	bh=GC7oJmDo/pu4kV2y3fo+W8Is/WWHik70I1QzlYOtibs=;
	h=To:Subject:From:Message-Id:Date; b=iT/oFfDzequPRBObngfX6YaVNF4tkq9/0HulZ6ZetTTW/nk2TJ97OCw4SPmp8sSQgkmDDb6f2j/QDHlhRfkOUKkl8x34l2olJh5juthxqPAidkqL37Q7qq4Ednhdpeur7dPKfBHI3M/3+cHTvEFaScddgt+ZXdTyhJP239uxhHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7lsTvX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7lsTvX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31AEC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720170922;
	bh=GC7oJmDo/pu4kV2y3fo+W8Is/WWHik70I1QzlYOtibs=;
	h=To:Subject:From:Date:From;
	b=o7lsTvX5QKmnFjklJjrOxJUNdJjqyugfhDuQ5zDgzq16W7aBpVVxq/W6R8o7YEC9o
	 QpLeNG3GmDcs79t0VhpPajJUBsYlefo5OxFjbcAZfaE2Khnv3do4a+TJ8fJJG1yVl/
	 B14Vn5cM+IWlcAUE4YcIVyHGR5X6gsgyHZbrDm+ysuMdi8yZ0ewUtzEzcC+mAp833p
	 bdUkuNM/W0gUUHRn3thiWYYD+bkc99y4hZzV0GH/urOsDvtBUZZHS4p/jt5xJaMv/T
	 HCG0OZSKaIBxLpq5fKxD0G9m5+AneGSKZ28fOMhwRdzsjk9n/DcdqHkTS7Gp74cWfB
	 5SKpzWEc6vjfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF57C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017092276.21118.17682328798100862201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b83c91d6edad2f24c26f4e93425d2a8c834752e1e551f10018db03aaa716b7
Date: Fri, 05 Jul 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720170922
