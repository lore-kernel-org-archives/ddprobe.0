Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321FF3232
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732811754; cv=none; b=W3w4t2anyZ9qW0p2rDRxT/wZugRg+ga+BzalLPHmOufL2ZMNaMyzr80TrVUQYRMF9EJQVO6cN6aCwmPvF9/I1W3eLJTsoQO13HQ3tPNXwVJLyHVcd3dIaWhjZ/wirAuHWtmB8hLScpOWy7lVqt5R7vvaQIaifo4nAIqYv9QEDQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732811754; c=relaxed/simple;
	bh=k/od19+E3bcsRarcfTsGLf5Sf59rzIKaJF38PJTqbTs=;
	h=To:Subject:From:Message-Id:Date; b=tTkjCDwvO5CABw5Ihu2PxzVnDIasdcDWqHJvcVvXLvZqzuQi7lccpWZPSX37Ro9GL5z9qjkJ1tW5xasJmj0Lh60EF0Bskqq0Cpe7ViA3jt08mwE5ruYg56JFLCKNhfnCbnqGndPmMad/it2YgGRW01+KDd8Jj6lgLUDsg1EqbAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7/Dlkzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7/Dlkzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FCDC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732811753;
	bh=k/od19+E3bcsRarcfTsGLf5Sf59rzIKaJF38PJTqbTs=;
	h=To:Subject:From:Date:From;
	b=h7/DlkzncV6jsGjsOsn62gBdvXlCgMStBbGhXGKzOc9jzfx2ASwYex5LeOr4TR+Ti
	 Nphx1+Pmde206g391ERYgk7vJUKbJQHwO75M/X1/aQAsh3bMP9DhFXuMtP1ufMoqfN
	 Too3MUxXyi5x2whmNnPehkZ5ftfp/U5MvtlvWMVu/vqn/x/EXQIuh5iaeA5zJ9o4wC
	 XsbJNIRs13TK/DzBYTP2Kc/7/kUjeSHZsFsxOFGHbV7T+9cj2OGCHkXe4DfM4whl04
	 1kFB4X/vytVHKfmp2Na4MDicp1/riXjv6eQQ4FRFf4DzLez1g1wE7IvVtvpU7YTsN0
	 L8/Co95kHINtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFFBD70DE6
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281175359.10389.9096641593335784004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9318a972df809c2edffe7f8dd3d33ba6940a3652c2e051d0dd5dc4963a016e
Date: Thu, 28 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732811753
