Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165E15464E
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722936954; cv=none; b=XIeQbnORiG9rgF7qVeIGGmr12T6zrqOjQmOiefF3Nkpudk+f7cjZr01HGlLOcZT0thGKgn45+nk5tWVfwR6NqI9+PwvgV/jGJM8zvrh6iqgDDn1T0LdTT97eHbfJxZl6HJH220qq9stPKiG5hj8P9o1mhaiBTl62f3X6fBrWjDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722936954; c=relaxed/simple;
	bh=W/U+vsP9fx1m8Kmx63qOWc7Fi7bCvK6R9AuUPUlno6E=;
	h=To:Subject:From:Message-Id:Date; b=NCp9LPNrP0FOtPd5LcqOAiLxh5uJ5jwbsxiC4WQlZgEPLj2m+biinwYqQUHOj7OzPEFCHvpJ4D8dnX+EwFxqyx5/UA78B48WrjqMuA/wXrePlL/F6iqggDpI/Lt/p/aHqWPpE9q8w487kynztn/hZnPhwx041l/pGNsN8KXppLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITjRtEHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITjRtEHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AA2C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722936953;
	bh=W/U+vsP9fx1m8Kmx63qOWc7Fi7bCvK6R9AuUPUlno6E=;
	h=To:Subject:From:Date:From;
	b=ITjRtEHlcyxb7kiogryWr11n3ByO4LljRgsG1oNZUPp8YPWEUOvdxbalVJX/jo+Wv
	 5TddiFz6671+cR07TVP6j7dIsClO5jn6tGFr4rFEnHCYiduxZoTYgec4upMwfbeuK9
	 9n9HEwaygebHXOqyyJbxBDC4RWB+eCUMi70wBjc0mCrqIym7qjRk+3/nQfHbIunDW7
	 0lcghvJX/Nuz87QLGaN4XyPW2aNgVo1K2nIViK0G6cq18xar4WzfkbcH68Kz/xcuYP
	 I4+M3vsNhkABrcXllLuZWvvbLLog5Qf36ws8RspoFtdOhMTE0nKX9q1aeFv3WzsQMj
	 Z/IUkSmvCiOLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE95C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293695360.23933.8791835309687354508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd16a63d032f5caab28060312fce4edeef17c66408a755f48c8355227d10f42
Date: Tue, 06 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722936953
