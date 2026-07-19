Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C639021C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784458714; cv=none; b=p1FSgYh+T9+Ow1dfIh0WWPNZQ3MmQ/YkiCUIOLSbM+Wpkd6a3YHa/3m3MZraC/pT8lOArXEL9YLseWpZ5KlLVif9DmUzE4fQ91ziZGFo4zMGKCvyRpS82yAktdw6YfdVzEwwE2nNQ5XyACb4uwT1SsiuBlRBPgzdiCZSdk07mz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784458714; c=relaxed/simple;
	bh=Rh7YUskSGsMebWS1vft/gzP5uKPdx8z/Rh5V1g/r3Bo=;
	h=To:Subject:From:Message-Id:Date; b=PW+gJdwjftTN3wEpJJ5t5Z0XeC+nL9/fGuxZku8VzTr8mthzluQPJip2MVEg8MYY7Z34c6i6RdBmkDsWG/Ogire2rT7S+aRpD2kgn9blljh2fG857u1DOyXOPiXiCIJu/fHmfI37mYCKGZ/6QBuz/d9C9W5DDKeOiR5MPOFnlrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckCDuN30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckCDuN30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7CCC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784458713;
	bh=Rh7YUskSGsMebWS1vft/gzP5uKPdx8z/Rh5V1g/r3Bo=;
	h=To:Subject:From:Date:From;
	b=ckCDuN30ebsAHALWA5f7r3AEdOXxNhtYjL4lc/sLbGD1h8ksgUik/5+5Ji+5hS0+9
	 O5yV0eUseZwplk3SXR2CheXA9P0wEVPzAN5n0AJaI+ngq+1HT8eEdn3Ly4FikRalc5
	 bimql0QP+8bAa9vCCGWju8Hn/IhqQzQlFx+A0D3zCweuTUuNNUqABW/9tcb1gP3gIh
	 b2XCeI4BTul71YHuT6l9wjyUuRpSvMDt8FV+rnM+nPJcoHf8L51e3NlKXFhZTx+4Kr
	 ZlVnrXnil9fSpPRZkBNwzx0agHkPjAShTYu8NfBGOtxGh2WA81ZfhNSP/ozQcXCP7B
	 leSM1f8tHH5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC29CC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445871368.20210.5394021043433619685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a7decbb4cbb3e0a22e3716dc37258c84e755f55e3959b9f7051db17ecb6cc0
Date: Sun, 19 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784458713
