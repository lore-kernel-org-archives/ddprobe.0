Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2E32E764C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792374; cv=none; b=T2vzPE4Bj9Xajc1D18LnmVP8Rjn6YlZb8o92kImwukpWN6A3ULg5BngTTH34T9yCdLwP0LjvDDfYnShqH5XunvIyD8I1axH0F5fkwUqADo7CPW+x4bgp3BAwRDD5k9Ntjbg9DYaiGdnbOg0a2bhGqeJipx7eY3hVSXc6gffTapA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792374; c=relaxed/simple;
	bh=287oRoJlUvAbwpRktqr8hXrPSbe2mtHghguxdTS9Ss0=;
	h=To:Subject:From:Message-Id:Date; b=MNI2yFDKp3sPBOQ+82P1xxIRS7UYEHyEh1GYT71YPR05xPoWUtE1L6tFWZV8qj+X/5b0H1PJA/aAmycugy9b06Qu5yO+DaEL9vI7nx1OzgGuA33xX/QADe84ofJP0nQaiNIfjOSSyXfqbkofgxulzqaSkh20rtSTiJNgJ1d3sOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt819dFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt819dFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE95C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765792373;
	bh=287oRoJlUvAbwpRktqr8hXrPSbe2mtHghguxdTS9Ss0=;
	h=To:Subject:From:Date:From;
	b=Qt819dFyP1fdMB1ucq6D8GgVMKDGHVou84Sy8C4EN5hQ5zZdYTs8fu48OJX30pHGR
	 4ugP6eRJwGJjFlAl2nuBKYxtA76V9rgrIlI5ar231F9SPgMX6x2gHBRHw11OtfAk+0
	 5dYdeyzjwCWDa9Fb3KdtSAUovf7wLyL3206j7UiupWLwO3SrXVV89fxI/B40mVvvwE
	 W0x9LRm0qrxvycwN7e7/+7E8mas0zFjF3RjmE+mqtT9uEqF7/UWVctLMtjif0kqXV8
	 iwFzLcS0GEWQA07zNtWPirgjhFVRCrjl0FxEKdfCrkrQTrJNGzBTcElnm6jWClZHIW
	 Rvzeyl7amHglQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E85D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579237358.10874.9018239198918357961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a33a53365a8e8086c26ad3483732a85ff6577ab07b8dca82dcabf4c77fcb0f
Date: Mon, 15 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765792373
