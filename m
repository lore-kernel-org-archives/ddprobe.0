Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340FA139D1B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727464554; cv=none; b=o/zerd/RmCRdr26jNk+5l4cXu8zHi3h4OheygxA1uS4c+S7XVu7/Rg76XuIRsEyHmvH2iSTc7iNF4KFtqvelbh6Bn25iG4eRju5jTZutzw6V8g+SvNfZgJe2wI4izdaE9CnATxGgjIFaIGkcf4QN2av5FsqwAKOBT3lUmYsZSHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727464554; c=relaxed/simple;
	bh=rJvo7jdoQgyMJJYluOfbay8BHHxjG8wqi495oDOt1f8=;
	h=To:Subject:From:Message-Id:Date; b=bVbKV37pPRbdWPEkeT0V5bi2BNGTmcdBRkkTbdULk0IvIieGHMe4tpbTDGSMA3c9AyQjo7oSFWzyhokxfXgwLidcP0o352dheR92B0xBZKwI3YhH2eHI2dvSQT1a4gEEzY/6o+Ea19lyg9l1Vvv0p/r7tU8AhPnrr9NEOvKdTSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqQdpCek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqQdpCek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE9BC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727464553;
	bh=rJvo7jdoQgyMJJYluOfbay8BHHxjG8wqi495oDOt1f8=;
	h=To:Subject:From:Date:From;
	b=VqQdpCekH3d+O42Jiv5cmruYvCXO/bqp/1tuan17mk64gbkwWvANmaIGrNuDU4Y+P
	 mEGLkDVgZTe/NtO2JbFR9hPDokRA69f6jp3tKoH4GSJpJEeh3AsoamAwcwuAq5buXY
	 6hTfD5waF/gKNtwGOybbtC2Pzeyd73BcVPjzhRZUGrOHf3vaperhtzOEBZ4EtK1Yzq
	 Op01dg9+bVkUGRPKgaWYfK4i+siWqryKs4Olu/sV56SWKDC4wKPtsaINoqEukD+UGl
	 rGYTqnYIPb7nzFNvdaPomYYLwMNVFn3m44YSaLFir5F6PXDvgJwo4Oj95M9E0bG3/r
	 CGVyD8Xl8+kXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B78CCDD1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746455362.9510.15448674733252430386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d443ef6508b2da85a9ec685dce0fa41bfa762bccc4f67294eced4c5d8d3382a
Date: Fri, 27 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727464553
