Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6159E3CF202
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783022314; cv=none; b=GgDJDExS87xth6Nkdtkh0UQdhu6YGz/aC04wFqutZmEx9GyhtaIXnsk7iJuGmRVpiHCjuI/3Wlb5Cdlb+ql7MVl3d7DAbZ14i/ztW71KnWiCO4URZqQ0AlHNJ7qbVxa1zd0mjOKr2CZaiRjXTNIUW/eiR4vwk6xQboIjhFMUbWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783022314; c=relaxed/simple;
	bh=XB2+ZC7JzfVNndg0gfgWs85yb33F+Am0kerBaBLc8Yc=;
	h=To:Subject:From:Message-Id:Date; b=naIS7b/jPPUMOfNAlXcfYEG6DQGwf4EvQkSU1KEAl+P+oj6xtt9fbx9BQVRxBOOXfYSq91BooaE6Q321p0ECCb8q/X4/tdV+xcSIMEf4x1ocAJvEQpaRy+0p3ntZrQVMzX2UYEyyx/MD7xgaL0SC5KtG5sxDQlteYzWFH/31H4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYjBO35T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYjBO35T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE17CC2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783022313;
	bh=XB2+ZC7JzfVNndg0gfgWs85yb33F+Am0kerBaBLc8Yc=;
	h=To:Subject:From:Date:From;
	b=eYjBO35T/gIKpLgPrrz1bgR/k3gjSqgJP4LFLqpIgauuZ04Ei9oK956zn3TdTy664
	 nCkwQpo4JsKPsDimkUEzzf/N1WYPykOUjFXs8RywL5OhqKBFMlOtTWM8//SRwW27xj
	 JSHcPPAMC8CoUitEdn7eCulac1C7GUibDxWY5LQUUuC0JwytYbO9KjyocPVy0fBWmw
	 5N5vSTrdfuoPdWs80mJ3hH71/0HHy+x6i0+uttSFZsWrxVovcRKNOHO3f+O8I/43pH
	 TdXHqZ0hvgpe14Q7JUFKfF9uhxIwjbQ8SQ07a2bt3Gi9dvQsmZORluPggPJlLKLskM
	 hD8dh2mqY0yiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD66C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302231368.13187.3462860903024517817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016f3287a5ea3b681e2ad7137262c6f29d63bdd71e7b6ed6ae62d23d87048b86
Date: Thu, 02 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783022313
