Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42F2327A21
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757609393; cv=none; b=WLZZuMeoCI3DVOLK/swIKA6fkoOcYUOmw1Gg5gP0RbGEzCD5inToyPsbJXZxUR8A0e08z9Az+j3ezcBuYSSW1TR3xCFa3dtZuM1xkwNi6GqJbL9Jcahut1BOIqI52EnL6kBt0T/sdp1NniHjLVnydAUeZ2jzfIeT/AwQfIixZJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757609393; c=relaxed/simple;
	bh=KNsO8sCGI8YW/WPSWpWE6fTnKFvbR0prKQ8ATqmy1CU=;
	h=To:Subject:From:Message-Id:Date; b=pcJpUOFtgX50g3+DbPuPHrjIJa/WaQLt/qN+tOjtW4r0d9SnCTKzO9MShzT79mmmzJpaa3a5dRBlewUKGwze2Et1QODAd87lj1qoMco/HARxtOzaLRDbSmQv0OuoG3yHXM7p6Ox+og4qiHxhJ24YaXfdHABQ3Jk19ZWEV1ePQVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANB+bvc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANB+bvc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F57C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757609393;
	bh=KNsO8sCGI8YW/WPSWpWE6fTnKFvbR0prKQ8ATqmy1CU=;
	h=To:Subject:From:Date:From;
	b=ANB+bvc/6OTWZkXB4vCeEVPMNBL9pTYc0ibnD8w4Hjv3/gDf0Km1Lq4vb9mcRyTim
	 ZMhO0SIynNrjX/uzWyCRSUca2JGjciV7RYAT4TQW8yGkGQXsFBdZL9wZAeBPImy87/
	 T67uUjW7MdNIi3X/4R/41u3vdaS4sb5y+73ZL+dd5sxgxLX42Zayg3/a4W7xleZdPy
	 o+Ozk9wlIar3EOB7BJnJjZ7gPiDiGiSer6+jy6vS1BH7BPl1cjkycly7p1biOvqxWD
	 N+z7OsklXQaOD63d45rOXw0YhBs85OGUA7X1u/qxFfiqekinI3jrOfzmvR/+Zmtma9
	 J9TuzazVAPJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215BCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760939357.572.6401039209815426035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03cef8be6590badea4b4c34ce152fa7de0e277b7ca25783d2409dec682a35e2
Date: Thu, 11 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757609393
