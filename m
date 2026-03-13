Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AF71DED4C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773370494; cv=none; b=rLizbMzoozC/2r6hPXfJZLQVcwVYYmA0pA/CIaqtrlukH59owkcduc77UejDJEbYTUkbcvs8XuSFL82GJExkSKk+ne7HWmKjq1N+q7o+HxVRal9lbo/DQn13LTyPFMkSh/oBNQMNQIBkmz8DYkRJnFeJnWNg+YZALghtYH2ZzZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773370494; c=relaxed/simple;
	bh=DOVkfskxJwi8Yyb7P3lMjS40+aiUnm644DrYL8cfKfc=;
	h=To:Subject:From:Message-Id:Date; b=lUDFi9/ytVgw8CuNvZKbdJXCQvRpxYKHFxhdAZrelI5eRAs3ZeMs9HKBN9iA7dmLdUg7IaWcwx175Orkd3yAHHVBdrUhe4+DzznjpAWkJ0myUWNQgZyibDGf3+HQ+B91KZdgGI7Y5x7Z8oliJhZch+kO+7C7V4S5dDyVcjP3eQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ro42kixj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ro42kixj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F27C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773370493;
	bh=DOVkfskxJwi8Yyb7P3lMjS40+aiUnm644DrYL8cfKfc=;
	h=To:Subject:From:Date:From;
	b=Ro42kixjrXB1WVLMyLN5Eel1giuaQfHNarARVDxyEDV+2S58UKqOk12xoYiGmkYG+
	 oXBy2oIwjSe3ZkbAIwDW4caT2Km42qI401YL1FuseIR9+iuWlAmd+i6odu9gXMUv6K
	 wiK+7rA8Qb22COSLh+UKsNLitukQYGUhubiwzxY2Fxq2f4vS+d9yfR4S1y6COvCo5P
	 4yP2TmZr6Zk3n3TmCkw1SjtpvwLwvNlXanQ4a4bjfiE689isDDFqWqmS0LTF8Cy8At
	 EHdkZ9do6/sKbmG+gM2eyi91qn7DkbGThz4wHfs+aMCrMifI330RO7Jyd23O0MUC1a
	 3Ltdn/yRU00Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F34106FD66
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337049357.6777.11458568728447261272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaf7a7e9a203fec8de2d18dd1bf44e32812147a0d6f34d777ee94f860325a69
Date: Fri, 13 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773370493
