Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A181A9FB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761185394; cv=none; b=t9PVN62eb2nrK+g1gTN/G+3acIFJFJyKd5e4/mOG8iKHJCvLohR4j7CXmnj8VhUj9mDEwKG07UQ75qyX2BXPxKoXGlq5AETSSx3SyvbDEy4JukPBncW6chB3qoc4+j+Kx27Q6UF1/8wuaYPox5CJ8PGOJoxK3XskKLyjg6ESzkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761185394; c=relaxed/simple;
	bh=H4Wp1BMSiH3nbpZWZ9hgUJX5TIg0fCUz2zgNpRBRvnA=;
	h=To:Subject:From:Message-Id:Date; b=JZr+u2+Ol7ntzHz7tOq3crM41Zjc7gGdAlHOkLAW4ApcGo6c1Psfc+b6Lk2rCjPPdui9iT7JcLbcWhHHGBRz6XwTHskiQj9y/rEp/+dW0x6Bb/Yfwd5t+2bxdxIOMD8kD7pKCZacx92hk5P8lIVp/Rrc2jc0HZD0DkGBp3Sa9FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpnqsehK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpnqsehK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A737DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761185393;
	bh=H4Wp1BMSiH3nbpZWZ9hgUJX5TIg0fCUz2zgNpRBRvnA=;
	h=To:Subject:From:Date:From;
	b=lpnqsehKOQqR7L+bpv5LJ0B7AfAaJJJXLwpi2BTuUhqVjCp07SunIFBO+RbFx7HPh
	 EKVcxLQrwIOqnf3iFZ2ZIvfPB9y6k2EgJV9vCBwP7DKuahIZO0azhuYNinKL2m6f8M
	 eBfHv3QGb6ZOO5lxEimTIOPBBVDqCjB/GB8Fu5iWHQN7aH/p0JwXDaeMFELEwxpGT8
	 0pz1GHbqtdXxBh+bmxg2G78NN+2dQ75FZuJ/AbLSEUuVtXSqYViwgwgpm7H1e50jxo
	 Eb2YQ4YDoUTjhaKndYHwBa7Xpfyq4DdHypD4oTHHGPjtphbF6EtG3UAR09ta93zYGj
	 GDEPOC+k2sHzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8FCCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118539357.16463.17459622603771897093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6599ecb6fe012031d4d0904ae34a2832d95415bf9dd1dd8a1af576554f4be1
Date: Thu, 23 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761185393
