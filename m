Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502F954704C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790485234; cv=none; b=Hi/uaJbVPb6eggZ0xdtqmqGSnu7p9oU3g1p3kgEWAEZKMKUqLFZFfHpvLAt4NbW59NAiFjM8umrxrElkjRYHxQdFLD7iT7IuF43CA5fD95e5cOgTjH4Z79urpAx2+hqyX4TJK37j0bEAVbjy/uMzPXbeAGUcmK2Kqj1qMt3lcB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790485234; c=relaxed/simple;
	bh=va2h5sfLhEF1luR9ksG8LlTA5gHzRp6tyV3SsHn5RgU=;
	h=To:Subject:From:Message-Id:Date; b=ZWtZbzaOm+mDGJBKnFpYoOlt/5GclK3F/A6vae77U5SvIpVIAnWLVqfC1T+ArjeUJDqWNwoW6iHfEOfWaTuyAxrtxKih74olV1BlniZW/p/UN4zcwJBvRISRjQ6XjZuUYEMSOAs0ubWIo0FkR7Zxbr9DTjvfSnSJPoTt220u3nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI1HVyFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI1HVyFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D2FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790485233;
	bh=va2h5sfLhEF1luR9ksG8LlTA5gHzRp6tyV3SsHn5RgU=;
	h=To:Subject:From:Date:From;
	b=OI1HVyFan+mvfvhov+hKwZGfzaGUsQTTigrzojEvoyHKZj+UcndASNZr0tbxGlmBY
	 5tWOxpA7Y1+qEsV831PQfDhKAFfGIL20OfHf9L7H7+qzX0pACe3qCTxS2L7LEhDh67
	 OZ9h/dJNNhQTYAbdgeKr/RekWFYHMwlWwv/mnZs+feV0urAXK/X0k1rDNr1TMEpwhy
	 3wHPWRf/eXy0GMmmN12LxSIto8vFIu2Vm+lZcygNlkkTQ0NW8YVD7dKKoCATN2IgLG
	 mvUnY+eYpGjlcNHwOSS9VyaZrhIAtiNIAHHkwuVkKg7pD/hGECjI3RWmEYd398yrz3
	 D7hO/d7cp69gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB94C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048523370.5542.8255682349807301615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cac23df38b000b2cb7beebdc90f0bbffee305be653b68fdeec21a79677f1a91
Date: Sun, 27 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790485233
