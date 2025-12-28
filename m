Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388BA146588
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766900034; cv=none; b=na8zXiP+4qx6nTfYdR1SiRuUFC2VxxHhOgaOn6+zPq1TnLSlPHiNC/R0Vh+nE2i9msyR219vIwueIDmNAnSnxiuhiyZMAUmkGKk82OBLzFxeHFeE8Us7GlWefLxbzbfxqI5liseai6mOQPDMfcOjpVR1nbwC0/BHlxnGOIStDpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766900034; c=relaxed/simple;
	bh=KHHb/iQVfbUADhCjkGDCGmrvPXEpa5KzfgDV0UGfKi8=;
	h=To:Subject:From:Message-Id:Date; b=dGNvvdfXwtfV5u2AHDRyMZpglSKDp1hAr1cz+/S6EvN6/MBn9rBF97bWSqvHgqkZj1ZCDPJrEx3CysuVeiOCeTnaRpMUo7xy+bpmid4RfTk44w2UH2OzDqinKHBxCjbprVq5N/mi2p8ybr9+zpofPQhyuoEslXs/FYAWm5UnxWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsbRyFi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsbRyFi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C24C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766900033;
	bh=KHHb/iQVfbUADhCjkGDCGmrvPXEpa5KzfgDV0UGfKi8=;
	h=To:Subject:From:Date:From;
	b=NsbRyFi7UH69Z5Wq3x4/Mh3L+OBJyW9QrX4vQ/gM4kyT5Dpi/6b0/4I3eA/OuijUf
	 HJNXLqoWhjY/re1YZzg2YmLr0yoT8NpDRXJr4I9VGIJVw3SGX4fSL1hopPe/TFUjSs
	 Ww9lAQmssKUn5YYsafF8Nvcv/tSFjg2gWurOiQdURqAQ5oOsL4ld0Pu9ZpO0GLcijl
	 SoLbBI0x792ClnLxHj43PoImNGaM1YI39u6ylV3733m4iZd0Tm14e1lnO2kQl+gqrJ
	 fi7WJcmj7b5IhqxFOKiE29Iu5QlIoJpV8Yl3aLa9xAeRNDJVTY1CIIuLHFUT8YXQdH
	 ILzBTZUnHKkYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB26D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690003358.11789.205159702966968409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba5245646caf3e4ae89edcbfbb1fe216be01cdbf7f21ebb93b1f6ec8b206b57
Date: Sun, 28 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766900033
