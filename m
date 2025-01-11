Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CC1BA4A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736577354; cv=none; b=ubkpDW0zdSSVB5B5eXoHYWJzF3JjQqAJoEpfYopEJZLU6U4tgDlcDNNS2XWWKtnlyTXB5jzIB7GGk1jZK+rJrbpILnKnp8Hnm8WM4Gapva0Akstl6TcxYeF0ERNo/6UbAXS0DKk77lJ0yjDKROCSlnBH1nWfGaYcBimDCnyfhO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736577354; c=relaxed/simple;
	bh=pOBs42W4b1Pfco9zACybaFGuiHnS46C6oQ3x/Wr/wA0=;
	h=To:Subject:From:Message-Id:Date; b=WXeFiLY2VySCsgb4jEZ9PB7gtQvC1L0jOgPmepGKOQbzNHWnQjmb9vQYvhZUTKiYhbY+M2ku8fZidtFKqriUVQ2Egy162GCpKZ3WVRC+iAJ+4ygRBXzy4m2ofWfqIHaMmWhG9+4shrHTAWXFC7l38RrGx+S0QjSBDte/n7fXNNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyUQjV87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyUQjV87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD267C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736577353;
	bh=pOBs42W4b1Pfco9zACybaFGuiHnS46C6oQ3x/Wr/wA0=;
	h=To:Subject:From:Date:From;
	b=MyUQjV87jllrpe0Q9pSjScR4gQhUgAEGBL1XgCKhCe0npb0DEbuP9AlQFjMv0twp3
	 CGIuJnAbTEDxZ6ce6p7buW1kwd8APN+IbCt8m9Y0bAG9QpNRHZxp8oMBwqsa4bx+J5
	 TcJBia55CocaX2rdTMPPkDejqdfS3bnAZu3aU5UT9a1mXAOOdBJOWs1v/ZGsJ/dZ/o
	 I1CSKzx8Idmgsghd+YUIcS0DdGJPdjaohXrPk8e6vg25ODH9Q8j2MkBh0jADa/9Tnp
	 t0ybBvLxnn4R5CfOXwXi7d+q2HCGer7oSJylgaKzdcMaIfvysK0WZMILv1iO24Q8HN
	 xbI397BH6PvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95378E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657735359.23981.7303089676533952703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1aaff23e10752db7c19288a1e86d0cf00ca27caa3f0482c2bc57a415e9e5a44
Date: Sat, 11 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736577353
