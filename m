Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1F29B765
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745895594; cv=none; b=QWSa3ureXsfVosaOs6uJrtIJlzogKN+D0rBC0fUzx/QTkUwfX+6xI21OvH7ZQIV3VFoxEcQ0R5VxfhZNEbtpFNrieIRB1b7lhJpWBrbBBavpdJzy6sidwTRlFx8HeNXcB9iysHNAyfzQ4TPDYpOTgnpt8CmRaESDRjX1r4kteIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745895594; c=relaxed/simple;
	bh=ToDTDCDjsvEhOikIg+jIdpdmyezc4c0cQsWhSrnu4xg=;
	h=To:Subject:From:Message-Id:Date; b=e/QDL5N5MRpVpqDVUIQewr6v4eD4wBjA4Dzyyma2i7qSb2Ertx2LnOzmnlHY0LUM35Y1KIiakOIOIPcQXkg3HBcRGJlX8Ti5gy01x+6EKVxInEKnBnFMoy84hQxypj4bRnwUm0TDCuGjx7oV61R3WBHts8YvDpP7rqy/qZ5oJMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdasKPAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdasKPAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2C4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745895593;
	bh=ToDTDCDjsvEhOikIg+jIdpdmyezc4c0cQsWhSrnu4xg=;
	h=To:Subject:From:Date:From;
	b=PdasKPAq8vC0OvHbd/z0aDlgQIBJCg9ivQ+57lkgbVIid7LCRTLZheRRKTzf0b5RF
	 OqpqDAsNvfVv9FluNZmCL6Lzfg0MPdZFwJfOa80bfSd4BuRn+7paz9KPQ+EEmVjvVu
	 wuEmyEseQDp2zEasSgKO6wueFTKEGNAy/uCG0nOxcoyHJzqDQAz8h0Yjat1bhRQbMl
	 VVpWIA7KHp0Xc7PuO3W5uIUvgw6zqcCTydX+D1MfloU5Msr3yIicgXIMmUvral4P8y
	 dVzNUdW8PaMQTsFYUzcGFpWSkJKhGOKij8i0nwMw5mUP0rXolr2cxkIBYihPwpN+xK
	 xfBXcNY2v0NbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76EC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589559357.15139.17589447016900063239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505bae172103a161b5861557f1f91788c358cff70cf6994929ccbb4fe2ea2a2c
Date: Tue, 29 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745895593
