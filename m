Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BCA38D
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712711897; cv=none; b=YPSmll/0PxIIi/3OBPzm+rMe5erHaUibpOcsl819FfejhmvbH7hXWr9mGk4XLDY4/IAR14M+iCWWrlR/OaWomju5pVPeq73ewEf6m5iME/909pYTylHhAc4zKO76sAV2U8tRXIdEstAHXFkMjV6et4EWmXfetWgo3aAp2z5+Umg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712711897; c=relaxed/simple;
	bh=VLDr3E7eRAR9HJA0ZebaNavSjtFJwcxrxG3Tc1hKI4I=;
	h=To:Subject:From:Message-Id:Date; b=WukMdCVeTFupuVrVr0Qm/pX0XAu8gHMJrY9Bzn6dpehreipQrtGDnVFkbQSrkKvZoU1mBzx4tQkuDL5r0KfVdoB36wRdzR65/UVn2hls/d37q6EvH76BRgz7rL52XXnSxOy5m4xPf9BjcZNNMP1oonJDgIA4IlrXO0UfoqID+EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=az6JPVcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="az6JPVcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866CBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712711896;
	bh=VLDr3E7eRAR9HJA0ZebaNavSjtFJwcxrxG3Tc1hKI4I=;
	h=To:Subject:From:Date:From;
	b=az6JPVcdffFpwdYAoo/KltJdCKNQRRCXxptSTfIkfNsFgeGfIAeu0zLjGNajscqPR
	 J6dwGVsLA+qnyDcmj5uxiv62Cm9IiyPlcCL/NGjMAJDphaP2qxOFCjZzhiO2scXrph
	 2egEeogXG5fcVXWjGMgyu5QWqYtMnN5IE6DMhIxpxR+SWzezn1cW1aWlqorjPhwCAd
	 KVlpFTzp4bVMtIWixJrQXk4XHzZ9jiQ/d5ryIGkrsZfJwlKEf3JHfQnW7PkmZ4voAu
	 PEyc+XorFFclysy+N6tNHLMDVZbZFBZmIFaZCqwths6GKzaE7ewSyscJPju/ucKWQa
	 XdkD0I2IoegQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B56C67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271189643.7649.1011806961484120951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd1f5b0e6dda53f332d994f9e106d7c6d0969c209ff61e0d262fc7d3a17f57b
Date: Wed, 10 Apr 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712711896
