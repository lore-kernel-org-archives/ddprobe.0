Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262923C4B92
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780486474; cv=none; b=eilExdskGBbGAZqGoSwWuAIasDg2l1LKpH36IriIiDJXcDVpgyQopsZkqurLdhoi2q4wbOoVt1elJBLNIkEqycWiOjwD4zk8CpUZI2+t9FeVZ/8h1bGTGcir2HsnnQVkdA4bzvSHIiLkMiLdRuMnaFIfMtAvVESv+E2Pl62kyxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780486474; c=relaxed/simple;
	bh=Qsf8ZHlLGNHBtuyHgpPK13aJi5nOV4tDNhg1zmhwn3A=;
	h=To:Subject:From:Message-Id:Date; b=HeQ5Rf/UowZVJZVqelfegMNRimWFIJysbHqH5kIVGn/Zzt70C3y1cOii1yrTHWz0eXQ20cnfwtSR1ewKizbaaJuGC/28KZ1UIIwuRjTrehisGD8PlXDX58KaZG/XgVd24tjy/J9Bx5oaCVozZ6f8GQ2QzM8RPkLFJfRSQGBcF0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHnYsSWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHnYsSWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CC1C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780486473;
	bh=Qsf8ZHlLGNHBtuyHgpPK13aJi5nOV4tDNhg1zmhwn3A=;
	h=To:Subject:From:Date:From;
	b=rHnYsSWlrHXGT6bHDQE9f0AlfT8V1Bujyml0ZhjrZFes6sg5DDJ3mLy7qgYDQJMxc
	 +28S/z6UBXhbtDq/OrSVjLMwrjdoWkRtLLb/kWAmrI1AIiRA+4xeisaIPi3BO5YNSd
	 vtreEFnzkesPOpg5g48VXYxpXpMQSks4OwJnKC3vMVV2zi2uttGu7te7FbzXSGaBHQ
	 o6sdGbCqwQ/kWJxs7csS++cHi3EUzsBsIRjvNed5E3xI9Q6mC1URwx+d29XOCgdpda
	 PSZb1nLn+gCbJgNqMO9Pc4mx7YPyd+72ShrVOGjYiIjJXLVQcGtm4kj4EjGqda4wYj
	 GEKWvlriwIGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B39CD6E56
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048647368.5854.14516438296692084160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9a362fbd4d7de48c0b6f3244f7fbca4e08d12a3b1ccd05d68fd8bd89540077
Date: Wed, 03 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780486473
