Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0A3597A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752806394; cv=none; b=nsGKFdZYPxaW8gP6hmxDvjYG8Lya4FgcBnmIRQWYzi/S9A4cu65/if6QehPVXUd703O/6o8mLIY9MskcvmHLbqLQfUoNotZpiVAKOe9t8RuJitpJ2i5fPEVe+MMKR/VSAfDKfU4Xt00rpW3F8l3+TOG0eKdRt1bW1gtJkBQJNM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752806394; c=relaxed/simple;
	bh=GwmJbF6t0vq2O2Kn3yKbxHyo84gf+0eOAQQhPhzaGdA=;
	h=To:Subject:From:Message-Id:Date; b=M29oaPcZcYPKg41j7fZG/He8Nm1iQg8K+YzsFRF34vOi8+IFfYyEqXI+P0he1+xbceiiF+Tl6+nqHAAcd4mDmLJ+EbQvLLx0qGESgF7VK+zK6ZlTP+xYxNZc6Id+/3t74s7y4G8rS0lLj3um/0la8QNnMPU91JbGaGzQUS4/TQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY+sHQZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY+sHQZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A46C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752806393;
	bh=GwmJbF6t0vq2O2Kn3yKbxHyo84gf+0eOAQQhPhzaGdA=;
	h=To:Subject:From:Date:From;
	b=jY+sHQZhEbqhO/yEits5mES4Q1tU1RUWq+LnrFT4Ppw8wN3hYWwjGWOz3/V7lmxj/
	 SVa4vgI3Rwk08jy52dKNnJw+E99O/0sQCQYCbqn2sT+S6mGJGDilr2sEx9m5KsY1LC
	 vJRBwBI5B7X+GoQo0NmiO7XQW3fE518POErNrWZe79tU3bpyqefE8JHgt9J7eQRA3F
	 329Z9GksuEH+v3euxT7M8s+R5XIVBlAHF0s8Lne+FDeSqnJ7PPQiTeWztnONYWcEXc
	 chYAd9PJeehopqa0UB3jPb+MRk8gWVdD6cf28SVmaVnBgM82fjui3/cMlwgay+z18h
	 wzzBXDfZZ+Ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C3C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280639358.25518.7893026714385949072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5767da8f78529491456141ed6c51c91849f4c8c8acdaa190e92fbaec943942
Date: Fri, 18 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752806393
