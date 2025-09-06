Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121E62BEFEA
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757143795; cv=none; b=jkKf+8ninqA6XCZnXeLzuas5mz+AlCK9YlAUanKIxBir5GC1UvoU8/cipcabX/s0PvpfQVOxrj7W54B5NRvSL0tj7U+4TCRzFKEx2IZIgiS+AJywETbXjRpymWBY0bnyhmK52B+rnuJQuexx1uiMfFDoiHerkjTU57MGqo/alZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757143795; c=relaxed/simple;
	bh=PFqWrE6QTEkUhEg5Z9bxvI90fBWcGm49opgKWQ9uPpU=;
	h=To:Subject:From:Message-Id:Date; b=CCvy1mmnfingWG+OjjGDiQp5N5FryX2Rx3g/UtL8UAhSBcOMeS4TiYRgfJ4g15Xy4Z8eLFZU7YcSswH4Qs4+EOJa1Aex5VfW+jgJBRoWCa0hLiehKBD+YXkTWfk+jWTZ7dMzxqyyx4pPkdZ0y0GesyDvyc+w+Pfu5rxDiq1qVDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHvf/Fir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHvf/Fir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F074C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757143793;
	bh=PFqWrE6QTEkUhEg5Z9bxvI90fBWcGm49opgKWQ9uPpU=;
	h=To:Subject:From:Date:From;
	b=sHvf/FirvgmvrwgLaBu7uvM9FmRP9DlsuiB9ubfchvXQHIUvxElHbdrhHD2oehgrn
	 zyfrKcTXg+VcocDA1mPjTZTbuKzDVwx7KY4vv2Az8pk8qdJPhvHXbuu7a9S19/2h6v
	 8f50KZ/jEW9U/QKQRCiUdQCwa3c/n36Id4I+KrU9+rYCa5sgVvBvS4H6t2NLL5Tiy9
	 1cgEvlCsoDY2lZSqTl854hQtJ+Cs/LdpzxxbEaFpaJyQ3xo9m6xZKWP5oVzXBq3jAj
	 45TQ4QS4Wc5XJTlxdy/oSA1v/2y0ebGhBQO3nnQ4r+C5j1EMVZXTtb5RsfVftBGfus
	 UBSyS8gO9kU2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22CCA101C
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714379357.2626.6781719958046993412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f61ece40871f13c67ae09538ab901c52a3b68c8aef5047d5629e70baf6337cc
Date: Sat, 06 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757143793
