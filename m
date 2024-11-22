Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000F13632B
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732286155; cv=none; b=LwB5LVeYxKULk+0RtHVDf7zyrgKofn3+vuqcqC2tXNcinrVLgnHMP4oWFmOyWafxfpltT8rcSwHxXm9x1lpm4UbKFgAreAYHYqaUKOPaqY/oyJ49/gKOhiDF+hFO6cPF6GCncs5qtEZr0P6ZaT0qFNeJuo+/INWzuiwg/dsLEHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732286155; c=relaxed/simple;
	bh=a9NwbFr97iAd7b/ANkQ0WqhMBYefmkJ9Idm7GRKKfPY=;
	h=To:Subject:From:Message-Id:Date; b=VenWBmG5ssjl6YeZiBHiY9wGZLS5vx+JAAbs17Z/EU+D292yOzifn+sY7eKNg/tt0ffWIKG8/0GOSXoBBPdSPQzXt37QVMLbixPOJ740+Xp4Bz84gOqAW86a3ceZPSLIyuMXmCp7VN3xCBb+k2xPEET9vLjVAs9SzMpBtgcVxHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5gagfab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5gagfab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF71C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732286154;
	bh=a9NwbFr97iAd7b/ANkQ0WqhMBYefmkJ9Idm7GRKKfPY=;
	h=To:Subject:From:Date:From;
	b=a5gagfabdtVb/V3HpfxLkMFV4niKxq7jag+sZrvC1cIEkVAmjg54ayFWSn9rzS1iF
	 WFzcZvbIQ5zioKnhgHFeCG5G4zKmuL+2k51u9f8FSN5XTgE7hzY/T2f1YTk4Nl229K
	 uYWZT2QTl9zx2ZyNBFx1UhDOO/mTzuvShVrwATJgYKXJttjIofhNCT3iYgJXHGthQ2
	 zEQSvq4wS6GEzkaugKNRNUzfnq7cA/5zY5wvgDEohPTJ7q5bE6danGZfJZPW3KQe+q
	 /jPGxpsIyIeLS52jmGifvrGfGgkggk2EgeBqqpmXJkhmKabuU2kUmulHkWzHcVcwgH
	 vCduiVd1l1GQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FA8D75E58
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173228615366.32347.13846570144238802947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce37e1823b1f88e4da3532777efcffb3f0547c22e590ccf7e396f1dbf458262
Date: Fri, 22 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732286153
