Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC6043E073
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791728434; cv=none; b=WBN4smQDSShuLLymBGTNw9UHHOr5DZu0FI/rBDWYyIZuORI1Zj8OqjIY8F6pogrQN7+QUtlfn4KGucZS6fOvO/s8s2ngYLC55BkGotT84ZP/rpScgB5Nwe+CpmnehEGBUFVvAgI9H4MiIU1tEwoHfG9T3vnxOTCY4yulQVU6msw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791728434; c=relaxed/simple;
	bh=wAMuwH5U1EzRexCZAg1dSuB9Y0Gbj1HAQ3Zq+OIEZnM=;
	h=To:Subject:From:Message-Id:Date; b=e/j2qV0EJ3D1LE3gOLSB1EAXboxWSFx6XHxgMOOAF4Tq8BipaPxuhLY6eQtNPpHjMIeVSjrGiFlhVpRhImOGrRktu7LtP0P1WzgB42s3tUXnkk/Vu1Y2TVQq534cFJCELnw65iIEvnDJd/jF3jemGNNiXADmKW7Vn4hjushTtY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb2xot6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb2xot6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3FEC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791728433;
	bh=wAMuwH5U1EzRexCZAg1dSuB9Y0Gbj1HAQ3Zq+OIEZnM=;
	h=To:Subject:From:Date:From;
	b=lb2xot6BQSjvaQPrNOawCPj0wH++GDs2Hjy0XSXS0rAZG7ZFREVGpsDUUYYcseLW7
	 dZLGkeoxRf7E8c7T+/26Q60nkZmaobwVP6/FgcGTGisB0SypUKfKddpBhvOyyd0uHL
	 mUqS1Ax/Ga5/ioq/VuPrTLEt/sF8k4a+7K7UZZeIYyVTeBt1lDWQ4JYvw+lpwd333v
	 VliFepVbdBOZXcIukdyxr2rT9OFupJEbtwQ/LibAQ1aZwxvO8+5mnFt8ygYEtH4d7v
	 /yQ/FgZDZJmpU+4g+y6U+OTP0gK4c79qorh5Rrln6P/IytKKqeZtIgEXTQbhpk5Ij2
	 Xt88QdK6ZyLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9946CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172843368.21351.14783910638457825931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa2429d2ba3621715561ea2ad250ceb0f4d303e310bab0f8aed15f2414aac07
Date: Sun, 11 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791728433
