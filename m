Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270A51D9A54
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750327195; cv=none; b=odElCByf9dIHdznz2ZhFVg2cPDgJJLVsDJ+vH/ecR0atXI5MF+gPKmG8YxH1PfP3MxdXrLNUQ30MXCvOEvTjEKc6UF8IBdWFkgco1myUFZUV8yFSm04UoN6GTqHqFQgQ9upUADZ68oop8ePF7/m4yy6t0MfT4RiBVBEGVEn+gKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750327195; c=relaxed/simple;
	bh=fUZacf+4veIpRjen/Q4pXY48sUrEboSlORhqVaTfhJI=;
	h=To:Subject:From:Message-Id:Date; b=pjFgAHI+5R+act6WMOkkcYPmoIKr8VeYESQz312HPzVchLvy/pS3e8KRQUYH6Sri9dWk24cyBaZedcHIlamiJcMl6UFowX8c6Wjvayb7w7RdjbfxBSNWLyCZH+j3r2uOpATZTgylpaX6PIx/7ZFAaBQLq42KknYb6/HG7RPJxo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8LperJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8LperJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E69FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750327193;
	bh=fUZacf+4veIpRjen/Q4pXY48sUrEboSlORhqVaTfhJI=;
	h=To:Subject:From:Date:From;
	b=W8LperJwglm7I2u7OgvjWbFeFXXfpnLmUxHAP8r59Z0rJ5TKxExSdt3ttIgmEdYN7
	 8HQIpJ/piCZb1TnatM8mwtnMbkGJglpW90s3o/FDSynWL0PkaOnLTyT65WfkbMUAWk
	 rGJmM0S71gNSOjXA2GWkn1l2+8U+f01C/21X9lWMMLuXuZoR9QmBoXktSYo+OeyFuT
	 AOD5wLQIXSxieGfHxdcPhu96xrnjFni1OvLYIVo8Sx9Q2mwLDFExzBFGbf9Q4JNNVw
	 eYM0tRL7jqft5ih9lP+rCwdiPgZEUkinZVX3QjxKa5pm80zzTMkqejLSY0y2OURr8F
	 MwnlTE4X8qzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BCC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032719357.4800.932372717880857786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482634385004ec74b9f15feb826d5f5e2140a4183eec478a330a9efbac2d66de
Date: Thu, 19 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750327193
