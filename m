Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339D519D8A4
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741332534; cv=none; b=QLHtO/tfObZ0HnJZ37eoPsQDcLOj+IfYqhuZbcljh5B6xnLin1QHRPjkvH1FryOS26D/u5jDzH5Z0SX1vH3zwtTxAbOeIv0hm8PfhEx50MOZLblY7QfpGrDAn2+IGnzROLPMpPLrT376n5HiQKGF0vUQfFsXBYT141bNVEsqtiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741332534; c=relaxed/simple;
	bh=pxKeMY4Enc6rn69JlSQdSvxXqRRl1ixNJsh0gsQOCPw=;
	h=To:Subject:From:Message-Id:Date; b=GGGvBRKqIzenkG13cwI970q2ZZH1enJTQFkHnOxqYU2UZSh8sUXBv/FgPs7ihPvzipOJD1YaAkPkeEorn76bZ5ApmoOdwaH206YGeCr2QQK0P8c1vLQI2pgxdK8orv4mx4C0Q8bP/NY5F+qjwiAFJo8W/W3+JopNUk6uo+69mjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbJcSGbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbJcSGbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741332533;
	bh=pxKeMY4Enc6rn69JlSQdSvxXqRRl1ixNJsh0gsQOCPw=;
	h=To:Subject:From:Date:From;
	b=rbJcSGbp7w480AAfzu0j1bL6Ufp2P7+GE+aTZlYyxH1t3a/61W+HYza6lRjxZXMmm
	 NYpUFDapC/uaIdvZRJxdz5WL6OT4sRieTD30vuMfT5gXRwQ/aMOehq9/D9yAP+IKRf
	 al3NsUgocpOXTAiKKPoAZuL287H4mbllS1i9RG4NY1LlHEDGw7GuupY0UVsypS5DAT
	 hdK4ZzAcA9+hmqMKokHcoIhc44OcYI8ofY4FscZBbwGKFQJcuHrM5gKdhb4hJQ4jeH
	 2CGqY7QXRD9Jp4kKfvLPCMdReCGKZmN94O40LbcwPJ2muyOtIdsUIHP7crix7klk7r
	 3EJLal/p66jMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361EC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133253359.30915.157655811454854410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302a544d397048d158b4e4e03a33ceabc35f0b1ae83d920e3fa9973a22248d4a
Date: Fri, 07 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741332533
