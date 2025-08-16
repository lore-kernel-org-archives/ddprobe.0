Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9E73176F0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755326994; cv=none; b=BZ+ilvDT5uwy0RyK0MEctzdRbtmGUasVgW+PC7RyYoWkW4zED4lowk0ZU2hq173QEEXwSEmwdXZPzMVf3JGlFraXA+SBZAvQo5w2yewc/z42pIsf/SZD0gs9N8fGeiP8nP5BB/M4+G4WSPuxrdPA8uLT1upiw5z7IatXCRrY4os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755326994; c=relaxed/simple;
	bh=KnLLYOAvvyCnPNfRTIXq6wcIpQwH0bYJVXSGLt5fFuw=;
	h=To:Subject:From:Message-Id:Date; b=s8Bo2T8CSLB+bn+KFlorE4cbR55OWOH6YIAlt8poP4Lp6epm9e/Al+qfQuMN4nk+uOeCtm9NSFLQb1P/vI6+oubE0Q71/K8O7UHwmvERH6DJX1silYD6nJLDvtqgx0iiirQpssySxNNHxoo6yLNBDxWRJLZYDyQSZx+g6Q1RTkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7hPztMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7hPztMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755326993;
	bh=KnLLYOAvvyCnPNfRTIXq6wcIpQwH0bYJVXSGLt5fFuw=;
	h=To:Subject:From:Date:From;
	b=i7hPztMTLMqIJfipc7eRZWak20nsD2B2BsaJDwVC4tmvYVnWJdLYiE/YSdnPMdwW9
	 9DfpAPaAPrYeu+C0RYTYCVKVepruZzwwKAw9ZxeE2gbcTDFOM9nC2o5pqQcvepi8I4
	 x2FT7fwiyeqHpnZWmeFDJnIdCldn4cO+pYi9Di/LsmCNq4Dvui7Gbbi9lLJ9tHWHRP
	 jTyhek10umzGWKwoX1hGMLnGxj0dM7Xxu13B9Bdv22XWkWtK9QYbd05XfiCNskVSrr
	 gbA+I+vMSSxOVn1xK6FirCDoQE4Sgj9ZhFr9+Rupv87dUEKoXpTWwxQVcHi9n/r9/Z
	 Cn2BF8twF4x0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D7CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532699357.29030.9013702074717897852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6b6f832f1fd2e8f7652341eff4c22c5b82712c9f514bcbf1d2dcb5a0cbb4e5
Date: Sat, 16 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755326993
