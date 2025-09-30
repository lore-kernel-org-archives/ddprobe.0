Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7B7221FCF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759233594; cv=none; b=nL4x2vkoX/qdLAl7a7zJksFGLVfrMGcuPA7h4Ke+1Nr4uKRonMVl3r2urXncGJzDCODkx8NQHys/GGiIQIgQZsQrPovOt4GKJqFTskM+JGnKatIjAQxNp9kuHnAU1eFjyC6U5HGWv7w36+Kt3q1PdJkxamEXsDhgY5jjeD4/mYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759233594; c=relaxed/simple;
	bh=edzVSnd8/Hv8uaR1d3/1w0DLn/p1xLMMrvHCYM8bR3M=;
	h=To:Subject:From:Message-Id:Date; b=DF1HDQMy4euzrHGa7kZ2Ybo3NsJTdF0YCShajCAQ1nyttx/7U06K3rr8ldhlTcBnHOKEsa8jUkbXzZijUZ0nsSdapG8rVs6hsMd1k1wCdjLzYobKvgTAcssbr41taOS8qTQiJ2SdkJcLnXD59B6vcAel60vQNds+mhp8GX973VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMzD2ilZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMzD2ilZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B85C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759233593;
	bh=edzVSnd8/Hv8uaR1d3/1w0DLn/p1xLMMrvHCYM8bR3M=;
	h=To:Subject:From:Date:From;
	b=ZMzD2ilZAytUjDtAYzH8e7Bcuuj33RaUnDZR8mSjtFc0BKjC6EWFcGLawNAGYJQ6w
	 HU57bhKyB4QKEe73H9v3mbalev8ZYJIJoT7ONq5yRZR90P4W4kMNYWaGIIhD+Vlzl8
	 Si/YqrhfQceAnoT6L8RY57tZWKlkfmmqDBbfOuqCPeOms+ovp5T08aqKizAvxgZVnE
	 U5OFqNiSiEqJpJrXzotW7P9hyWEH4qNpr/dJ2IHUoNaURfLrYL8OUaCm3TBBLVJ3wZ
	 7C5vlPQpEvjKbe2144uoAoRk37D3AQP+BqegM/EutkLlQbmYnWPwHe2PsZEbB9c4SR
	 tgUiILKUwUR0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE67CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923359357.5264.1452300238234620211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad64b96fddb10e0594973be4cf12d7f527ec18e0bf04c1eea774a01a3f4819f
Date: Tue, 30 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759233593
