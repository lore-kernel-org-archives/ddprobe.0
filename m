Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508073DA7FC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117694; cv=none; b=d4QR27Zjyw5forwPn+DmyOFMO2DN8AVNMtRxGFhuSDyDr+W4So2TAMl+/JjOJLFc5yutQHla5ic7/lV5/kXxMrAD9QDbrzwjX9Y3+glvdl4gD6tGqtkh+Ly1ZIAj++iH/LamJMfdfb/kqmlH4g/D4oig7UB5p54Q+PDKg656IF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117694; c=relaxed/simple;
	bh=sjubdz4zyr81Jl2nvhXkAyFT6suMJ722LrkUVum8/SI=;
	h=To:Subject:From:Message-Id:Date; b=JClXWYSz829J/xEG0jNcevKPugJB4zuCwT2t0ZjQEiVsG2dbX81LYZqlgFBt4co/FWZqpboMH/XDqH00jZOWjL5UHqiq4CIWzmRDQPBAArqqg/5V8IfPxCTu3Q78yYUNszJ9LaI4xjyQog/jmmS+L54Uw3RdaIz8FYEeTF9c39Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEzHpyj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEzHpyj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95ABC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772117693;
	bh=sjubdz4zyr81Jl2nvhXkAyFT6suMJ722LrkUVum8/SI=;
	h=To:Subject:From:Date:From;
	b=NEzHpyj5pkZfT8jdViZkHKp+zf/vqbJOkORtfbyh1K5xFo7hBHB/GttMMp6h6xifY
	 HLyMX45X8V+bFNKBmA2s2TYRXL7t55pw8WpzeGQwNdzyO1A6Z8JBh+RkfDJX9OL+u1
	 9Cew8mpFcSK1f1qVHQyF6ql7rN05r/oymgqB3HldvqORoKpzYQGkio2HGtnQRTc5jK
	 Kq4+Jj/a4kOK7diSKhn1oiZJSSlPPm9Ak2g8Fc3Ln43XYNw8xhUCnvWkXixBDT+DAR
	 Z2miLjjnP2X3bMoAaXfPWgCEHbM8hzCmINo6lDsLdfLH0dwDsfHe8kdkHtXMAOtfVL
	 P+7oUBJcacg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D8FFD8FC0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211769360.20026.1807500607774220188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76413e7066536869942128491fcabbf60fea32eda939b183b51b2d1e00fe102
Date: Thu, 26 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772117693
