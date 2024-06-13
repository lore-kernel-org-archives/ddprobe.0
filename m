Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7264880624
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718322503; cv=none; b=ExRK33kJo9mJ4qSipJ06lxzeR9AwThDVTtCXu7ptkQ5OGg0Dg8rQSnvH95O47Ixwu5o0v0a0PuIUwx2X6Xgtcp97Pe+cZFd2AMsFLX5wi13krpqrcS1BEmccNUYRO+O4s2cudrdsNoZbTzlF5WglpR7b0p9m15D3n7/LC6zr/nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718322503; c=relaxed/simple;
	bh=o4sEfyWPTaLbD+WS3KoSuvPEOGuwwqtjzSMH197hWVo=;
	h=To:Subject:From:Message-Id:Date; b=tFA6FCiU2y+/HosMocCn3Rv5oVeZ+tWTTd4v13pwByEbeen87cdzeIxRtIvH/RABdDPQk72YXf0JVUmC1a3DnoSu9fAAQC6aKL1v2yPw9M74Nc5g8FPNyv5pSyr3yJ7F+zqR5gZKKYX27JUGZ3/YfuFJw9LxJsjKXH6GXYg/On0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlZtFmzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlZtFmzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70C6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718322502;
	bh=o4sEfyWPTaLbD+WS3KoSuvPEOGuwwqtjzSMH197hWVo=;
	h=To:Subject:From:Date:From;
	b=JlZtFmzS7flsvV+Yrq+2VhgWJ7T5wJvFb2n8MiLJx/ZV+GUjH5XTT24h3vrTxgC3y
	 23YIsae/V0ToKAIljmwdus1O+o05xW51GwIIle5byyTr4LOaNZi+d2i62R8cftH2Kw
	 QnOnt20PO50E5skUVrlTw2wwdz4LW/qMIcypm3/VcpXwd3G3iEWvoeqU9bUmxzbA3/
	 Sil2KdWDAM6Jr9IcBOKqzWlHIRJ3raxrbx04vkW/Akx098UNCtqhrqGeCROj02rC9h
	 Ld3yZHUkJwI7JWHH7UKKpdB6YQE2EbUw/kjBBIfnQK5JUZGCz6n3J2QaVGEgsSXVJg
	 4tOtC7RsUEFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0057C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 23:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832250277.14642.7693254003115996628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6831cbb1e1d351f09236ba013522be74de52d18ce7963027a8f9265edf3b3d
Date: Thu, 13 Jun 2024 23:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718322502
