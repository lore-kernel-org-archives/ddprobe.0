Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9BE748F
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750556994; cv=none; b=pOfB9jUNNYwVMHGD+oFVZNf9hVdcb57/f1EEiMjIhXYkc+I8SCa82IwW+pk4JFduLsSJqxWgpBdi0J+WnRZ7Y+Rd1nB5xAvo2ZbmJAeQET4iMqwDsttHqmotZ6bRcihSh3FnSOPH12kHAFB3kW9IP2QepSLai4pG4oQ11CiUSx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750556994; c=relaxed/simple;
	bh=v7kLMrBqeAKUslgIb/x1gk5F7DN17ofpxxJJir59Ti8=;
	h=To:Subject:From:Message-Id:Date; b=Q3lro/xmsgSY3+FqT1rdlqb7SuMe6CQNaDA/bxrJHIQayUCEtdA16wh1/rqy9dubdnqZ8C7pb6P5WEKoaknDKY5FCc+Mosl97ALgNjU76bfHvFHhgirN+NZJ8zco0NrcW3DPADZSCuQtzECx6J8kzq1Fp8IUF66E8ydvE8U+wmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/jpL30f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/jpL30f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A4AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750556993;
	bh=v7kLMrBqeAKUslgIb/x1gk5F7DN17ofpxxJJir59Ti8=;
	h=To:Subject:From:Date:From;
	b=b/jpL30f5NfrMoI7uKs7V9kesqnoYDo+WilSpvYoULOhNlkKQlt422/f/I3q5JEnR
	 ILqax/dkSvzPKEUtaBVopRZvPLKlHbtUW8aWVQrVpbuqoFhs70jL5bPTX3/MBoPlKx
	 Esi7ClpFiTxCkxwjckoadpT+UZ1cRHB/AlSagF2oAEDNBvSueuEXQFZlciykZkXmIe
	 LtBm7i/M4rs4KIYQN/58nC/IPOI/bjKTI2D3pnid359fWNjg+fEYxPkoBhJW9yAbgs
	 1H0IBuwfuOeR7PoZjISqJVL/jbtYkXQKikPLNpqsFCZvmWXJh9stM9kLaGZhi2BUSx
	 aI1PrloQw/3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D1C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055699357.6138.136735616021433798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83637537135954ca40393c2d980175980d4431e523bed5beba2be61a3c50432b
Date: Sun, 22 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750556993
