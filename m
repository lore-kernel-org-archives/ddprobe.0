Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109B19AD85
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727459754; cv=none; b=qZ/chSq61OZeVGERhYyuLo8h7i1kiisO7ui37eujjeHD9GgRdCirXFejLldeulC9mC3Pgw00j1fqx2NheYirWlKuNKXXKHkeJFKpBBOlSrwitmzZJraS0ndfvi20XuroQX/fBN1zR0ZujMXOH1JKz1EYfYkkaKfaQNaA+ophFmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727459754; c=relaxed/simple;
	bh=48cRE5m1p8zUxve3y6e9dZOtKwJq6ve4VQIOjFevwnM=;
	h=To:Subject:From:Message-Id:Date; b=D8+5ClB1CLu8fbWObWUhDO6xBW5DQ4OC0ZCJbL9KKcVCHqHYWKdIq/JPXd19LwUlTjMkts0vh7YL7ZBALenc4f+BKb7VnJHEBRw+gSAyiOQVOdsdtKc/k8DAML5PtxbxzxkJfQKQDlib++rHFqrR1rd9lDHIqVIkDxUdZV3Fqfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcUsq+72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcUsq+72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF593C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727459753;
	bh=48cRE5m1p8zUxve3y6e9dZOtKwJq6ve4VQIOjFevwnM=;
	h=To:Subject:From:Date:From;
	b=bcUsq+72JDWbggUWvA/qaoeMSu8jboraFOF23QFLmagQvGXcooeL6MW+wLjLIiT4B
	 CvhK/ABpaLk1ZYhIKEnIH116jqaPIuw36adRWpM8B2GOTybIe/Tmi5fHa2vhAjG0+O
	 qxAeDFEkSOucL1qt2OGygtXY/0tjynCDlqsSqKNxGxbJvBaJP6di9PwnzOwTyva5eV
	 cIwPhnZHwL+oUzB3zfrdUouSlh9rlrUb3QgDE5yAVzq11jpvqm4fL3nAd696A500zy
	 t2G5fEJnlH4j2EpQSNyEl+W2Sw15TpqfGUx3IS48TiOsDo0mhSHOZPi++kjEDM8+jA
	 J0Lr0pucVnF9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794BCDD1D1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745975359.4315.584230126230012237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cad04989e33642073392865a2ffae50ace8254a4bf5879994f9c22034702bc
Date: Fri, 27 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727459753
