Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC00A55
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765584174; cv=none; b=KVZZUBq2fcMNRaZUhMGpLSSxb6rTpq3luF8cP5KIdImRzYmIPp3UrfDA8M/kkrrx1UGs6ZiO+BR30VRCA85mQtOr+AWhrtxkKXeh68AW8MbYDwxuobtbnZOSd0gmeM18tIEw2Z3NdqwbXk6eYmhh7W+T9Nooa+eSv0GaDRbiaL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765584174; c=relaxed/simple;
	bh=d9+5KJVGNJFD7DiA/SAzDSt7RX4ZCAW4fkI+4xlGj4A=;
	h=To:Subject:From:Message-Id:Date; b=osh1+m8VNch8VT8EIts0vrFLB3dLQKCvcgKs6S+9GtH8ipxMHGQwave8daVDlesBz6FEkiDCnsVexKL79OSQtQUVArB/BjSne8LVF5nKoiSEVtTXtv6qVnbdsdnRFJViw2YdArcDB9BQTRUyMjuCIwoQYpL/7oR173JzB75h3t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAQaHT/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAQaHT/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5711C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765584173;
	bh=d9+5KJVGNJFD7DiA/SAzDSt7RX4ZCAW4fkI+4xlGj4A=;
	h=To:Subject:From:Date:From;
	b=RAQaHT/aSZIkLr9i7cu7pObcdP9ZyVwBXU3B6hdHHTkEDKQPuNRqpSr5IveQr4woM
	 rtbEkhboxVbAPoY1sGNwgbSvuxvGTtXncEN+IbHj15sjlk6VBsDjYdnL2PPK+wfIUI
	 7s0TIqQcGlkJfflIVG2Y7xz7udTANK1cOU197gpIu3vTpJ8c0QUfjaINa1M7J6NOQC
	 aznm2FGAJjE5alCGB0DKFxnjBjL8NMcQKJdb4ezjC6C9ui7i3ZGPHZadtMu2ErNgeL
	 Bt8DJczy3JiDXAimiKJPTtuGluICz0L5e+SStgrBb1TWrbXu1EWAx4wxvRh3QHnKiM
	 p2SdAc4GfAXGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D2D59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558417358.3560.18341432702798249084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6f28406e43382b606e028ca7b87343c651d8770352880ee0d95342c64c7913
Date: Sat, 13 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765584173
