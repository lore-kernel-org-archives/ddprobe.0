Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7E017C21B
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747847394; cv=none; b=K6Gt8MfDfDXIztL/HaU5opWLERL1JJN4SQeiA3o3u61s7Yju2t0GH4meM7vVroimXXIqujg5Vy+pZ0yFijTn2RJjWQF+GQHE34E53Ga4k8jSu06i0u3w/wNKtkJu6l7wq5KAWSAIitI4ym9DUw6xjYb4bBMC5C5ve3H3rehOTlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747847394; c=relaxed/simple;
	bh=eUp8uwK1uHcaFj+efJjt4KhVMF6R8GxC7Op/1POL+2k=;
	h=To:Subject:From:Message-Id:Date; b=I0ApEdgO+DAdIHzNUko7vOrubqVjL5qy60xk8jVUApfJjxVCHrdxUSG8ydWPYmPvo4QOL5r84hquRF8houSZjRkcfyDcTCMzKQACcA+As2mhPlUjfwDsjBsD6YJHG1qVCqslkC3dqVhGztA/+4D0DRvtGRRk0wN45hKPTHS6ixk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3zPYKv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3zPYKv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ADBC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747847393;
	bh=eUp8uwK1uHcaFj+efJjt4KhVMF6R8GxC7Op/1POL+2k=;
	h=To:Subject:From:Date:From;
	b=G3zPYKv8ke4CMdD91PQ19h/JVsAIRA7rOzy0gb+QfkNyfiRwLHpcigCC5b5OMI/g/
	 dIBCXxw8/m6Ips8BRqv3sa35puX/rMit+fnrhqqxC6CtXEIbok954GcxcXp9+7N1oe
	 qhxNTZAAgROd981ZVxPtedcJ6WffaaxzbE6OMcU/9HV0uyCAmH1XKtzXYeYDTDZYyN
	 64xosR5znmP00mF9QjyH+AYi0BsSS82WayVUxsvwexqUSWd56Q0/jOkwYTv9JZfqaI
	 KOEBACXlusTxcNTrwtfka8eaeaCO5aPoonDmpleT0oEblBCQMf1ZLjhwMdazTQZw3J
	 gVp9j+LfH4Zuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247CC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784739357.2668.434147118247135708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5a9cbee30ab8e50c56925b8031d06305997a5c96ab80518231aecb7027197d
Date: Wed, 21 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747847393
