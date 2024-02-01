Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C7E3FB32
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706826497; cv=none; b=fUMocXj390GlO6OkQngfRESXs3Hkahhh74d7br3Z0yBMFAWwWJs0gSdnJ/Zr7JXSMORauYO/Yq1k2k7W2yHjG39nQv2kClvKS2i/9VjJVmaOHuJPN5OK/9fAS2FaqRHItdvn3h/0XdlOsQqZDBsxtxwFMAVF0fZ7qlk75eaxiw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706826497; c=relaxed/simple;
	bh=TvMijoDZ9RTJqMZAcRS47M2El2M0JE06LEH2xk09XJA=;
	h=To:Subject:From:Message-Id:Date; b=djJbrDdCNMiRb5lufwRX5v684F46V108pUfCkNqUtkxtRO0970VMMyLHBR43rLqCsbcpHA0htGU/ceBYcro5mg3VjXszVhxoGHHYfGwROJ90AQ2UEXg2tmheJpa3eOg6awVdkK3zCA1XcvfHz+3kbrqvD3Wqc9uq7wAkn0+ntYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRW7j3zX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRW7j3zX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786D6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706826496;
	bh=TvMijoDZ9RTJqMZAcRS47M2El2M0JE06LEH2xk09XJA=;
	h=To:Subject:From:Date:From;
	b=jRW7j3zXYuqp5FZndH6CExFRH3pHrKJntKVhFkgvMXQlkiF4Jk+qwhiuVdxmlBzBR
	 Eo6E/jA3tW4em+dRK6WmNJURvK1rtM8Czr/TvD0Ocwt7Z9lha2/KThVC6GXI7BFD8a
	 EkXkXImJ7rtNlcsFI7923j92EB3DKed5S/uCalKY9d+suQrOwxu3GXsS5sGD3Ciypr
	 G4RzFbGllkb0/1s/OPFPNcwjyBmMgxRHDFax++7HXG3AYaAeCMybWFPKPcXRlE2EAb
	 b7sZU+Sk5g2EN9IvDR20frT4dtEY2y06wsB3kj5k91q+7ekHvEggKOaJFgK9A3gWai
	 R6reH/+AoREcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9FAC4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170682649638.31373.7978759050630004629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b24a35b94eedda93de4dca5633d22dc7ce9afc2228c237f2d8feb93abca51e
Date: Thu, 01 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706826496
