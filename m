Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FDA39FD9
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759645194; cv=none; b=Pgr+YMab5aGftQuoB4d/rjjBVzsX6tJbc4dZy4h8m2YkruhMDubn+JiT9jpgT8AHIKZ+WTyiFirXVJhMyJjZu2aiE5qSo74V2mip8//eFwkvDDNN3ot1kBDAgcy0WmwTX2qakDgE9XD19k65+aiqeTDmsuxuEjfgTuzu/K/Afu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759645194; c=relaxed/simple;
	bh=RFUFK45cWEmoJJ4xz3Z71QWzp6zOQCA/Z9RFhXlx2CE=;
	h=To:Subject:From:Message-Id:Date; b=FEKZHXbdHPtMvNv3M75QxbHANo6E2c+1wac52skciHtzGGL577FaLc8lHFjdf60ZajNDznZsrQP63qJcxR3KCW0dU//KgGCdPerrdSy3HNqlFtL+eCcwYvPDFvC9xNewk8i1/VPdam95FKZSxD/2Zwp9OfoUfZUb0pokBRt5V5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHc89C9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHc89C9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1403C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759645193;
	bh=RFUFK45cWEmoJJ4xz3Z71QWzp6zOQCA/Z9RFhXlx2CE=;
	h=To:Subject:From:Date:From;
	b=KHc89C9ibVb36WMd2jyX75mGOJJNLPThjO0ydrKknt7uPbn+Nqg/WPXjJYyRTKhLJ
	 /izlHcmkzRomSDQuIcE1RZRQD/PMKyofnnICyGuBEiH1wJpJS1lh+PmquU3ZjZjzsP
	 3mHxy96ShrQPXJqmV1bkKOcjcEg4l6WWXH704aC8lqZRaYlMX9dfjZ31j74+Z365rh
	 kMc8tqdD0b4WDyl0OiRHkdc5lBV+0phwZdPTjobRpPMS+MVOGAnPQGgbKCz69Ck8fZ
	 vsFqJKrkJpI49cNX8UJ7vk1gdNS1YFydy8k9SqOOufE8w3tWAS97+Ihymme3ynsFor
	 81niepmiWawLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6ACCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964519362.17021.14707719864285048348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19b952395908c747466076bd842ca1a327a25bd06cdf38867f3f08419a9fc33
Date: Sun, 05 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759645193
