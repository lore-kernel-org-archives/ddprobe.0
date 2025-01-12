Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4182CAB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736712354; cv=none; b=CL6SoZV9b8me+wSXmDUDpjzmr1eqzY2L/h9YJWaFKD91DCssl0I19UZNBaOY0V0jkr7+g2O+Wa+ZMO6uEW8Uobndqrz98z9DTU9HG/ur8CaJzKZo7dc/LyhU2dY6OU9PK97Bv+qMGeZGpB3H8vuN/dnQ8H/lNkkV6G7ZI7iCQm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736712354; c=relaxed/simple;
	bh=puKGh1BEBzhxzOuxA42bo5QnhCA8Q5HXNkFTorkHggk=;
	h=To:Subject:From:Message-Id:Date; b=HeMfmnvpdaE/m3huOhTvNSjXZE1C1E3xW4XyDOf3Vy0SadZWaxEqpbYuDB1SQXxFbzI/xiwPT0yA96YCFEpgEm+PedsA93kdST+zI29IyzlPy1dPcyMNKKFj5LVSjuTGsnCxiDOUj+lw7dnZVPHiMA5CebTd3tzDoFKFS2PErTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmxeufo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmxeufo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E6C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736712353;
	bh=puKGh1BEBzhxzOuxA42bo5QnhCA8Q5HXNkFTorkHggk=;
	h=To:Subject:From:Date:From;
	b=rmxeufo1ga4z1AN2qKgqygDwdMwLxDVgjPJKfg64zxAWWHBkS7gHdKL3CC2zf1QjU
	 zpy2m1r+dTEuDttfmDMe+9LdhADJfzwJTWGO8vnsQstsClR0zyZ/MRSYfYfwttk1JJ
	 /NLrNa0ASTGw6Amh0Z6FGxWucfIXhZwV9+m1CE/hlsOcv+HNh/5sA2Cl667JyqPhOc
	 bcStVw/wJ9Xlg+oOALypSKA2RR5IAkWgGtm37lIFwhv7agBW+hhXhfveThh/qDEpf1
	 xgDJeRad8DUVnVNnIEDiNZQdpLdvpQZIPooKwUCPENPqfbexz0ixaNOb9d4CZ+XGL+
	 6Kl4sVts4kPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91908E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671235357.24055.2135290764112249055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d97d2abe008e76c16641b0b73feaf482be1a84b23df32d07efa1c71d4c653b
Date: Sun, 12 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736712353
