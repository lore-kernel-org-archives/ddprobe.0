Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619FA3D6C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713673823; cv=none; b=eaFuCe8TSXRx0AnrENEcYVEuGShMaQ5A2o1SAxhkGcgJy92nqFegqQRHMod5+CpHOQa5/YRtB+1Kr8hcCTHhOjSAE4wJWacTwOCQQcPCZl9sJ0kvjGOyperJ32Nbgo7DTXTjTBkn/V8Sxh129wsDrOadcT1W5FGU7AHwIkUFXjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713673823; c=relaxed/simple;
	bh=gK1vnDRFLchNA01ayiH3zU9/9QdZW9Ird2q4w0Az6CM=;
	h=To:Subject:From:Message-Id:Date; b=N6q2wpl7062VnYPF3QLQr34mjZ14TTYftTnsaN/ltFZbZaSSE/WHG7S0ejOXMhL0Xrlc+Xf7x8hZ4pzw0neSSwxIHczJ+q7BuiVjyrS/X0HE6yuE9Yhvk7eHedWsle840EN8YGDFanuc/rTGLgw73tMHJ1b0cIJ5y2qLWUEgROQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+VG1Yg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+VG1Yg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DE6C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713673822;
	bh=gK1vnDRFLchNA01ayiH3zU9/9QdZW9Ird2q4w0Az6CM=;
	h=To:Subject:From:Date:From;
	b=i+VG1Yg3x7t23LAZxGn2ZlbCeKvb5p9MObYYsGr4Z8ppxQFxNlUcDtmGj+LCsPtr2
	 CdSxkyyl7M/NbzQ4hBuTMd/ccqyYVyyEdKAKZxdqDHSq/ds8npEZnyO77WKohYqoN9
	 D6N3W9e2IouTgP5+/CjqbGxLzIHyQBAoc8YK36XD3EU1E8TzMjYJfwu2fmPupfLPWB
	 lLMN+bkfQyAUUOPr2t3V0fqkbEZ69tC7wg+fRIcd5ngYn8FKKXgCGVYe36qByx4wfZ
	 KwkAR+Utw72WgHbStx5VdrX3pYn8O8GVN+7Krzms344nSRhk+ZQZuLgFrnoef+hsb5
	 CDDpuHAwx0jQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BDFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367382277.786.6274959856977065565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a39625d15934e6685955f0a83b43967804d0428748f8c7af06f47fdc7eb7448
Date: Sun, 21 Apr 2024 04:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713673822
