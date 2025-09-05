Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246C4163
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757065794; cv=none; b=gdCXuHitHaZ+cOWAWuFzxt+9IVjAuKqvkRfYgkVuDPubANY7SCrS4XFrOuDDi6rPpzt4s5JL4W2botSMRFeGqumxlVGOy3ShKt3o2QHudbKYGijBc94qAgKmNjlnYGe77qTSwUbyrvUd9ziYvTxYk8+0SeAQnffCgqpAthSXaOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757065794; c=relaxed/simple;
	bh=hWbasJFYn86KCKEkYZJGwvtovnlocrdxwbF4fODk0oo=;
	h=To:Subject:From:Message-Id:Date; b=nubYad6J/X4LUMFVbKEQOS/PBEBg6jZAggZl8mHZ4z+mwufmD2Q+1JCi6zN9i/aJRcXhEbNN2WCofg2feDA6zBnW7/Net55iEgPUEp71MV1n8tr5vrHDdMy5J3ypDMAIrO/YVjI7qv1prBgxYlKzV7U9Yk05WJoMdaxZthV/KEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUpJYJMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUpJYJMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8777C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757065793;
	bh=hWbasJFYn86KCKEkYZJGwvtovnlocrdxwbF4fODk0oo=;
	h=To:Subject:From:Date:From;
	b=kUpJYJMltBHMdUcXvD2HZTHlzi5rYRccmlv0vcwZHoEMd3XXaWh4ZwLkpWzkZuMul
	 3d6lSG6+v052EOnFVeZ5LRvqLnZiNqU/asZh2CCwLzdW9i0Gml6F0ccSb6PDKvQeAS
	 0Gz0aCAJQ3++M8OQykbI/eiOwa5aNaDdv+XBeDJeDW+KOzPbSw11KVGLzClmDq+3v8
	 DzEO+mv7PH3GXUohJn9TgEd3zWnqo2QL+OGG8cjS1k86EV/zhlMaCiKbx/4y30lokD
	 ioabsYPIRgulZqpYFl6flbLLiYEOj6w2AO6MVTfmBTcYQzK0K1NXM7+K2vu+RU4Riv
	 2rOt22e6lV3nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D53CA1015
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706579360.30633.3558711854577462844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cc6e0906c4a88fa2d8271317167b61c0f5cc45ff70151309256dbb755313c4
Date: Fri, 05 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757065793
