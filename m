Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C3E1DF75D
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769110435; cv=none; b=N5M7paC+IS71Al9LkUHsO/S6AYs6v5/1kwyh4cdMo5PBgUMADbnXay0ry3ns1e35RS5Q8tEHI8FKHJJG3Aa0gpk3CHrVYkKcS7K1tBVK8rBvyJ8GZA+X+vOMSBs+GxYj/867pWkiPUhI6+5n4F/dkSxQC5kTpBRjWYllqaZopVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769110435; c=relaxed/simple;
	bh=ycmLsf27JosPyYbhsBU4zp+5l8tg6KPUb8Lg2HKd6WA=;
	h=To:Subject:From:Message-Id:Date; b=pgZA6+4CvrnLZRH1wL91u71qa9rs7Lwj1Vx4ctU3qVizTEz0dBjbkEOd7XiBxo93yc3LGdo+yc08q4Toyj9vkYVXn6lNkjK/240eQnLHmqHq4qYAeAsqLEOgpL+9olPsIoNGyogVEv+CnoWBUKawaIZRJwG507CmXLUjAN6mxfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC55y4vP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC55y4vP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2047C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769110433;
	bh=ycmLsf27JosPyYbhsBU4zp+5l8tg6KPUb8Lg2HKd6WA=;
	h=To:Subject:From:Date:From;
	b=dC55y4vPyM7h5fu7vjHnZMVpayiQg3xH1QtaPKUfxVhIw258z7Rr3RFir8DmhVXwU
	 xzxGgkjfuuOuRJ+CRh8ieKt08RhyQf69ckEUgQqQiDmdPZPTqVAyvmFCI5RJDj3Jwc
	 ZjDni8ZFApDNlbS7a36epDZuoX5cPxjan8BDym94r5N75N7G62xdujDfb/Vyrljawm
	 Jd3Yz7UjoN3x6sYQ2yDD9LVyROiJPOM5mPdQnHeE9HwLcGyhQ2mhKg4Qcmjc5D9RMX
	 lFLhSuGbnu3GYspdD51kpcSoZ+k/uUrr1GEcMXwQoGq15+DNBcO3SwMSF9pOtufT5E
	 XSokxeeTA3C9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B56D6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911043358.7908.15359948097803298684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c2d91c3b3332d9fabd88c1e9acb417de227c0e4a26d737828d9b0d26098955
Date: Thu, 22 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769110433
