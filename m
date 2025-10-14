Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE85F2D876F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760461794; cv=none; b=nz9YoGC8VYvMSfGlQS0NMDQaVjR2TrQiFDLWAMq4IP+ZDOktjUpUXCwZLkDRbeknCF651IbpzV6/x4gIbI5sLFhLyysS3bGr9y5O4gU04PBCIQcGjUNgTgy1j6PXQ3fpmHdIl6sGin802EUWoeJtjOHC7ki+maV973TkJXrOgIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760461794; c=relaxed/simple;
	bh=GIUwIzf8SH9gFVSuERSF2Q504xuvv0rAaSPhswheWyc=;
	h=To:Subject:From:Message-Id:Date; b=WzN/BKRSxItTDQXr9auQLuO/laf5Bzp/52a0ONNNBN/jy7nyIqx540Cw9bv5BbMUpfq8gpPCDbaaiF8XKK+nUbuf49xKf6EhSTwNolqr0dEzzDjpNNLelw4r/D+QfCzocmja4VMHyp/k/keBbRJIuQMgTmgUAWFOToFqBr2gyBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSr4YvZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSr4YvZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760461793;
	bh=GIUwIzf8SH9gFVSuERSF2Q504xuvv0rAaSPhswheWyc=;
	h=To:Subject:From:Date:From;
	b=kSr4YvZYHwcmM/9hFZMrYM47sfhjZ4b0vv9niJfJrZ+eWeILwUZFcjKg1p0rzmMYv
	 zSXm6MigsiK5G3PVbej/t/x6GEBBHCvaTd8LqeovK0p/kzHw8Simgc4gd+2+dL/tAs
	 7ryaKy25VHFFPFkv33CrTYnm0LNIWwR1v/NAHIXskS672hxlsFvpRnGiUQOd8rVVFA
	 e5asRMoFlo8pgA2p5iSoCYakeiAQKKpyG1vXh1aYjk8+GaMaw6rJC9+/butcZIept2
	 55QhJPhCaFNxBC3fx/4erPGXplXqaOGUCG6Px7X3/AkpzoJEcWWXSKlVVVJbJpo422
	 GAQb3T0WJ5Xcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA6CCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046179359.9867.14701144409955646465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4923bba4374a2c45f91987d9d27a9c7f119b39f414d558020e0ac5ef6b1fb5d2
Date: Tue, 14 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760461793
