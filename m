Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E83B2D9EF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752622794; cv=none; b=g8XrG5da18OXf+FfIRd//b8ztbTiJ7aMscr7W7F87oRv5qEMGnDOd6bSxoF3dlW+x9+Q71pWWxcIpVB+12+ZhqrwKWgY+bNfzBenjVn9QRBZsRUKb1eOrXXmCLg5OXdClXp46vt6YIIImwKa4lD1GmloiD+xu/VBpTKbeKuvLiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752622794; c=relaxed/simple;
	bh=k0nESQsYhsa2RNYTLLNo0hLH0W2qIlxrWnEdJkrFCwM=;
	h=To:Subject:From:Message-Id:Date; b=cdCEjg/V+2lLQCAIghPtxDdgyrKBio55Ig+iISNeB/AUhqIYPVGfyH2WemGXVBuoPL9aWlWCTU1Jndjx19pUMCnqPgef9wGgxM5pBcR790XJO27DyZTKdW3iC2nldA6cKEuPEosU09sPaIW19jSoX8L3FbVCYg6o2ld31AGeqhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLWLgyXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLWLgyXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D282C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752622793;
	bh=k0nESQsYhsa2RNYTLLNo0hLH0W2qIlxrWnEdJkrFCwM=;
	h=To:Subject:From:Date:From;
	b=RLWLgyXiNQTv0WiuPBVVDKJQGkKN0lpS2/s6VwY3FSvEa2HxpN2bYCZ95BqJFKzNM
	 AR08h4GA1/AGWhI5i4ib7QgQulLIAoIjx4EHNjjN/l6wE08pubBVYH+jcH8seI2Ort
	 4YVKhk33oEbGUn+efVWGVfqbLGfvjJsHHFDwJNTPxOhOgzsNElpFMpA165ZVugUopc
	 lxwkmGK3EbvXVKclAve3MlxcF52gRGVmBd+efvsHNqZuoa2eXsaOMLSCB8yfKXWNNu
	 2lU91K5Sn5iYn4gnuYJbo2kFpS5BIwF7FCGpnGCd0OjtoGviMzEvMeDaP8cRkBJQpZ
	 LHpP+86zhjFGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C0C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262279358.6234.8441063037154473607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7dc9a9f18064dd7ae8144a4ceb390c326322d8ecf5ac5b0029800be27c676b
Date: Tue, 15 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752622793
