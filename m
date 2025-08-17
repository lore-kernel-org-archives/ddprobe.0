Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225471E0083
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755458994; cv=none; b=jY+Wxc2jBKaN8Q20R9gIjL1VtY7VejzRJqJGtiCNBIjrCu9bv+JXf38HP9vmDvAPzDOdHpuXoi0axWOyKvionBTsy3+f79BROO7T5Ro/6hmQuwnb6dmzbRAFxfdT0SbkhgK+phiebosMFyai/8XqTRgOdIaLfeIxgq3Q6zNSaSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755458994; c=relaxed/simple;
	bh=RSuI0ypXSpMWOyQfwkH0WR9Wec1H+0NKJqj5BvUugnY=;
	h=To:Subject:From:Message-Id:Date; b=s2r+050SpFD/qg2KzEfqnfduDMo7UFLJBEkmsSxD5VV3aUExvO35+gXcsuxDwiJQo77oBDO2IZZGa3O2m5MZu5W7++0FD8STjU1jlr0/a+FmkfdxdCHXUZ4BbRAaH7xu2fdkvGtsVLWFUV44GHgTfS1GpiZq4uOxjrlNVUgh1GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrqrd5kX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrqrd5kX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1904C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755458993;
	bh=RSuI0ypXSpMWOyQfwkH0WR9Wec1H+0NKJqj5BvUugnY=;
	h=To:Subject:From:Date:From;
	b=jrqrd5kXCG2ZyqBlIZOrnOqbPjMY5jki9ey9R7mhKsMpBG9mFuhdXUsmz8Nt4ES2e
	 7ssW1WL3PMprW/BAPOQQMqRjfCim+sgInfpeLyOmK9QyNrWqltvzU3L+HGfpZUrYAM
	 QkYnCdypRc4VYjgMpZY0UYPedBUfyqmjoU/pE9k+m9+i0ebwprS0m6H5yUvkqCvTEy
	 5NrQSPnm8jodKePHgPSL9X0cnJgYQSNsATG7i1JXU3D1GwJ1L4mPVk7tIxoI8ZInKj
	 FgI73VCyArItumFfyj104LEtKNEGwISmTerGGym8aVavu6z6r9u5dwy/zjy/HEcxSm
	 IovKwK0hqe0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE8CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545899358.23469.2977218969804011823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ea822cf53b56760a0addb3f45826841e9998ee5d4f687d39d14e961a8aa0fb
Date: Sun, 17 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755458993
