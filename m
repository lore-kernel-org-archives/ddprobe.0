Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200361F8671
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735320354; cv=none; b=CC6nFRhgckQaX3zcyYoXnGtwAkYtlx2/qVGcVN0teKLyvudeZ9vGgwvgfjq/Nl22X/nJ1E69c/1YSNk8JBLMbMF3YDSUfElXEZfrex7X0nYI+SDnVixsuNA9lvF0an0Uid/G7GcfN/yDJOGE18JwTt/ECfcoUQ9fM6fKpo2WjWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735320354; c=relaxed/simple;
	bh=qiOca6+fxkcyynjR+XPz8ihna3ar6eaw+h4wa7nHv/I=;
	h=To:Subject:From:Message-Id:Date; b=fkrdgO6iRDhI0kF1wEB3UVlH19EfU0RnzYj0UVGdwF0/u9C/67OTfYEUGxtBXvOpOc7XCMLRvQYidqxUr2podcSjEN9DMCd6G9eEOsSPNSQJWDdpjC82y9GP9FhkMPJQXtGofQsnfekQJyhDCliCFXh/1NmAO9XHjNHemtPwrc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqSLF43Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqSLF43Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB24C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735320353;
	bh=qiOca6+fxkcyynjR+XPz8ihna3ar6eaw+h4wa7nHv/I=;
	h=To:Subject:From:Date:From;
	b=eqSLF43ZVRScqPkjjpq5PTRkXalfnflw/8fabP9nUOUPxHNzufSJU9mxMKn1PXIB5
	 Gf/7lwlhhtg7MmDE/ks6799qCiI8HGfn/D04dTPneQJehTawZVQ+JKpHSfIOaSCSaR
	 masYUGFRWpr5+BIjyf5iuJxieaRBxfhyFML6aEAbcVfNzdSUq2lwCFmXe7eUvS4u8A
	 mfJn7KysXvEzbb/IPEu1lROBAQ35oCTpRaKmwJUGc9xZcoGiVlDak+Dv9CtHxDlc3P
	 VnoQOUISUd26pQYJbpCRWJ91fXpWHbSk3LmE0c4R3uFVF95vGzcKY8dBHkUOg+O94M
	 ATIeRGKIZpG1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988ECE7718F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532035360.9286.12748651477873385434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e875003bae68c2e2f9ed1028fbb9cba1a4822c7607505937900dd761973c45
Date: Fri, 27 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735320353
