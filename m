Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDBE13C3D3
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715225543; cv=none; b=SFuXticBrDqnAjR0yXqcPE1x6jAGqK2fAqCTKeRfjxhBNCeRbwGQEC1QM0q65esC2Qo5gjftWAMB8sxgUUgZIeXuw6DYyDI00xt3RBS6cB8Frlt8lNjeIRpQTUisJWRqg/h3voLuu5kGfIF9s5GYnNupEfuQZ4xciw2XKFk/jmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715225543; c=relaxed/simple;
	bh=BxZHxMhTbGpr6TpZEepPenjlHptYDusgvZaIWLSrCF4=;
	h=To:Subject:From:Message-Id:Date; b=TN5nVK8tQg/Ufo+houOzqCyMKfV0PE7XXQGJJ8uZcosIXCtEBoYfWQBbVYl0yl9YCx0f6dZEM6IchnVPi9AMkVYd5jM41HFbekbOCcesx5t5qQdK1Aq0Ir4lYgBz/rDDgibtCCJ+8IyJ0pt6V39WG1pb5jS6hvYPVkNA5qDv71s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEYeUPCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEYeUPCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA76EC2BBFC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715225542;
	bh=BxZHxMhTbGpr6TpZEepPenjlHptYDusgvZaIWLSrCF4=;
	h=To:Subject:From:Date:From;
	b=ZEYeUPCzDqNODlXnokuNhOXRpYBaYTYfiru7r5DxZTTjl/DlhCf4QPwmBaNsLztzG
	 UY6CuuQr28DV6eBOrvtp4jFKFrI1IpZcU26PhPTMIJAXGf5uHVMS3AviFISOC+MlAw
	 tCmp8Ij8Pqud+JRFvdVJOPPmDvmpfmOtjlr0tOHvC6kP9GscEZDwxUPnbHgq6bbs3G
	 TR9p3CoIRaT2eGq9PeFnb9tyn3FFoIcSnc0TTMSYwDFc3XHeY6qlKNGWZhtaerqe/A
	 7OHtes/Z009nj1ta14BJs6f9iItWdP1Im/hiT1m+Of2tReiFl4mEB4IOIwO4L7ynWi
	 I0WxPJJKMFAew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC141C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171522554276.6289.13163182043220677555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4156b6e2d368a47dac4463fa4b861a3a7eac3280660fe22554e40d705e66e401
Date: Thu, 09 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715225542
