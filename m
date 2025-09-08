Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3561A9F93
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757295594; cv=none; b=QGk7GwigJ9N+OavfwDOy2qR8LwoRFnKQKYyf+Y1yPxTgyyKzcHVikKTVK2Xnh0CDVqBPVHaUyHb0IEuYsHuiTHNsbbUxAdD+pioq1yF5JzPPQO+qqpwjPjHE37XZri+rrHl4Ai+qddVWmLhBXtTaHFkWuz5rTpRS3FFswOOjadI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757295594; c=relaxed/simple;
	bh=VjPpnsFApWJCccGg+c/TgBxYdQl4lgohbBXMmzhDULw=;
	h=To:Subject:From:Message-Id:Date; b=NlSj+W/rjhsJ8utZRBaQG6bojSmPOdmwE2Dt9x6cGT14EWDZoajMlsm2yr09lIIvAxybE/NK6VgfMpThGQzNnBtFJCh1dLtAC9oQI0n5WUVCKesg6nyG8wruZ86tQwcP77MrPoDMue1HMpoIS40+JtzRNozf/ZfEcqyRNCrbRGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoxhmKBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoxhmKBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A486CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757295593;
	bh=VjPpnsFApWJCccGg+c/TgBxYdQl4lgohbBXMmzhDULw=;
	h=To:Subject:From:Date:From;
	b=qoxhmKBbCYiyz3/iLhTG9VpL9GlRItqGo2KTGriHa0M8B8cDT7WAddl91cXKEn1xY
	 equCSvXRHwugMyuVn0/a+y1+zKb+sJQ4XvZWwDlXeuWfcyVr8Jhw26Pawhm4+kLXI7
	 EbvQdfXbZLBphAqMIS0IxJsrxfE1TxdUPSu1R/k0WiMcYKEzSvo/eEZmeo17iPKrgG
	 nBHfHaWmo7NjhsxAyAATKGRBmUHQHO0Hg6sDalFX5tORAZVGyRfOQgTmL7OEHrS3E3
	 MpCZeQTymIkTz+r0QsGeHDR5y5kGbMITSMnexaagTft9KjwEdxyAVcWDjSJpxsKcva
	 D/zIPp/KIxzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9508BCA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729559357.16338.10419501490669917298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6bac2e5adef9c89383bd4f53358f67236f06175bf1f7902607fb8b6a74e18b
Date: Mon, 08 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757295593
