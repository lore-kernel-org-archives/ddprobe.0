Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006EC3563D7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761767994; cv=none; b=nTbvRSYQOcdO/h0/+mXWYN0qu3Tu0AH9NQaA6DlJP4qoyREaw6Gy7fOgKrGAWimjNNgo3ZrdjUhFqLg/y9d2BPLQ94XyqPRx+NsElMLpcObU+DvMSFR2nywIKO1sJ0joOPMthtXNRr84+hMu2OCOH2WO16Nr7z6dW6zOfW0qKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761767994; c=relaxed/simple;
	bh=odDOoFL2R+c/V3R4ssyEjjZqGJFSki697UM86GSQazQ=;
	h=To:Subject:From:Message-Id:Date; b=jf2+p7YuiH9SHRgnR+w8HGqY5jkKbNExJrput4HuNcPbca8vTiKZoz1y2D7C37vTzOOs/Sady8cQxIFoZQ3Dtigh1ASxDkC+jVxa1sd5FHIXt9lMbMImqNSPKmdl8pv/rxpyMuOmOwEmYfSyqzGALLLffLgYrsAwug6Q9mYxbnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idt0Di2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idt0Di2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5342C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761767993;
	bh=odDOoFL2R+c/V3R4ssyEjjZqGJFSki697UM86GSQazQ=;
	h=To:Subject:From:Date:From;
	b=idt0Di2+uwDk29YiIu1BHb8jAtK0GEh8Y6nkHM6+RRgV9Vj/R/iwmRNJXDRza2M/b
	 lwarVHllAiLyl7D9ZGE/bONqjQtZNo4JqQWdsbMqRaukY4GJLVYde/4ncjVMbZbnBh
	 DxEc4Kjh7Bl3ajLPuA1j10fqZqDMybqSg3bIpGY4tjluKacv71OFfBVTPw5bsvP7yl
	 dI/ITKxWnolHB8vv0OCLLPR6fpXF50K1oac/FX09yPb8u3NPj4TwO/Jypfdur2y8LK
	 bZtBsBSbghC1hhyqdonDLib9plKRrd8sFPib8qyc5cPfT2I6XyikF9jvqlnKSde3EO
	 Dp95M1PZtwwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CDCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176799357.4956.2143007415198784288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163bd351629c94042b03cf93ae5d80bba5a7553a7e2aabe39e5fdbd2b6988485
Date: Wed, 29 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761767993
