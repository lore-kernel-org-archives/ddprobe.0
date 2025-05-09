Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A7828FFC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796194; cv=none; b=TJzDy9VPFcQYqlN4UspW9fQT0BkARzlJRT2ssmEdvNztfAdCRihpSSVgn7Jwvr2d5Lc1buwvaA5e9PB8QSr5+ugetkSenXasqKfx+cTTB9tPd08Un6tFj8ZsmK/btVsi2dkNhFXsrDv0O1aQpPPE5gPWu8TN2745XN257tDYFoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796194; c=relaxed/simple;
	bh=6/jbLC6LIPZFoYekMbKnt9L86uLiH+SeAtEQVenCVjw=;
	h=To:Subject:From:Message-Id:Date; b=BejqonFQyQ5d8GtZSTAa6acU37fkCNEmqsFiT3RgM9mX417rNhGOotK6Ucl4708vtMvGSV3OHMAk1BK/Meg5Lb8YCpkxhUX6eUyBFErM1SUp3Rg1/InMn5eMDrx6RGxb8/2et1YcIVsDy/JlABqa8Cw6330JmEZqHTlNJlo3SfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW2mPE4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW2mPE4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F73C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746796193;
	bh=6/jbLC6LIPZFoYekMbKnt9L86uLiH+SeAtEQVenCVjw=;
	h=To:Subject:From:Date:From;
	b=LW2mPE4PmoRH/F5dHzqpv1RF4INYSa5L730XgvA6BVlsJroWnfzgoQo1dlNba40Lr
	 VIvCfnZtKUZEg7wQrlNTSzjKflVIwrqRZnmYeDPFW0ZtFkoQ6fs3uvvGavrSP8jPaH
	 Q431rEnHBcKT0uqnClIFHvxbjxA7rFVNwUHZVO/yvlriN/AEyyCvdeGY9UMzqyPT/h
	 Y3fvxJTmLV0d3Kp9ZsY8Iu3AMav4dUTwgi7oT3RHwaw0aOBIla54J96oVVcZHT8i7n
	 WEOekIbKBy3yiyD+E1X5v97jlMlzAkDsFsQNLgJFMmxuQn3VIGks0rS4VkpTogLdd/
	 vIS7wL6My+yBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4FC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679619358.22043.7817324551233328389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a504e1828a34621fcfc777639614e0c7c13f67e1f6f883e5caa8032e6765916
Date: Fri, 09 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746796193
