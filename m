Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C6118FDA3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729241754; cv=none; b=aWqD6cu5/4COKbzv/LpyzPP1SOwlLp79nSccRr+7jqAG9FyQDHhBaCjysL0P1WMRaGVRaZ0EQNBCWY+J5Vv+yLjNUdWJTdnbqPmL3/+UQi1N9lhSaFrRXPM9knfzcPHm/qStD43wQzZkw8ibmFzPQKCS8Tu69+ebvjXtj2nSzvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729241754; c=relaxed/simple;
	bh=EBDte79J/Rch7qJOZap5CWx2O4pyS3emjYeheuepepQ=;
	h=To:Subject:From:Message-Id:Date; b=QNCFT1UrUrU1B1KsREO6Fotufs1r0iUns0cdSfLeNKfXiLO93Wu3+mEtnfzuE7WjsWqDyPtkfRZWofp+MY9kRwX9rG1vs/mWBhDXmGQy0yOT+OvX6OStmrPaCiX8kD7rA5HLW5B9kikF9JDAnri8FuK+4cvZlpdpxx6WaPYLZWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEbQ8nee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEbQ8nee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2548C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729241753;
	bh=EBDte79J/Rch7qJOZap5CWx2O4pyS3emjYeheuepepQ=;
	h=To:Subject:From:Date:From;
	b=XEbQ8nee4krVvWDGseJRnjlphVLnYm/1BeJB0cmg09fywJG8yNfDaBKxLP7k9AKNI
	 l4tO4NbR9mYaqPfz4WWbnsm1xNP8CvOz1fp6PpJdDghh+pglyV/21sr0Z84VS3WLZF
	 M1Od7yEzyMxrNnf+od8hbGPXX3WLf3g7bGCdn8mFnqibrLsWRVZ6KoDpUeXLj5FQz/
	 nUz+eS2a0lBVl+U6Hr5z9m4RSSf1fNlxfNo1vbvR1AZfb9j/JTgKAEde417W+pZBgs
	 eGapl5rFyZOz6MZzB6hsb/Tq27FBAZpYua6oHd5iVZMNL4vSjeJOiHO+mrfuwqURYd
	 JuWXXneHo4TrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91451D2127B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172924175358.7013.1837667013934113412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef620872875052bfac695cdead11b37b5240e3a271cf8ac1485000225ad71dfb
Date: Fri, 18 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729241753
