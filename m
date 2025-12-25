Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D386129ACFD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766646833; cv=none; b=dIGydSqpRCDCqUMwRcjwjXeoeghipkxgIMKq+cyC1H6BYyQxbD3U4FOVOtMIn9ZmSczsO5CvC/IkfPCxdI5B03zeP6XEmOcvT8bpsYkerfKRxJqUIWfc5lMRA2O97e5zG3j48mpL+psiyKws+iSms3F3GpPU/fLJPsbowJWEA/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766646833; c=relaxed/simple;
	bh=0Poi7bfsN/Dzl3N0YUpWaReoFExt2IIOoSnrwduvNcU=;
	h=To:Subject:From:Message-Id:Date; b=iXVq8/T4p0eyC6/TdtjaICkIPBvQPuv7l+5OTbrynOYahPdc7P/0s8htFah7W6s6cz2EZuN4YXQOQ+Ze7Uff0Q1py/duwTEg3/u/kPi09VDv5xydpatavMQg9qVmkQ3LBQ3cqnLh7DIFY8YMGfsUzJBlTlQ6HJV7S/eTM2BmL5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqcvHgIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqcvHgIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B92C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766646833;
	bh=0Poi7bfsN/Dzl3N0YUpWaReoFExt2IIOoSnrwduvNcU=;
	h=To:Subject:From:Date:From;
	b=tqcvHgIknpbqpDa+hSy8wyXbPWqbKrDKfhImfh7jiLNfXA4xkwVE3M0E596Yqd+6c
	 3RCORSrV68N+CbMVEknJ17RFy/7JpNM5SZj4gAjqvT3g7J+hGDrqtSYGRQe8jdPU6J
	 VretR4ASDC24SeaNVLx2fwkjzLl7zsqlVQzgTyZjozE1AC48bh7w9uDkfFeWz3Amy3
	 SdYCJYTvtInQCn11mu2XckHDvbGZGcEPwtM5D6IjsIXqrOEzixxGtsG82phaFFFU0k
	 8wWFKykbvFoGLV22Bzrq8aKxyONy2rbP5QjzuJcpRC5Ofq2q3NaC5JURdy8UyEYcUC
	 /En9l78yGaqWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A0E784A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664683357.26793.13265717638938850660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a21e964da327097998276e9ec36d455ce5a2ee63d24fcca41be87a2625f5490
Date: Thu, 25 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766646833
