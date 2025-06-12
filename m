Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A07E1F16B
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749737394; cv=none; b=LRmA0BEqjCdoMaOzVXJ4wtvlHDE9anoy/OM+tjXYivNYHTWz4gHA6MiGd1VVOdoGOc0GOI+X/ODDXCisxSy45ZZD+LRqMyoZKEWKEXxORr1Ws3VyaAFFb0Yv9m+hVW/6Iy4qrkflsxKIuAHph1DhjbOqC0XnlbBjLGIcSXBq3hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749737394; c=relaxed/simple;
	bh=a3aCjN4QYyD6kDnUp6tZxwLWqS7e34bVld5Y4INExyU=;
	h=To:Subject:From:Message-Id:Date; b=ed2NWdS6l9e81F6aW2BzmJOyqR3F5X3FZyywhP5ZBINQajl7EoyxkYTR1g5IqzRsYUc12XlB6C0Wql0WEbb1ndX+IbJ0ocS1JjyK41VU8hcCbjOHV5zOUDjVTFdsZtLadCnRWkDnj7Y7ZfHgZUv+05OhmpiMa5a8Od2XZVsYbiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3AiYblG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3AiYblG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F5CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749737393;
	bh=a3aCjN4QYyD6kDnUp6tZxwLWqS7e34bVld5Y4INExyU=;
	h=To:Subject:From:Date:From;
	b=g3AiYblGwTzSqC++s2u4eEQJR/+LF+MpRfUVYP43zEEKTZNjlKdRSUVzvkTH4p6xE
	 fCTjgHdyCvpK0SyIiLMIIKZB6Jdcmkn6jZ9Gfr7rkdX6jeAnNRXgkGkv7sw7q9UC2D
	 kFP2NCwWs7iUui8S5WWEMAubArVaRjwARgPhTxnIdTyMGHiH/eRLNMsD+39DAQiSFJ
	 R6qe/UQr3xZWHsEUqLmYb7pNHdNSFJZjeGU8JktbTF0lneTtNF8ayg52oH/6zobHcL
	 mMEGwqEooBWH4IW4UG1887Lz6aNi813gbHJqMlJUgmWZSMkfunZWZdMYhIGgfUmPOx
	 lBU9esGsZzu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D3C71141
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973739358.3122.875347653248297770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2412bddd1fa0857cc058ee62da77103687b411153be6a1bc0f2186bb8bc77796
Date: Thu, 12 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749737393
