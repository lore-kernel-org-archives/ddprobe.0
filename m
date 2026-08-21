Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0273CC9EA
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787300434; cv=none; b=tmXs5G8qiCr2/lAdQx1j+x4W/+v2cJdAc679CcpRO2ldHCPDaT2E9ZXhUvJqCL55q1UiC4YKf9kSM+dThiz7wRGes6G1vgd/ttDY0V4UGIeuhHff8Btupj4A6Y2c4s3lgs+wSkt28E8+7uKJ7hlxopT5IMKg3caUYrd4F1Srbw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787300434; c=relaxed/simple;
	bh=apr7+zwxPM24uQVHQWKHAOU3Wse0CGRZrKmX82NAowY=;
	h=To:Subject:From:Message-Id:Date; b=XPBTQPl9vSfaoau7MKPQ1lZ4QmT9OZlk6CalE+sx/1d+Gfvh0ITJIo+2oeobUKLtwCyLudsoBRVobEvcAV3hADnFzRGQuxqKpb3EWP7Ni0DA7xbElKBiOsAs5Q5Dh3HJGXU70Azcif1u34jNCjMHccms0mN+l4UoQ2teqIeuVy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e10RnSqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e10RnSqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7004C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787300433;
	bh=apr7+zwxPM24uQVHQWKHAOU3Wse0CGRZrKmX82NAowY=;
	h=To:Subject:From:Date:From;
	b=e10RnSqEh1qTXieuyh+mH8GkkRsD92uXd3LBjB2Bf8iD6AU1/Gr2N75LkfZpRnIBH
	 aauXufc0ik5smyz2VYk9fmx/gu18wYU9f7caf/EwO5PuQRNxXc3osOjVxAhS+KHqpt
	 c7WLOQ0cVIEcYOfZe4l4juIQClO7OCzFSBaK41rSEEs5/rzwtfGlB7HGRowq9zNuXN
	 hm7i8cJtUw07sSMiC+v0/voGHnAOEdchru4m1YbHny1uFn4SDIsbBt31XUO/Mf+1w1
	 XJ75MPayasMmcb8JfFhD1hvMSbgzZJiKelbUVWnIT0/DZIo5KuWgOjdBETgCyIQsv4
	 uyTjQicYbVf1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F31C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730043374.26770.4849212725429657742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4216c7ee8493e11dc7ca59edddd2cd64d34d15792e3fe7e849d3f74b4cd520
Date: Fri, 21 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787300433
