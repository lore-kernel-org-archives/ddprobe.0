Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C3F1BC27
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708916297; cv=none; b=qUx7IiNVbS8qQstke08IhRjNnDFgkfjGCrnu+SdWY1Q5Uprqf1mxuMcEZbwov/bpfG7X3cLgg09qa2vqTQiME3GbYkmaSVqId3M69yoOQeHAH5j4oPQZq14KywYLCGlnlry8Z2u+QuqivBvfnOvV3tKVhE39MKCRt44cUB2vVcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708916297; c=relaxed/simple;
	bh=WnW7lmeDW6vBUlEQ4WKB+Pr2964YEBbS9KBMBZv+7ck=;
	h=To:Subject:From:Message-Id:Date; b=ECtJth7PnixV9GcD39ci91JvEWKXX9UHUrLEA6d8ZVEaZan+JoI5Ml+HHDWPenaXCIKbR7Uj+ErKRhfXWP9TzbX6QNhoGKK7A8xxFY+QKdmMREwksNERnMerljAzIdP7JK3BuL0QGol/LZmiqyhZbpUSprpXAiXroYwFbuwClj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQo1DppJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQo1DppJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819C7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708916296;
	bh=WnW7lmeDW6vBUlEQ4WKB+Pr2964YEBbS9KBMBZv+7ck=;
	h=To:Subject:From:Date:From;
	b=JQo1DppJZRoXfwr2fb3yVGvZ9Tkv9XOwcWvofwMN4ZcCVxMO++O9RoxP0r9LnC4pT
	 MqvFcx2Se5ifQBV5Rw268Y3o4gmh1/WeU9A+uIhriRJOI2hA1M3rVPyFnCcVyavhF6
	 PHpIAY3gNWDkVnerntxR7njLcnGATHUvxc7IlnBJu/z58ncSc5vg5VjMQHjynDGSOG
	 vp/ZWa+rX+tFuNAxbIZgbyLaImiXXT4U+r5Bp80+HyCpdyUMfRIZW7PY2N39fC7t6q
	 piBJjfdQdChgEtZulNwlDxr5Hpa+y5p6NMGmPBSVEY0lSGphCWsD64pCMlG+CaTTtk
	 ZdStCYUgqYj8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CFAC47DD9
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170891629640.30364.3518869406960502120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b432f5f59f78bb5b38aba626e0a7be063886044e71400624eac1f37fafcaab
Date: Mon, 26 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708916296
