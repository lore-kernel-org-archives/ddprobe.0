Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382031DC9B0
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740158935; cv=none; b=fqpRGHn7ZKMMF7BrF7by/j19QMJkbX4yTrVpeJ3gP1ecSX7wPJMsoca7Zq2IN0niwEV7WwJDIMOmKkAH9z1U2kJQgiPCjfkSqaBSzRdL5MXbE4LakwF8vsCOM9Yo3Cxpwt7FP4/Vmd8OTyfYPRcOczpvutHLCa1sGTnBNlPtC0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740158935; c=relaxed/simple;
	bh=pGz/DwiKyT1q6BQNX/niJSWgwMnjR8KRJdEf1CHHvtY=;
	h=To:Subject:From:Message-Id:Date; b=bnujrGxdrJqbjg7TyijUILoRS7APdBp191r3AEtMQGktI6peYbgLmXMrHlGZULXG9/X1aCZqrAMYDAaA43wG7lOVnZGGn6ksLZ10e9KTtIULKevnZK9p/k3SOIIjSc6v+KWFUozWGvIfH7QLrlzp5yfwQp2Qpconmvvf5nW7EZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLfQEM7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLfQEM7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF53AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740158933;
	bh=pGz/DwiKyT1q6BQNX/niJSWgwMnjR8KRJdEf1CHHvtY=;
	h=To:Subject:From:Date:From;
	b=kLfQEM7pXi23tMVY27EgvBAb4XzoAwMxsJFtxZaJu98LU4dgosrs9DfrNyYCnRkpp
	 M7k1/pjDZr5Vl/KckFO/QLgpmxS9dmo809ChC6a1sIlp5WKGQadEVZnIPHDvmLIQDA
	 9pq1/9x9CFgp9IQGApBhhiZqoFZ5lt4ZvAu64thieRGHu8CmahC5i1DFoEusb8hwW6
	 CmBQf/0tRFw8b4Pig+VMT8Xrhou+V98ScYTDd+Rv/raBLBQbTiWv4R4cokIQWGB3Kk
	 0avMGh2duWep+UcU1I2tHjtJgIqak5dNKoOBX0h686wq20C475WrG2gHqL9rCJn0w+
	 o1B5Kv509lypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E983C021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174015893364.28124.2809660436662777044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35833801d04534bf0aa03f426ff879f237ea0968e2c3e27197454219cc53d997
Date: Fri, 21 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740158933
