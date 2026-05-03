Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202CB3043CF
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777835254; cv=none; b=kWT9Y9ZS0r8i41caW/y0taoFSoUFEJ8bFYBb7HSJkUb2ZgP9iJ/7MqCvC3E7BpjeUptrMSx9v5vH2VWwpQg+n/ySl1RM1cxaWEAaOxYbnLUdnwEaDhFgsGSXQjxXiPz63ISWayZi4n8684QSYunSdCMpwfkHxOvIYWYGijEydvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777835254; c=relaxed/simple;
	bh=UHU1dEOn1hV6jL3k+gSYJ/yGV0hExEhMIiEmST1ZDOg=;
	h=To:Subject:From:Message-Id:Date; b=typG81fIDFtEDT7Tv1Xk7RPJGRETnEWoGLFK6+akbAQVIoJ+QKdKuYf9ffrcn+F/+Kaz0tK/HOJ2IFwdEFhZ/BBqYOFVQ9/feAQ3lwFnUUzOclh8h0RuUsTWMZhFb/tV8wfYb7Jruvzfzx1KycGKsrUzh8pA0YPlEy5yEPlak/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTTkS5fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTTkS5fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC7FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777835253;
	bh=UHU1dEOn1hV6jL3k+gSYJ/yGV0hExEhMIiEmST1ZDOg=;
	h=To:Subject:From:Date:From;
	b=tTTkS5fCQwm5Yh/IyvaOC9trNBk9pK+5rddkWu1X4QBlIkcf8Dkpy+mnABhwLbDbJ
	 9Hi3uWmAxqTlYcOwVpFiYnlcJ2YmDYdd+wtzRlhtc4vL1ZFFi4Wfl4OAvdPxluf1Kc
	 T1k8Agc4IBOwh3tfRy2KEO6GucxWkG+v2pgLQDtKRevHwdXl4h6kUW4u0QeKuBjbYH
	 HqUgUv76m2niqJYQVF5yR9WdZrUNCt9xH0OaHIVeUYIXczTeCzoO/F6AufSz21+sQA
	 LHIWt5nYk2UKuo6cAlSjGIy/Kd7TR5xrUAHpb8UPzRy6CaZxwKqu20ZH+7Jej2OdOr
	 FH3xir4uQ46gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC5CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783525368.29137.7517205950716352296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e12ab4619f4d27dc75e18f3815d1421802ec6d713069431daf3324caf5afc06
Date: Sun, 03 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777835253
