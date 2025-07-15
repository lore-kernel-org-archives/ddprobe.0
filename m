Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE962C327E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752546594; cv=none; b=tQ5M1WPyYEbMXS5MhH+dkvKUxJTKX0o4LEbTqx437Aun3wfL8jrXHZrH+imcOUuDzvk9PEHYVkU4xVHvnqLbggAyMUj2+nbkBPdLbhERuGFy+Ol3A27g6ObPeI60kVBLY5OmBsgproZQjuYQGpWdCu9YCDERUOUdJo55Apa1RmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752546594; c=relaxed/simple;
	bh=ifLpl6Lo+kOUBMepzDIVt//lU1gI/pSF4eM7BK1Kxu0=;
	h=To:Subject:From:Message-Id:Date; b=hHNv5nF6Nh1M7tUliFKxnkGbsL0IHEdzAvfvtlVlQT7rpcGIZleuS8K+x22AcB0kJu8SNVu3p3Spr6RZ2bk9mgHj/IZuisqBn/lpUqmeTV4Rsfzgi0ETYznCsHA3fdTiYSopNMjAcANZnw5aUnyNEF5GjNz5K8bm91j+hf2tP3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bY9edsI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bY9edsI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752546593;
	bh=ifLpl6Lo+kOUBMepzDIVt//lU1gI/pSF4eM7BK1Kxu0=;
	h=To:Subject:From:Date:From;
	b=bY9edsI2IFuKx1+t4OfODVcjcYeBB9yZcJX4arr3B3vp3CZDoQCwVHyFGTQMm5KCB
	 sVFiSvcN/IMGx3k71pd3FH1uM/QE0Y/XhdvSS6BVt8wws7vEi73ioTbj1HAkOmQk+k
	 QGQ5n089ymlvV75P/jdlrp+sucaoZ/WbyUdHSvIEsov+l0bsYZ6JO/Jm2xeYAkTAG7
	 Hvhp9JSzP7rv0IviJzGUVd/fXdv3jwOIMbdEFqvumYWvJLPifp6BfYwizMM/twkQPu
	 KL3INB344iJ6Hbdm58ZwzGPaJ5OoQmV7XyOmHO1R5R0cYTSQ8LPc5QyTSV2dObuvv/
	 NjBDVJNEXLZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91957C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254659357.13158.1750288980064916735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d8a2402b5791cd728b5c122b89b7268ccd6fd6cd5f9c91af20f0ad13f6e20c
Date: Tue, 15 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752546593
