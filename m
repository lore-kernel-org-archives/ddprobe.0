Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590F74F404B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790014234; cv=none; b=AAQC2NnVRrebwOXee8wB61UqPq/PJUEYmiGZYY69O4o4nHJoSI+7zEzTU26ZxcT6xVNAqOzBTPqUJBojejZJhSogMkV1ta/OMc2UoaWC1FXjgUpJoBWw2BA46aWAzayqlMTD+IwO8Q3fYQAX59EfqGlJbRengVaw8CbleinJq3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790014234; c=relaxed/simple;
	bh=PCNB8FwJ0MHWDn4biwA+BWJRWktVa43CUbe5yIRXNuA=;
	h=To:Subject:From:Message-Id:Date; b=jB6W8RSAL4M35yoHtkTvRSjk261UriC3DdyLAAc5MzLV7FvV503ANch6NpZy3qgDmuP7qzmVcm/6LcKjQuQT0IdozsWFCI/H2vM47Cp2K8QdNk+SHTuO9QYL/gFdMh1q3Ik5XTnebgir6sIbwjgkVtZ9y2rRf0eeo0vUuIf7bno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ51NBNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ51NBNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA87CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790014233;
	bh=PCNB8FwJ0MHWDn4biwA+BWJRWktVa43CUbe5yIRXNuA=;
	h=To:Subject:From:Date:From;
	b=YQ51NBNRdL1guaiYwmUYap2B5WgxdxrIpy7Johu8aegTs9fGmkDE/AZSNho+WRWWC
	 Nh5rwJwgeum8Tt0gW05mZsGmtQ//Dws2sboYk6UpCRWv3q+ViPowPcXZRUwdLG8JCW
	 8weZJBOYYAk4jzsOZZTP/7U3BP5z3UDGjDB5fLkA9sZ6cSFJ7avClXd74ObBUMDjD4
	 JYE3kL9VYWKa2nKab507+QJ7bckY1VzLAVXnHUCENiRKCNtf+ralgAolUKC2dD77d+
	 oa7dIreEWicC+cVvrHseG3Usat7LPDjQTWNnO+Xt01lVwkgkWtAhK68ZyLHucJ5Nq+
	 sHM8E44KOb2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4204C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001423372.32599.6495675406538077807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ede9c97795a3c2546667e0dc5eb083e8983c7086a5aeb426fc69c86cfd7343
Date: Mon, 21 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790014233
