Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16369200BAE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760571594; cv=none; b=WhPfDvTFf81HWHENgqdXdpT2VBKKDNSaXDfcYcEuc/KayC/Mouem3NaVTfvzb5Iwf1O4ZDEPlJodCamPZnUNBJB24IfdU/4LoyxNBDYfDWfxxGPcGWvumXozRAo4sfLLak7VkEneHD1eVQXRoqz2fWXoLNHwEUasApAHO5FG3y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760571594; c=relaxed/simple;
	bh=RDMM4VnU1GTYVKCRON/CTSYnMTMtEpN5IK1Y0ogcy6o=;
	h=To:Subject:From:Message-Id:Date; b=WS20SdW7ro5FTccmBX88jsj3m4XIAboh9PC0Eo23iMbkTc7gpbPgjomEqQu0WsU5GtbckLIgZhGv8IIJfUkaEtjCX1sCEfOScxjc5X9shEs+1IudLXZ4KVAq+h1p5/+5Cqc0L5llC8+fuHAHWxFW274qXCtbLkfhy4GBcmwVvHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOhHpYHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOhHpYHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F3C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760571593;
	bh=RDMM4VnU1GTYVKCRON/CTSYnMTMtEpN5IK1Y0ogcy6o=;
	h=To:Subject:From:Date:From;
	b=QOhHpYHSEGgKdoe60iK/eh5IIFFuD2hGHmMQ4Mr1T0H4s1OE53U7gL91bb4OTJH8B
	 IGsidFmfVLufitTjxegG+F/qM7SWjowR6SOiYL3E3w1RJJGgz7phO+KATpORozYc0E
	 rU2K0g46yo6IFO3nNIeHfGijFakDdks0dZ+2KoTKq+3pyqDvr9ZCrRxYG8txh/Nm1n
	 l4jn3fh4ycEPEnHUK5m1yUtJqdbtqhE8AKrLUPKZkfON+/NsrOy3kQePJOBHc/F4aT
	 1QieKHjSQF0yOlXmsQGGp2agAMssGF71VtNtn9CwVOh4OHy/IybOfUulFyREKLJay/
	 IeHSkVuykRbjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F2CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057159358.25624.5386028018169159803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f616b30a508ecf9150eb96fa8eb815712d929e6c9c71c6cdfe4550209981b4f
Date: Wed, 15 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760571593
