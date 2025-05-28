Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF7322A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748421595; cv=none; b=XssrVxsEiobCz9vosb1AtRzpkIvMu1q3iP4vNR1u0ZAAjdLl/9I8rw/xQkNw0niJr1Bx1UZb9BGFlOifWBE7rCK1zKICh28aFyXNaoSNm1DUAIaaMZjrxKEfBEfqthnfdkbc8v/qW/F915tpEWFqKGLF/d+grG6cHSDTDSjs/kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748421595; c=relaxed/simple;
	bh=xdHCKG3BrLgrEnGr653VwayJeJgwZQsu62Ejh98vm3I=;
	h=To:Subject:From:Message-Id:Date; b=d9zOE3vlsJrC/djCYHbW9HzN/2/OH089SBvrf/couTOBm5qybeciTdINbn0gIo1D7C8mnbU7t4QTjDopIBZFfKTate5K0AwmzJEOvC1NMgH7jgehSpisn8LRdBtMZHfTmGBozp7PBfNuvqFEJPiNmh5AXNcaZkZOT/70c64pHmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8yuPg9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8yuPg9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D01C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748421593;
	bh=xdHCKG3BrLgrEnGr653VwayJeJgwZQsu62Ejh98vm3I=;
	h=To:Subject:From:Date:From;
	b=k8yuPg9rkoufEhU/wGve/jS/m962vUKOYoZTAWVQ9sTzYfNk+MM/3rNXT0fG5JdN7
	 XawkCTyaHUlRQnx0g2hAGzHBsjdwMy5KyAvOk72tv5eBlPTdzS2Xa5eaE9L+QFhfYa
	 P0AtSQMemWVE5Sdym4z8zPVJillMrwdjU5y1PUWFWFe279cgZtigCHHuXF6F4NewgQ
	 rRom4OpjXErNIriBV7F7/XqV1EcuQEBCZMP5nLeTzOSKxEVTMS2VrpZ+2rvyxAdkG3
	 o5fvto6oguZ2ssd1s2c86qJxJqVfNerRQxa7UC95+y4yDhtNiYO5iJEYNBNUzltFxQ
	 wv93m96sd/JYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A0C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842159359.29322.3238292127207885789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be9b96930b5b0685ca9675b2ef463d9f70bec1dfddfe6fd3ed1b2aa1a114ec5
Date: Wed, 28 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748421593
