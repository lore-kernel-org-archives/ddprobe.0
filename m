Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14461AA1F4
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775328334; cv=none; b=ffbbAUJ4pilo3aqcVN+OVDcBFUdpL++lNjmcpDmQA0rzDES8IwFrv2Y5rV9UWdPBUtVNIpuZm4CA0y571lVVvPtiNtnyrz84FdjQm40tAN+kCK4ERWC6Q4HBF9FpPeDcU3RsWzphOCDEGN16hVp/bShP1JvrOAqBuN9Ncya7Tqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775328334; c=relaxed/simple;
	bh=UgFQmxJMXoLusYDS1a8Pe2a+CAsOrD8+oav4dSViRO8=;
	h=To:Subject:From:Message-Id:Date; b=Gxe0K3clHgUryGqMwY2NnuOADvZnDuJdhXx0Gis2B/QahCqwmprWS9wu4DLQYfI5Y29U2lbxxfIc0hG5ZZL5O0MyG3lrFYcUW0atNjD/hbATRrrwazHHzIHqDuE0xB36gU4Kb6MjGxLkr3mUXJbVLf5JtcWgqFAINZpRo2HSTU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rprMv4Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rprMv4Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CE1C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775328333;
	bh=UgFQmxJMXoLusYDS1a8Pe2a+CAsOrD8+oav4dSViRO8=;
	h=To:Subject:From:Date:From;
	b=rprMv4NmSWddgqHCjs32sHT8UKgiii/zwDahyJiKZ5wZEG+5IFngmvtyJ1i6RRCe6
	 eKtx07FmUcVx0tUHbESUZLj7eKMqClba2QtSgCiZQ6IFsmp1ms8Nb/VIJu0y9OVF43
	 pGpgppgkrWJah4gSfJXyBN1CT2RUDcROzlki1T/9KfwEpr90ESJiuM9TcrFr7sNyId
	 AJ+JI9QxJ03hnxmW5RXjdWqGF4e24tFrSxXXDl+W6OgIhEd0UFE2SX2xooFbl8kdBe
	 JuFSoQEiDtGabcftxX9+hlVCx4BKbhYsuEQC11hkVYy7mrwn+zyz3ZTEcDy+t0J1mH
	 FXcxqSHJlsIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0557E63FED
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532833370.14224.8969033123844274265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca3b98553987978cc8fbe3301248cedd051dde7786e6abbfafabcb9e63f4faf
Date: Sat, 04 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775328333
