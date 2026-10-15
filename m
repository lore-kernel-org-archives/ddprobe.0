Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8662C08BB
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792047034; cv=none; b=gz0FeKrUwBbW2ejX0+0kG61z5jaRl+BCkt1ppZlB6lX1POn/4XploQyPVI2IIbKF2q4pDizXZp00oM+iI2QM7T9f6HI7liEh3Bnh+KosAhOLDct0ewKoI+HmNa0n5s5zF4rER4wUDMAAtix1RZOErnweXYueZl/a11oflBUWJIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792047034; c=relaxed/simple;
	bh=+aWavftwU05qLNND9QyCGU1vSKxMK4k8DcUnhlsxZUI=;
	h=To:Subject:From:Message-Id:Date; b=epoao47JLM1HcadkvJ7s3rBm+Yw/yhbZsZyw+YOx/VNewRo821U6xGbc78YNWZZS6G0V8JKA+tFdrlbeM+Ct7QVZbVNvoQ2eGPBKAhdm7s/iBRJQqGoE992jSoLr8s3tXR53pAS9iovXQDJZihrn+oOznXSBQdOk72vkUCso9Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE5xcNKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE5xcNKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF362C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792047033;
	bh=+aWavftwU05qLNND9QyCGU1vSKxMK4k8DcUnhlsxZUI=;
	h=To:Subject:From:Date:From;
	b=DE5xcNKUeQh7Pm18UjWuxgf+njvl2GsouDRqZcjReo/AIcTCphOSxzyEaDrbgpnrU
	 FR7L8StBOOXk6+cwfeCqqgRx5YZBISjY6cmdExM/3b8LPyONg8YI6tG71Y5QuSstVu
	 kHOFyTeIPSKkALNDQb5FfEZw49m41/9Y6iCtH56Y8SRouae1+3sqa4NAbgrL3OsoKV
	 X1lnlW7UT0Hbqq5KJGii6WCmoI6VIl2gTIdFSXmmwdmJ4HpyqxAD5PNbCeTNETebLc
	 dberokC6ry0/TlGbOtyVPIthiBYmuIUgzC656nI87zZhaD9o7G/ANpiKGFbK+darBm
	 ooIwu+jVbIorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB318CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204703369.8663.10004134226879708244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6dd9b46e46813920605bcf27ecf33fae5eea35eaeae0a1980359025c868bc9
Date: Thu, 15 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792047033
