Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB8528371
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758952194; cv=none; b=u/9YS2Mb4Cx8ERyAoAVX2bBnLJtwKVMOGgPxNqm05wPBp0E2rmXd2PdAKaqZzgVpxMtiZMeEZOY9vHT41cSlMhPnSEkYFHg2tQj5yK99l/lc9U+q6jwv5/LqGYRhZ7cVT9+QISNJ2GoHHQGLG4iekQ/95NuC4/Xjdy8GLVCKQCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758952194; c=relaxed/simple;
	bh=ZV/L2kJotPR/3onH3XgwcE7PG+2RaYwWJUVjOkPXkd0=;
	h=To:Subject:From:Message-Id:Date; b=o+3bvd1gklRXHxrxGgACujvdHa+pVaAar+hszMC8TrlAKP+lsL5QfBpBYQdxl5XOff2BvBCGYbw+d0DwUXIRBRmmETwOVIZ1UAw1lJsmU56U55xWVe0FqTavvzxyjXxuxAx2CgrG/DWXUr13n+wvKiNcECjrYqB0ASHxKoRrkgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFJqNuC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFJqNuC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758952193;
	bh=ZV/L2kJotPR/3onH3XgwcE7PG+2RaYwWJUVjOkPXkd0=;
	h=To:Subject:From:Date:From;
	b=rFJqNuC1fqOrsWDJ7RLZ1TTaOYikJRDtx775L9nRaMcb9GTsHOf/sHhJClN3M2l8J
	 N5Rl5AG6we/zmvr4Mahi+zhHBw+oA9YnEUTw+QnYUyy2N3Mdy4FSlX8roabqOmAHJY
	 q9rxFvf3lrnf4konm55ndUAWK5egSW4Uq43ePFuK41QUq8moyvdgZzTnJT82tdCgO4
	 LZMP3eos3Bh6fGbbh5uR+4JFY3NH+xYBIyF9wSjMiY1YJvGxtpxcxojSP++jenVulg
	 QjCYM/bjtc0mEMSv63iVdl2HPGsxgVWjTNiFQWygQKKkePQ0RHbjvipAGkk0JZLRz/
	 Z/C6xS1yiX5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F307CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895219357.28753.8430702419270820836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81eb0fedb16a785dec15ed07dd092d3c4eadd39cc87cb3132c202c6026962e7
Date: Sat, 27 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758952193
