Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55D81D0DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727878553; cv=none; b=i6Zq2gyBM/iZsCyJEIH7UHpgyQghSRnrIFCCQRSJuuO3JIlWL97ixw2rS8wNn50neLPMZod88WmRaOQIGpBjahT8Xm4KALw1m1fJJZMpoCvSEojXTi5d5NZn9fnTLvLfvfNqvWS6w+FVzklU4x9s7r15jJcdOu5fvL7iqe1H2sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727878553; c=relaxed/simple;
	bh=nm1DCxYsxAmRftWtcrXEn+PFo3JYB7DirSHlSZV/eyU=;
	h=To:Subject:From:Message-Id:Date; b=Kl0gTLwE5SU7iLAB2GD6JRS4NyDeU425jt9l9JmDntdYfvHzwWUVXvATzYZ5PxfvsYACk85XMlAelvJUVtZq4D3HdSsyJ/sKB10s0I+VZN9YpOajT1cVN7kMx97uIPsI7RQ1Vq+iUSLxlyIP4awfHSijFhLZBZ+WUoMynRHK6zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAG1gm9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAG1gm9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266CC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727878553;
	bh=nm1DCxYsxAmRftWtcrXEn+PFo3JYB7DirSHlSZV/eyU=;
	h=To:Subject:From:Date:From;
	b=PAG1gm9cyMT9jvh+XfwYdfGixmNYW2T92sEVS69ZjHwtH+nsafE0/AZN2XPvNwkui
	 BVsPKGvvlRUY7nhGsrr0Pn0EgpdwwgDp+x0ecjtscOvwj39azqjdJiH3iTKdrQ+/xV
	 yENAIjWtZAhpLF57ntroS9zTSCd+5Zx/IGdCtF3HY1tuuDQWf6/CzItWTjdogmkbja
	 KRlYK9tFAzq15SMCAfjXY89mXahpBmZQh3GT/JUR7myItFX1XJ90mwkcMKk5esa5do
	 UpdZcvdy9XQ1BTnaSPQfn6WvxpuqlhMLn7uuOJCO991EzdTvhi9RvpEO9dfW+VVaEI
	 0yGP/ThrJ3VrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D6CF6D2C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787855358.19259.12559165562104045243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81bc9a1a89a94fff98a6fbccf9fa868204578eeb53207216b1b6debdf2486e1
Date: Wed, 02 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727878553
