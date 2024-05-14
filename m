Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76A144313
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715694143; cv=none; b=nlGqBIGM2OxkVAJ+K4jIkRsDWb1+/QM1K/S8+mGR7bm52IvubNiVh83a0q8eUXcvM40hBatl3e6FUaJenACclmAXScAT9BR9TQEKTn+9kiLqwLah3lgEBTAh4iEWVeQcoeXkbDaxU+1HURNBm85Lf/we1RcqQmAKZJJ8EmgFYe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715694143; c=relaxed/simple;
	bh=KxP/57ntwfZ/3job7uuDYf1s2INgLXZtNm7abIPapeY=;
	h=To:Subject:From:Message-Id:Date; b=J0jgfRmYDgo4SVyTrv1k9ajlAe5SkJ/y2QMekkJL1S1O56cJz6LdMEQ3hCjufvlZLql1K1u81wxKFtPBVpfn8JzMkUvuhnmRGa6w86tQG5wHGrGgPdZY4a4BinQ8znIOofxRTbeLrQ84jBNcGO3QHIuYRb1J8glERZ4pW7Mz1Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5VVM60c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5VVM60c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DCEC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715694142;
	bh=KxP/57ntwfZ/3job7uuDYf1s2INgLXZtNm7abIPapeY=;
	h=To:Subject:From:Date:From;
	b=W5VVM60ckYsnInbihYYlQQVLkATvyJvgbabwIxC+4pS90qOqfuoU/nY/oeBi3xzDR
	 6mgedsePq6vt9CLu4ZCNNlu4q4ZTild0s1iFG9yZQnoGLJuRkW3Nimsr1lhwKNZEUB
	 FCDE8tSbLD23b1JmYdDmbmLfYaEKutRvKnDJOdIQoetIoAtHv0Rbp1GIsFkEsYzPNF
	 0rA1fKtsz0upNoBpvYOZSnF7FQjdNZAkSHB/2usnWtHjRG+o8wnlFT1tKqZs6qHSu6
	 ueROC+xqdR6kBP/DhC2ebjVeJ4E9ffg5c/HGmur9xrZUo7W0yqHsXZvX6WwZBh7y8p
	 GQzMw/qOol2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AF2C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569414280.16878.9677307683816994269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5b46b95caa5e0645cf0317c6b49f587d924c2e7135efad9a3f065d4c20bc84
Date: Tue, 14 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715694142
