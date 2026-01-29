Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26272347BA8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769708034; cv=none; b=pA5OvzA1nzebumzXrnKadd68LHs9kArjZMpwVaXRK8u1AgH/ICRo4W3pQc6/B0HeOeeUUsGGqq0HxosNBfeQ36Ocif4KCDWpGXnr50ok13uGRxS1YkPzbPCeidnmrIeZftJ4+6JSdcdzqyf69BPpCeSkYNVdSViF7ppapHqbsZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769708034; c=relaxed/simple;
	bh=1el7C1ydKgBoJWU1b27RuUtsMExFWAigZG84VwM5Q2s=;
	h=To:Subject:From:Message-Id:Date; b=P1NDtJHgF/thtOU0aDOjaY8zWk8pAbArxoy7ggNPUqHanA27Sh1whdbmuXwVLYpeqGaofSaDONAEH8uTClR4DybTCDCOSWE/6ZeEViBuu+y7jSqlQnICuumNKCsh2p45K/+/WlgOnYKDNBCaptnjcLSxN/Mj29zCImK2XX/zuQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcqkEPvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcqkEPvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DE2C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769708033;
	bh=1el7C1ydKgBoJWU1b27RuUtsMExFWAigZG84VwM5Q2s=;
	h=To:Subject:From:Date:From;
	b=bcqkEPvz7j8YuFmqyNCMCUVHOrQ8nUyiUFAMFvvLnnqtwHIJCr34fYwonS4jEQ5zT
	 LEtS9ICi3nu7Ib44UbtFUz/uCDimL9XHq7hDVdDvUIKuI0l3/puOdAHFwBujAIpbKU
	 rKiV3HIQ8JmEpgm6kE1dBHzJ6+sKSHTi5LCVxNNj6YnPyMhji/dmi4XIQl4+cAIXTW
	 bfZAJCxXuFkmf4VzQuNjbA9vf1LG9KhQ4SRKe8YgKmKq30yF3c1RlGVAWQ9wotY7cn
	 4qS1NT3F/SGo+sarRN0AhW3sb1WvP3siY/ChsfKhuo9Jj9ktNsj7UjiVGEvhfnnNbb
	 7ndYvE14OqarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C94D73E80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970803360.11421.909176913288796659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ebe7b86d7cbbc76bb4e6cff33a997296721861a97999d43065084247d462e2
Date: Thu, 29 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769708033
