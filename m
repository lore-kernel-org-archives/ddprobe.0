Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D440215F7D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765492974; cv=none; b=C0RGdDPlHFZIIpe3oSqKs9HZsi5cjD2Y31aAuDzwiYlKKc6rREaKz/s5s/PS3sCWVnMVrkAUDUbtvAGByBYSjWWLUtl4wn+oFRMAimrtdfXENSvb+14Uue9aXHcepoYohNoLXScQT/oPXzMh9CTmrsTA1uT4H91Ay4Ey0n9icTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765492974; c=relaxed/simple;
	bh=yFStibZjWgpSv6jfj5dcsYzJjd3ck8mit07JDPMIYcg=;
	h=To:Subject:From:Message-Id:Date; b=mSt/xiiN/J9ZLbfHgb0hhwjpoBprXGGa5S3YyLKsSOsIQW8oa79VPo+xZLMiUwxwMsok93uUGmi49u4C5oVqOqVo9tJl7YdkVD/3uV7p7Mfz1k1mjKKySVZmFkUu97W8VHqyjwyBbbtU4O2BnyYy1CMytk0B1Y1xt4lp30OWm2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSd+9Het; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSd+9Het"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A1CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765492973;
	bh=yFStibZjWgpSv6jfj5dcsYzJjd3ck8mit07JDPMIYcg=;
	h=To:Subject:From:Date:From;
	b=QSd+9HetCLKezKHteMLV5GAOmjzT7yWk168GyYCzVagFGj+AMdAEGoX43Zk0ySC+9
	 KTpnHggzcRY7BUzVB6y7aoXBVlRNWXJ0E9M5F40SKi2OVVfG+V4amqUljl14254K55
	 YZJ2YkRydq+vyamX2GMz7AA3j2p96XLPnCq6vTWqY7BC3bQFV0Zeuz3NIdepJ9/8DG
	 gpaoUcCk2YybdRTqPDwUpaUdkvYg5z2eVy+BtPjpr5WyvqfqMWNKwIwcXO6JcCsBPL
	 Sa4qv0u25ayZqhR4AQOiQmvYxLGhfU+1EKcNPAnJyGcZP9H1XcZyfnwuPBQ+06o0Dk
	 +oxBvHNvP65VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9761ED4335D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549297360.1436.10120443108872693499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785fc8ec459b47a04efba56313c46311dda0732a757241eb6b6ceeaae394d1a1
Date: Thu, 11 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765492973
