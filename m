Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A6F166F1A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738138554; cv=none; b=P0woEvhWA6OVBPdkfW2olHaZ71DuZ1SqGgMta4h3JsMLlzh7JBgeksUTrLNrI5so0e8+NpBcyJfGyCIKsA6+2iTflBg2XFkgpZ6tWts/BhjmBKuwxfe2zNhmJvCn2lCGH2GjNqJAlawZ9lBMrxeKZLr4vKitJhuYC4oK4uQTP8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738138554; c=relaxed/simple;
	bh=XldwOauBhwmYW/v49D9b1c4UrgldfqQthrdfw+SZ/bk=;
	h=To:Subject:From:Message-Id:Date; b=ouS3C5F29d4saNsOw2EoDHzEBTnIlLF3pIy6imnZPeDr0L6Iol3RvewtcWfqcrvj3l8zzonKeUAiLffYnY0m2vNel5nQzqLtpyFGWZ+lmMiU9zp3ZFnZFMt+uxY7dBsDAgy36JUtFk9CeUrJEBzWfsKWuO32SHTa4p1JOJVE17k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfZtjNbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfZtjNbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D4C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738138553;
	bh=XldwOauBhwmYW/v49D9b1c4UrgldfqQthrdfw+SZ/bk=;
	h=To:Subject:From:Date:From;
	b=AfZtjNbOLRKQUFPH1Ku7/5coWJ3qYvtNPfPUnI+SnkpHVDzALwac97ceocJqF4a+W
	 w1uJAa3y3VJLOCC9mmZTn6holdMCJyGLRIk76FCRtH0WJBjua4/n/FJD2jTn1sVaBC
	 mW3oN6d6Agh4rG0P6V8AR5iOwAeDMyWF0OOJ5ZvYb2nlAQgjGoDozGWbCKUhPyBoxa
	 p5/TczMFT/ciGjZyELnHFLBNh360Y28orq+gpgak+//nx/maJYarUM77Ctc770E/sP
	 GhJY8RDLJudkU9PK5szaLS9E6SmF33vqSZLmYu0Mxti5IO5F1prV1IqGXE+7tiP5Kp
	 FmToFg2ppZttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ED9C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813855361.24215.16798573982714400554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41a5c47a1eaada44f6cda64d6587334f6435c0323335932c58c5611453f9327
Date: Wed, 29 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738138553
