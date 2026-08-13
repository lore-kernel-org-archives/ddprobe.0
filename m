Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6174337BB8
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786630834; cv=none; b=qgotH5mbY7O9gMAUv2iDLbGYH4d6aKsUw/I4GiqTtTHQZ4b0489p5rEa63mEcNaf37r86YpNfdVvOCDky8Q3ZfiAudONDc3wqaNPYxrILdrYxUkJsO9ggGcJzBlYvl8WHAXAlcgMrF+LVkqgrnifGZtJ08C/s+TiJ0okGDSPQU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786630834; c=relaxed/simple;
	bh=xvzAZgvYrmIx482R17Frcp78S35TkhUACfPmBKvfUwY=;
	h=To:Subject:From:Message-Id:Date; b=jxWp+w6TdzR5BBqUBmYZqq41mWFl7Y8p6TYO8EX4HbBBSOVRGYDqCjNjQV7bN6zvkxXCd3a/i6Dvm7K7fXQ1vJEnK0+Lg43j8nL/4/hLI6HQP6zf65RmklviNG5ZKbSTnc2xYbSF+I8sll2mqCGewa9yr0xg6jU4SrulRaP2f+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPA2dWBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPA2dWBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8F2C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786630833;
	bh=xvzAZgvYrmIx482R17Frcp78S35TkhUACfPmBKvfUwY=;
	h=To:Subject:From:Date:From;
	b=jPA2dWBau2j1F4mowF2l+vqOMpVxeEjYN9qa4xLB6J+4B7nEUXYT7NaF8mgonU6WU
	 tCrKI47sNnSWOPp4F/AppOzXZbZ4xxDGLxw3TgQ47UAi6IA4hft0qiuJuvv/Iu48Kp
	 RsFq7j7JG2Tx08rbbsw2MiOerifZWhePtc25nveQsieecOH9BLj2fn2zMXPSk6l00C
	 StuQ5uxAUp1BzGXB9z3XMGinOIHcVN2fN3iy77UW8Im/Xy2h2FjbCO1KQ2rDuSNW1x
	 8FCctl7mlWJXpIvtR6P6SP0Xn3guMzJsO8nTjfis0JY1AHg4jcf9alKjXUBjBGDkje
	 G+BKEdyAESV/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EC4C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663083367.24153.5599594267765585152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46c10317fad9ed63c20a4431cd04d7dc0095fc28514ab4bbe35a65ddec4ba33
Date: Thu, 13 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786630833
