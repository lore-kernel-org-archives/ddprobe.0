Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102553016FC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770325434; cv=none; b=QfF6+fyYr41+K6XaSH/wGrbsA5W4/ZKgisoi00Y9V9XY6viXhKQUac0rSYzwP0grKQB79fTa+2py9sVvbhctBj+CPliq7UXqwxYPADVer/AGQTJqJowOi9Ihkgk/IZu+ZtCIHdgavOmim2QHj1fVqzuByQDQy1+bCEj1Z4Po5JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770325434; c=relaxed/simple;
	bh=RmTHDXGAxNE6K+YVtEFKeJ/IeOP8GAOB89jWp0646tc=;
	h=To:Subject:From:Message-Id:Date; b=YZOIYo7pyWLYaox8R0HHyMK+7a0xosV9kex5o2sIlE7OVd0r+O8duz+e5YO9fnC3CvChtkpo5woTsovi+cjg25V+/SQGwntIZAdv1TSwZ9O+VfWozBSa6N1MSBHkBdmuYr5RiY+Hsxy6SVuW8bSozpjFTcdfas7XBR8s5NrI6vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBzMVV7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBzMVV7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA780C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770325433;
	bh=RmTHDXGAxNE6K+YVtEFKeJ/IeOP8GAOB89jWp0646tc=;
	h=To:Subject:From:Date:From;
	b=CBzMVV7jGHNe67wL88T6g0qV7eqX1PJGUCMcatJHe+OG8TFur+jA8jAfd8puPvyXi
	 n/NXX9MDjkjuGL4Hz+EPq5Thuzra3P/qAn3MlhDP1+Lk2GNDpkrYqSn1oVK7aGGqkQ
	 urLd1r/eMeBz3JQkj8tdn3a5oiqbcUrxWd1b+YRxw47J9gWzi47dmK6hLxy7DLiTur
	 OJDSZ0j2BVslIfWJvvFIRuv1YA0f5s94e1O9XbM+bEMRS7uCj6xlhFHX9HV7f1VrMu
	 R3ltn52aDN3qYrD2qy20pw13qX95E8jNa6L0oucuFhdTaTTWE8qT1QNAItPWzaPHY2
	 udv/+tlEXYYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A456ECD997
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032543362.4862.7173537992174227248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b11b5ab4cb736bb9786d4b361a34c3dc4bdb8650922617683f1b8b6e8611fc3
Date: Thu, 05 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770325433
