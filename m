Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E5838DE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717646243; cv=none; b=nTB/s/mTJnnt6C/wOxhMtnLpzSGdLmbZXEEmPCWZVD6MEEX/RjCHRuu+4KEZsHfYO+mXcW09BpGysU7nw7hPkHgv70AoK54nvJowI/W1pSvSpjFFoKxLzarF4f/wabIXiuRpNVZ7a0Mh1DvmnamJecD3KnZMAYoB0PRCOMrDh7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717646243; c=relaxed/simple;
	bh=n8qtR4wQ//3eQ8nouEFBvMXQE6wT1tfE5qSQL6dmrE4=;
	h=To:Subject:From:Message-Id:Date; b=Ql7cJbY8iRhLBtWutuHW8JA8SEUXvSPJ3ZwCU2+vtpC4rJfLjUCm1+P5Lg8AaBKkihq0reIOgv+xCD7wJ6lJJK+01eBq6FjdujbmRtHeaxr/TDQG3JXRE75pxcdt27pCOf8b778+mDfyYgiNg20D9E1TdwrOONB0j7+6D7OiJmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrtP1VB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrtP1VB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB0C32781
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717646242;
	bh=n8qtR4wQ//3eQ8nouEFBvMXQE6wT1tfE5qSQL6dmrE4=;
	h=To:Subject:From:Date:From;
	b=QrtP1VB5lukgPnh2AzaB6eRqQn6zqla/KTjbanK4VUlrXxsGM60EX1/fgOEnz75yx
	 LdnE05uduMVDdeoaWZez+6Osh9il9rF4768ggGq/omoey59PIgahWJCZuNc+pExskc
	 jZ1spGcCRV2EG/DAohjml9FfQtffExhkg0WZgtJXocY+U/Jj4xL3HhhRayg0fLfCOz
	 9/aCuvo1agjsJ6PlrnLiAilHhkdLb70L4qiXcXEU9cWFRdeiizIQoLFvBj6eEwp/Dc
	 b9Y8NhamfUVfJhYSIWbojEa5JqA7OSmqeFGRq5XP1FgXvJM1MF9h+Jkl9FIhP/vC4v
	 W+3sSVqL7CS8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE929C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764624277.4981.6341227569300321827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97e34c89f511288ea01bc3513fccc1fbff2d665c0222c10bb75b843cb9808d4
Date: Thu, 06 Jun 2024 03:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717646242
