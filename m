Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184A9846F
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768592634; cv=none; b=bxG5JXZh3tdwDu97ElSV/PlcnLxgYcxcDl1tH+aGPDBsNNCjoLaF2ggvz1o14N3CHwwn3o68dR543rjWPHDHFuqq2bMu4VD/utpjJHaUZmxkrlsjHH564MENsIZpfiTiGSWp9A3AtpVGQALGp2im1Vba+8/CUXm+s4Hoo9UIDXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768592634; c=relaxed/simple;
	bh=AG1x0ZwWWKka+0xKp7ChCG/qQ4mCGjQ8JEyMYAL5lGk=;
	h=To:Subject:From:Message-Id:Date; b=tU29mvr91bqfsoef8+a7Fox+6969TEHB/ItMphCvG9vdwLEQE1OnM72C7NQFg9iXwjdKrMnCl/JjkKmTC4krZU9QjKdpiHNRrfstWwd5xdPg+e2pqVIX1joDSPjRQmj8Km7FHzdgQffwuR9gdZUvNY8HL6oymdo2ZiA4tuRV7+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSTEVLfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSTEVLfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768592633;
	bh=AG1x0ZwWWKka+0xKp7ChCG/qQ4mCGjQ8JEyMYAL5lGk=;
	h=To:Subject:From:Date:From;
	b=gSTEVLfCYqSz0KtNU/7BUtFxWPrQYv8nHvV5ApodidXSF0OQCHnJ9Pts+xAImMV64
	 rsoB5156Jn7XWXoigkZcpAB6qo2A/omVP5WrnHN1weXZaJVkb8v83BpTPRz6C2iaEl
	 fvUDeiRqL0ugzwepqZlwFvT6mbhSWcx/MIsoZqub+lOaEffsKeT7I6AmvAZL022c+I
	 xNFnXCEDSXCuzYcgeL3REVtnpYlsTOshhTCwFDqpYwBc87ORvKPs+75DU4VVfzCkPe
	 724vgbi1n0ifRW+ItzoMFXSIYJQfiPHBu3xhqxpmCfv1aPPxt+NHqhuEWYnpQ0BFsJ
	 MXgZTKrDETz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F997C98300
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859263358.17101.18080019544284940667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dee90bf0cf873cdb9bc28048a985ce9979cc1c9de2e56441786866a053dd36
Date: Fri, 16 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768592633
