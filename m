Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098AC34545
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724523354; cv=none; b=gb/paTqAL2EIBS+8FBYiAnI5+AqepM7YYfwzCpf1xJLoUtE/hrmfFVEkt3lRVv1+tWiYDiB0ZxzfNRNz4X6pgH+yacYdpPpov3UxEOl6PQiSbf4gpDA2SjXnwd4D+cx8h388qManFQyE90V9pxwa2Xl81y0I2o/V5dQygktESLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724523354; c=relaxed/simple;
	bh=tr4ms4HjeGV9fBkJUCoOkyiX2acrSDQicb3dMg+iwqo=;
	h=To:Subject:From:Message-Id:Date; b=sNtPwUXcp2H4tjXj5cOwvtsh1T2WEOW8YDfEgATPHbhQZeIqyjYhUmqcSumff3d1iV5J7oebO1QAQGOdOKoUIIN26EBmwv7N5Buk7v7oyfAdUTKFU5PNL6Vlii9gKtNtWDH7htbD6kvVuYJ/8ezj+NxJIom7nv5nW6B+CYrGNf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsD/tV0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsD/tV0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07B1C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724523353;
	bh=tr4ms4HjeGV9fBkJUCoOkyiX2acrSDQicb3dMg+iwqo=;
	h=To:Subject:From:Date:From;
	b=nsD/tV0NWd6hZ1YCp6Tz7hfFTi7QDhzjN+EDtqXNYpAUK5l49hETeh2QQpmJoN2Yh
	 RcVah/5ld2dQ6BAEeemH1jXc36i2FJCrjV+y50fXxAJLHU923Blap02Tj+09fYwYB8
	 9hUpfvECh5aNkB7APx+/FbucNeXTcKjHBEAcFyp+FMGeCUTVUuQJqOVAQAPSQFm3Yt
	 YZWuqG6kdx1ZLS+a6L1aj0gYQBffdR2alGWJN36wOoTeejzH0CfGljvmUiNLsOp7xc
	 hj43gcWq/2z/rvovthDq9Nu5VrCkVj1nE0/+LeNmRbVxEysonMrqz0RSmPRWRNYKLF
	 Q/7jlss4tj0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A8C5472D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452335358.14364.15712782238895954663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105b335d1ee18049c52720d7d56f08715e1de013a8fe70469148325b505fdc7e
Date: Sat, 24 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724523353
