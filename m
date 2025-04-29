Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE652741C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745908794; cv=none; b=R+ohPxRB8CcvS1qh9E78a8EAX81bp62ziquZ4fiqkUSUo6hQ0cMZoqQaNYPiOPdEW5u9JWR6K3DpyFCJEhwlE9TUqKkAAyGvjOczbJ+Xe7sFBZMYTz3HMlB08QYKSFPjpMQ6PUgzXkZEmdlKleWCynVWAMRvwPh2RPrHh515FCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745908794; c=relaxed/simple;
	bh=9lCCAs0QrprxGKiJX9IFPlZ9Rmu1ILLQZV9v+3jKQS0=;
	h=To:Subject:From:Message-Id:Date; b=W+w8Z/4cFt3UMujGV4QFt4CuzE0c7HydOdVt5O1c47C4jlP0SERgFo+6hJu4LAYT7OLqQ4Y2kIr3CpdjOGUTf0R1RrT/IWovXFKOCArfNkJY+Mhtt1WdaqpTuGi8aq2QPgVd2IkRFvtLggm3gfBNYdTYbR5yb7TUcYn3iquRle8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btWSvhOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btWSvhOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6FDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745908793;
	bh=9lCCAs0QrprxGKiJX9IFPlZ9Rmu1ILLQZV9v+3jKQS0=;
	h=To:Subject:From:Date:From;
	b=btWSvhOIUgjB2AmY7ar/0etmesA9Zsrb4MA/1+/RA1jFmvxvuQKnmd53xKSKjDsdf
	 JHuEAH0gtK934oK2e/Ae/0W0Kyf8hRlQTDXv2uh/sUduZUAHj+xYxz5KXFtKPp6rlL
	 x56iLbiTPjJKRZiHt86m+sBGC8aFlC8r3eW5lUgyW59S0QIytt0pyhXtdyibXUNTdS
	 Xw9A3BUfGUSuXrfSMWJl/xknQ0WxAqLK4mausvHBhLe6vq2FLpBCJdvotg5I6DNZGY
	 6kIG5Jk+VIBHLiM4DcRnhItQVQjqPIBBLNV3KRhsWCc3ERqxjekD1Fb2rSLvEkrQiy
	 Ay+cVFXfjwFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F13C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590879357.31891.285091897572773961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07373e2d63449e6419deb43ae3786e1bd82f18b3ad281acd9652bd8a4735041f
Date: Tue, 29 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745908793
