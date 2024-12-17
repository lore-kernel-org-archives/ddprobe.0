Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA9B1F76BB
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734456954; cv=none; b=qSKwX4MRmnxGuvWEsMW09pLloNMgSJRGHtzLp17AHt8dRLSsa5o0Rmft8XHbcX37I78mMRzxNUuXdTJ2dBJIQ1IMlVsoUOYeEJQ0nJje3AtHdkNEfUO0zyd7+DmhzhupKvYAWaTV7bxcexjYfIWpbdXQ0xgYm98dDRDcF5ZcY5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734456954; c=relaxed/simple;
	bh=OQOJqOEfuB4oF//tJHenlIcxMqQTtHvusoRj2IawYPw=;
	h=To:Subject:From:Message-Id:Date; b=doyGURKs6j6yZW4naDGFTGtDJ/2dhr+2RLXEXgA2Uvuv+zXq50qw+v8Q2648tmlUerSYiZGRI9rLr2Uqe613jdT3sPrjB3xFkFkMg7FujFXw2mISEmYQlwdsonq2opWj/1iO5fZ+RDNj8IZPAgaGU3EyTW2NZCa9Qzd1RgKRp+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXVCj7Sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXVCj7Sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8861C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734456953;
	bh=OQOJqOEfuB4oF//tJHenlIcxMqQTtHvusoRj2IawYPw=;
	h=To:Subject:From:Date:From;
	b=qXVCj7Svm/IAXAX+IGoL1uV/bJatCNXnbXPOZFm+eaZiWvN+yH6boNB4tww2Bu7Jw
	 EQEU74h/k/dTraIqbxmC9Ch0pQwxcWbwNYfWkjmVu819Sq7ikhdpsVTYcWSx7PPZp1
	 eREp25G7GDydcOsGIv7xgS6OLf1alsUVRBIfhA673WRupq6tPnOlnw8nZp/4oANZcN
	 g3pRyhZNH+QWxG1ugQogdoKfTcm7kY5ynDDVRNtG3x1RmjtJK5UYLsFoisbCLFscCR
	 7UiFx1xe0QYyk8+wfOT3HJ7uvPhEKaXtJj25aiOQGkgVTYqhAeqWwD9F42xSW4PypL
	 3X9Yj8yh/4XOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BA2E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445695362.24984.9083784453717475721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa0ef84c0e68f631d341f4def5d1204be2c122141a0f6d0569a2867f78c8cba
Date: Tue, 17 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734456953
