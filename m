Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341A3D96D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727610954; cv=none; b=KyOqbq7RLspogQ/tItRi1cFuoI9WAaHUAuhuiulyGfAQUpzCiojlnnkA9TUTzgcmtGxv7TpXEjiFmOy7rtLYXA5PliznoYLz07exXpiW98rtIYRGHelqZyC/BqTDHMFJLLfEBHSeqSsppUHfxVVBz+wrvcQeHs3aFdivVBzoGR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727610954; c=relaxed/simple;
	bh=rV4nzUM1gYCLCdBA2HI/kyb/UoCbQjexAfwe0NGeMdE=;
	h=To:Subject:From:Message-Id:Date; b=QR2bb6Urb87HSP3H+Qnu5hXhzH2W7xWdFU8QSbcDWZ789LHa0qXDkyxmFALFOUygmkegJTDMhmlKaWQjWW1KIeIji2aHo9z4ZEWN8Bxh3Te8bkb2gaB5RT/RhIxlycMMp0exPo31BbHb4s4BEXHfO0wXIwP9fdPAgJ1C8nqeto0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8V8jf5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8V8jf5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD273C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727610953;
	bh=rV4nzUM1gYCLCdBA2HI/kyb/UoCbQjexAfwe0NGeMdE=;
	h=To:Subject:From:Date:From;
	b=E8V8jf5MTVxdLwuBRevbkJGx/eCNBOP3otNAoDITcJdDStNQP05vHZfYywcAEbC21
	 k9L3LllPt6M8ux5kDFRQXfRjv8fefbKf2MgLIZlmtAyWWSEjLnWYPRN/0HGnfS+N2Y
	 OZdkc9oPhcN6brBZ0ewYEC/ODfmXQ7I3cQfz8PlvmT6xFnDPqXUqdiwhAoMpNegCig
	 Z9wl/bw0Mo8gvIUFH1+OqLJoDwDj9lI7sP6YtYhM+HpO2vmfZVWhstuq8HP0c7eNhD
	 wPVlHNBzZ+u1MUoUwTlIzvt6RG/k55IV1OLOog1BjxNKfomfbbJD1doincFL/fcNrB
	 rrwktjcL9ySog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EDCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761095364.28981.4076322424847939133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e1752fcd7d3ed6d7611bbb2a1badeb22639861fcb2d4e10734abef532c4240
Date: Sun, 29 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727610953
