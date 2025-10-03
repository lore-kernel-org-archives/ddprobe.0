Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB0A1EA6F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759450794; cv=none; b=s9eWKyES5Tj7WKyIgL7Oe9lVzgKRvft2IpY6cY7Cha90CGJirPJi/G47VqVB1z/l+kejA7GCopD8iCyfibAouXEsegPHIoBMgoMHIz6jd4r63roRaw/Q9pDF9HUm25Kp2Jqb+lr5XNOlbg4qvkCZweibK9hwBm4Rutgpc6MO6Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759450794; c=relaxed/simple;
	bh=N3T44Zg9wHJ12wDsW7+01yPCB9bm0WGuvA1mpfc5oD4=;
	h=To:Subject:From:Message-Id:Date; b=s6tQVqHwI2fQ52FVxWYQXDcquYuNZe0cFxClFthMbMz4zXGzS3wbLvYlMivTW53x7QCeY0sKQwETldwSySMb0Gtw1NJtpRW6QtS+WWJm0ggfFp85rMAdrHCQdeP50Shqi+9Y7xq2oFRTmlyDxj+/y1U4DNVj7R0IWT+AxTSa75o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6pmHaGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6pmHaGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6926C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759450793;
	bh=N3T44Zg9wHJ12wDsW7+01yPCB9bm0WGuvA1mpfc5oD4=;
	h=To:Subject:From:Date:From;
	b=f6pmHaGRGRnEcKyDBDhk4jFrInSSv7elK54XQhes8tAHMTrkLRoesYNZjbMF9kmGX
	 5BecUCTJ1rAFb9oKPX7aTgLPaBm6fT5zYa3eavwxr30Z49T/8naRxAwBgdq4HDOeYs
	 4btid2Cu/s4yiAbrWuYsiq7pf2sMaurDd7HdA6arP43niHdDo9R065GEnPX7ra4vdb
	 y9cQt5zyGxh+CD0IyPTie+uKefthsyoYMBjrvpENpoihyhMPMR8FMeUhFZlthsjzRN
	 Kfo02bPOVBPv6qft3BCSc9D9fjZfoI6DIAK1SIwnNYL5XTWWXn+QCzhy2UWygh4Am1
	 zfrV/2VOHfmcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F1CAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945079357.20107.6989947902740522381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946bba58f6280b54670557a6cd7e9f2ae0abd775c49474f70431c3c48ce0e21a
Date: Fri, 03 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759450793
