Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11209154BE2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764567774; cv=none; b=COKGVrU6kaQbo3QC58PQ/DTohKIn4VLE1+++0eugJPRUmVUp6PDQSD/01iGJ/qCheX+Fh0LQtphMUgzblX87ATCNH9lrlQiMn8tT764whh1ATKcS6NUv4Ag8LqxTFo3Kv8HNe8Zzxph2v8gtIb8fYHhAAhgSwFe3Mc5k7koKtHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764567774; c=relaxed/simple;
	bh=X+h61e6faen9q1oep89/3g7N5JwjlujvKJ1ZigzEnVs=;
	h=To:Subject:From:Message-Id:Date; b=n4gmJDRs/R6LHWASnK26ZGGrGnLG34GWhXJsqf7X1n4DXmCxylmHx6QjBjpOXPBi8p6HyV+rMZCJYPDBoAGyg6z8pT73a3tMSm9RTc4M3rsfQPj831/9gIWkTcrCqEhw8Cks1E57UGNCKHrpD5ovJd0kwb9zmJ9CO9pMl56H1DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPuNIHb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPuNIHb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A676CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764567773;
	bh=X+h61e6faen9q1oep89/3g7N5JwjlujvKJ1ZigzEnVs=;
	h=To:Subject:From:Date:From;
	b=GPuNIHb+42KRh7CFc3tShI9hl24sPjOoEUXB09740q9PMGPtgRbrghj2gEmsrAeH4
	 tCE21DoUlRr4CVyqDheJhTK4f5JctJm3Tu3zt9D2NWj1AGyM9SpMhR5FCUkmfFzWA3
	 wMhzW6lQ5PPeVCSSux4t7DZFq9ydII+q4XdD5JmA3LlPdAa+nDckHTy4pm9lEFQFrV
	 fFAYi8Ds0kBrx44afLrxQ4nmmFORm4gjwHvDF+8yJ3xhdiTTV8zcQE1JMRmNEgJ57T
	 kO7khET7jlCZrWHyyEb1Zw7RvwB54RZ2697M5g7pivajxK42fhN7Vcp3+tv89ojdvP
	 KswFAJevcU7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F3FD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456777360.14067.12169035991869789522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3088000ac2cd7a9148f52555bdb072336569afe43107f34d5778904e64a70d2f
Date: Mon, 01 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764567773
