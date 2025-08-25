Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9B91E991B
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756165194; cv=none; b=VOUrgZs+kFrFv2kynmfz5mS6FzEnK+V6kiYeOPVpGJQjOPSisZzmzzUbcgA2SL0Fe/8yytnVf5cPRbO16HLib1VdCMGDdJ1eQg9hIvD5m7cq5VTf4shCRL1X8cUD0JvOTo21srrNcHq6QWm23uC3AgPWXmOlkoSCF/6BD6ZXTR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756165194; c=relaxed/simple;
	bh=OxUOpCUc5y6FpR+IuBdor0m0rhFN80mrTYsZFVXt78I=;
	h=To:Subject:From:Message-Id:Date; b=osmZe1hqa8+tNXlkaESQREHXtuj2qIUT5ovONX3h4wKxJ0BpZtRuDolvVMy41tWxsxiI8dO8wPcSZ0VO87Zfq2lbnNxlTKINGAB8xXXgNiuMX2cy6CmJRwqPjKuWYW/NirlobiGPR3dgTV2kF5Y/JHi29UPOXGD1PzB6orC35Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRMi1e3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRMi1e3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756165193;
	bh=OxUOpCUc5y6FpR+IuBdor0m0rhFN80mrTYsZFVXt78I=;
	h=To:Subject:From:Date:From;
	b=fRMi1e3ksgIgMyqIoAGleySoWxXtpbxrAEFnSpDG5YdnirCH3mKuYzKHfpRCJCZks
	 c8w3iuMXa7EeliDuy7+yWoBANfEf9VVrqQslclQNhN1bPwyds+xS9g6wCQQE5SkK9x
	 qMM7to7MJSXDvYC14A5Qm7lQzH7lcZjCxweTJK8yAnBS2ELmw1sBNctOwpEnsGwJXr
	 vpTlyFy/fqAMY6JY/RnIRIuN24HyXWcgnAPVEDNX0nLrTpChdiV2fMYTuvjgMD135Y
	 rqSn8MHXQY4RKnImI2fO91gl3jA3s8B2uP2VFhX8Y3WZwiwsAvse9F9kjvqhg61zqZ
	 SkPnzc4ki9oMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB38C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616519357.3280.1132233583180014880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cddd236434bfef6bbc440cb51eda7eb6bc93ef14f07df4f8213a7daa3fa2f10
Date: Mon, 25 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756165193
