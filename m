Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323A91B14EE
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722440154; cv=none; b=iA9whJMjlna7T34JercQjtrQiKxf7LNQWIDFUHINZFFkpzaLCR3ugAhRjI8vxrtBPiEga3PdEFpN2r0KakZ84wKc/8LR9TIU7XqP4uvHV0d/YEG65jdjO5eJ7mCg5wcz2g0/1jXzKGecqxIcs4ustilHksvsTm5xI45/m8WXtL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722440154; c=relaxed/simple;
	bh=gX1uYntn196fMhzpP0i56NMPejq71R1fxVZ6nNDqFE8=;
	h=To:Subject:From:Message-Id:Date; b=ZbesKajmmHQiv75CijovLAeR35xzygOwZcsq9Y0tiMghrmnnHiYn4MfucEYziZQk48Q23x9BoMiZU4LFKHtrJhfHMyYqbvANJkGi0On2lWIcog3OMVCvd2HI+Zj6zc575WHkVhYYMgvHweZXhiIaO0PQPLjcFgVviZEsTGitN/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgV5gSZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgV5gSZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FA3C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722440153;
	bh=gX1uYntn196fMhzpP0i56NMPejq71R1fxVZ6nNDqFE8=;
	h=To:Subject:From:Date:From;
	b=rgV5gSZ8lpqe38fLDVVlAeaafwBLY3Y1j3CXt3HTOJjJdECoxGvE+iAslzfPy7Q8X
	 aQuJu7l1OlIo5/d38VFO6swoHbyXs/FOJULDoDt0U0X626QHGA9w1sLJoLLHv13zYB
	 hsKAYkjW7pPdfl9rEP3vfd4jlPXNXD2CUSt5sPr0pyy7HMnL4Ke4eEFkuzP7Fj0q+b
	 IPbpEo3RPpv6m3WR2m9ltlo737Qc5mVLRAy621uYyLecjVDeN5ziWZzTnlZgC7mXND
	 UctNdpZ9k4hVk1B8Ord6oK1K+I8FdjmfPAvTftE7VOogbngm7x+nBRaaHpe5mH7Tms
	 +Czcy9nXeVXmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98568C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172244015361.20784.18268802272333202966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed0556d34e49e9d7072ee49c0742fa439e09a4713e4e6ebadd051011a92c842
Date: Wed, 31 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722440153
