Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126E03C278F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419694; cv=none; b=M+fRD/0bL50jpmsieHfv6S6DkzSRvb2jdUuz2jQDRItTMceuNrve+nVRBcIgsx7AbwSgVf6jAbY1mTRHdG64w8MsZaYQjygoLsbK51LbTWGfkexYZfm3ajdCONh3z39ySsEbSa6qivozeOVeKwirPK3ck4T4tghLMgL0UkKjZ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419694; c=relaxed/simple;
	bh=GPIzAzUx7e34gHrx3cE1885bBgPNwsudtKKOo9QK0P0=;
	h=To:Subject:From:Message-Id:Date; b=f2u1644MvhDiI3PTshE0ZOjHE1RUneJpMZpVdJatCKq9Y4+mFXttgKxwLjC1lZ22MHjj79UR1S8FazltAS1xPqijmyY0iPR2UAAk5jQz1zVhHLjYViqm2yavpt+0A2lFcZulZdtuTit++LJmEjOkfb8kxC32G6WoXb3ScneLrRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDuUKYQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDuUKYQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF0C19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773419693;
	bh=GPIzAzUx7e34gHrx3cE1885bBgPNwsudtKKOo9QK0P0=;
	h=To:Subject:From:Date:From;
	b=VDuUKYQOxJ278WGSTJVG7uv/dKWU8mXUGoLoyX0mInDByzUM4Pz+AksMWL1jfXirF
	 2Z4hAGn0qsejLmdqfY80Oh12F26ANXDepASOOt13FRzagZJBI8nmQux1XCvTyR6SxB
	 yK+f2U+wW0TY90bLmZEUvG28q1fcpARiImLE01S7YyRpqpXBjda6mCoblPlL73D/GH
	 x0ieO/J9udqusDhameC+2xBekCg0Vn7IIRMT10bP9EII1ID3y6LCVhgoIS64LjrDU0
	 hc0gZEobU723ppMmpgOt+U2/WCjOqaDxfNM9xTvHRBZj9fangLjf5dzNRFr7szToLK
	 QjG6VXvTI3kvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940ED107BCCA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341969359.2921.5166865315792223465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ed69a7225211a2ec205db9f86da3ed1379a6fba60ad6831e422e243cac5b12
Date: Fri, 13 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773419693
