Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBF130BB87
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761776394; cv=none; b=VmPFeyBMstJfhuBT5jp+c0oXcD0ms1CIL7F4kXMs/ggHJPQduPJQ7TU+wIzBpd/x83JG7q6gpuGowyU3wMheU/6VHdTEw+h9DwvnINqYUPV7qNkIaTjSFwVbWgMp7BPRybjyxusBe1WY561wCn9Y4FRH0HoCI5r4fU6HzwNxSEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761776394; c=relaxed/simple;
	bh=suWsXhLEsl0t5rfTaYS9cydc9GAH5UgNYkaPoct7eqY=;
	h=To:Subject:From:Message-Id:Date; b=eULFugsm8GtIIkleJKMILE8reqQc46Yo6v9NjSK+MY3JKtPv9sdnX2WdAsGgpVVkmXtV/VtGkJlpt6S00t2efqkZwXUlrZ6awtQb3YF6SK8Y2n4FV78aK6Jh06lBKfljFhq9JTqtCZ8o8ntVbb3R7pOOWpvEGSMJv1AW0v8kUXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wm/a0JC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wm/a0JC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761776393;
	bh=suWsXhLEsl0t5rfTaYS9cydc9GAH5UgNYkaPoct7eqY=;
	h=To:Subject:From:Date:From;
	b=Wm/a0JC3JvaKDDQQK25T+FdPqPOikrX2VSRDR9qQ+mH908gDrBQaf49SpBirqdF5+
	 0T724t8qTl2i2YflHTUF6Vtrsz7d8QGXWjWLQHW+65buZImtNbaCxGYaX4hH8IOHXO
	 hPQoCvxPYCHFjRiXmFWHTAfyhcBOYlVsRtrc/BV09J+kp57g7FrS/a44A+2Mzk148J
	 JoDB4C5mXQLsN2N/+sQGqPon516Scif3y3G4paVS6aQ07NiXp5r6gmj24eTzEtiIGl
	 y2dFVR6643Y5WnixRdfTt1Y/mfvIE7K4pl4h4dwK0xObXMQUkBdqK00J9ygl3T+d/n
	 IRGe0EGdrnK0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90302CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177639358.14713.3158848131082435227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9eadae2039208aa688ed9294bbd90d808de0e531bad416db44511c2b010661
Date: Wed, 29 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761776393
