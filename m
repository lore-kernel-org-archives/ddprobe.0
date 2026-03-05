Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE1822578D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772718893; cv=none; b=TVv+CYxka07Rr1nSK1/5Wu1dWT2GTfYT/ph54KR5WuLAcwJoBrlc9VAycz5BsagbfEDjFWoj3fABvNkVTfaahrPOjolHwHCzsiD1nmvgKO8lfBvoSUqJRijymWxgs2JKuawep4t8PB2haTPWkSCgNGTbpF0ywOphhN5+wv5H44Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772718893; c=relaxed/simple;
	bh=bclcQEy6qicwvAspuIQFywsN6ABhHnixNqphWJO0NHE=;
	h=To:Subject:From:Message-Id:Date; b=rrMFcYFgowUn9Tk5n25BUQ9FMgbRYQWb6bTk68BkRcvyTuEnXOmXC+PPdgjLAUPnjIaHvVvQUuWJSh8ObwzbdHHearAUjNsQI/qOwZal2w+RHrS7fH2FzA8HM6GZeZitgEkJQiKlpG8flstFduuJ+9zFumXRcofMDNCCC+NyU8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i68nvawe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i68nvawe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BADC2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772718893;
	bh=bclcQEy6qicwvAspuIQFywsN6ABhHnixNqphWJO0NHE=;
	h=To:Subject:From:Date:From;
	b=i68nvawewygcWu6OUKZZPB/jYuDA/V5ce1P7hiJ8CQr42akpI90JqqsGpUNKScxMA
	 P3H7DrgzNc9Jq0XWy+9vvCzL+lQiBSFlX2bMm67EPkPlLZvcqpQNMBOWQ/0rAfX4s9
	 P3qARk6wf57rO3p+Gs4PL+aJY9k5rJZWPwLC3e32y9aSo0puE+SprWHNyIq8Psibr5
	 /dSNJxrCNTYzeX34TvsHMJ9U9z5HTuOkX2PW7EvG6+HzHYLDy361vGLGGVSJqis976
	 TBx2gi2Ysf1cncfCwhsYEOYjVVyZBFWHlmVAv0Y9IYMs6w/H3mLGM/WGrpDGWoUmng
	 XpY2jo2FM5YSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE45F33A63
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271889364.18998.12330636123866024221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93c9ba3bc4d757da519b68c62c46aa92e09f9de0b64b30feb7eb0f3a3457f8e
Date: Thu, 05 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772718893
