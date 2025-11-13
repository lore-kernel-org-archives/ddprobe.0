Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9D357723
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763056194; cv=none; b=HzzvTa5n/HcoG4mIhga4BJngcj1LuVnAHe0p+/o/ryqMu2KQYmGDtDhTjzbaxXobEUgxg86EAbBSUGtNr/y5dE5o9IXImhOrtKD68cRBacDziK42ABr5P2tlRItEVAlBVJW7HWa9Mlsn5nat4MtIOD4mHUN1xvINxXkVHtrxEz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763056194; c=relaxed/simple;
	bh=ygJ6ZvWgjn6RCHLIGWSsl5S8yRkAEZQgml65teXv17w=;
	h=To:Subject:From:Message-Id:Date; b=cTSjhhCu+SKSAGss3N8/3q4+rAUReO1B3RK/4+he32JLdzlVqmaYCvyTSnx5uWo51q936kFDIc/7k2WpRPuPCTJdvRmaqgZSTS2xknjWTDV37rBdeBRwt34Gpa4kSV0T4aXHmaF8qDdh6AXC/lmVaqfvy4jqZAbQH3H8dQE1Vao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwlbmoox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwlbmoox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088EC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763056193;
	bh=ygJ6ZvWgjn6RCHLIGWSsl5S8yRkAEZQgml65teXv17w=;
	h=To:Subject:From:Date:From;
	b=iwlbmooxqX8B5Z6bO29txvnaac1sswQJsXN2d7watzztWqDSeGzax7kxTIkzElL5T
	 L/HF/0NLsI3YhYczmVItCjAzRsNkYTXfWOE6mUnSuAJ5bYzOP8y3QiRRo4g7zfn4+/
	 cwknvoDZiU+pXShXS5ySrVgYd4s7kJcUsOr2s/RIjjNw+j+EDh8WgcnGNnYHYYIqQC
	 YiuRSs3RlW7v8qtCe/WMXKRr7nbBlfgvzbB/8Q4D6CZ+eNO/3AHY3QdO6alzNQS6Ro
	 N9QG8WEvX3bevS3xSShWIPqcQe9oPssQ0degz5RJ8xLcbksesBTWW9pAsnGReA+0i3
	 8eMInuZzYhX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B3CD8CB0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305619357.10759.15176119424711621998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d86315d22d280f01deb70676cf28987787b897011eb839a3889a734d72255a
Date: Thu, 13 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763056193
