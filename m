Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FA7189905
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751941193; cv=none; b=YT0+WLk9z8xMz/pfXfAaohirFwHdVqck68yAfj3BjGND4w6poZEp7SqKDwAOge8mcMBd6JYrl8XZce9T9RFkwbeeDhgkY2HLmlHK+gnrCyXRSUsk5Rtg+tGUlPZ+6hnMrhaZjtfTIOWeBDrWT8bXu9G3yFkgNi2/l8zgHMRfJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751941193; c=relaxed/simple;
	bh=DDXKM50P9FdDxi6+mii50qOBojtDiNXt2ie3QYZhayQ=;
	h=To:Subject:From:Message-Id:Date; b=JtlhAshebnw5eKDNPDKc2h7WTG7N1TmGpC/bUBZbc+VhpqoAqwndQgQY8Qla8Lc3kpExekqBW2CnNIA8ZKF8hl88wOxGXsKmnqQUq7uA56BnSEYJMqsmkqrxqh+EwwPIY6mEf1rHodrYfaSVPcdnGdu9jkYAX6LpOUsvCBSCF14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u93wlvJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u93wlvJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D910C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751941193;
	bh=DDXKM50P9FdDxi6+mii50qOBojtDiNXt2ie3QYZhayQ=;
	h=To:Subject:From:Date:From;
	b=u93wlvJ7l6K4SoEJfbD5kgOZ/zSvYpiEVzk6ezQ2Mk0I+zDnlGszXeX3RzMKrcWkt
	 bWZrWLweQykjpfLoXm0wKLio8/c6FooYVNN1mBLkeN0tqK5pn6uRVsnDecgDNR9JSX
	 sAbXy9H/WvzoCp5HpAg+RUPiqjDW/BhWxYj47DZdbb+99GA5i/aKwEdH+HrvVuwyV7
	 Hnt6bmz5kv5gR8IKCxD8x+OLLFccCRn6qXqcXdqV8b3xVH8sY4r5GwmbdhS//e7iOQ
	 3+Vwg5bFa1WNvwZ8sHtSAnw8714bngO475bAptcbwCpF21dQ/xAaeaspszMiu4RSJQ
	 RRDveuKVOkcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E954C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194119357.23694.17111093313112309968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c612adcfccc067ba9e15e90c17d7997a9f4f84258da7aa3fdc3c7f2b2753c3a
Date: Tue, 08 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751941193
