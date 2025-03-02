Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A51B0406
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740944934; cv=none; b=ncvdX8eTIptSuC4GqU0uwYBpcGOBizTkarKn57bL9rZAuL3qqHlBWfFlAbxfrcX4csCDBu5BN7FZSPuiW7M2mtX+0viwL6I74wukJi9ovIymJvY2P+NnWQzO/Nr009zxsKdafSGan4EWEm2Aqa8CICRWBYl4b2175w1V76VCGrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740944934; c=relaxed/simple;
	bh=Ag0U393czBZr8+cPjaEhKaysjvOxMkkTqpkmrNsHBH8=;
	h=To:Subject:From:Message-Id:Date; b=unDi4fDrN+nhEzjTy+SHwpsHXngzq7kvP1oCDaJz7JxM+Gn1OGCDqnyOs/hDKRiwJeupQHPMsM97p1nqOJFJTaq+fz7Kipmi6Bi91RLcxcKCooXIjxRJ7Law0oAo2DlEpamV8aHRPFt8Mk3iD5G++ogHBtBgqmLsQupfxiba0Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZlriq/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZlriq/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDF9C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740944933;
	bh=Ag0U393czBZr8+cPjaEhKaysjvOxMkkTqpkmrNsHBH8=;
	h=To:Subject:From:Date:From;
	b=IZlriq/REJFL7FcVHUJIF96qdN0jAVwE2TJ04n8SXpKn9XZI8Ps58NUiwPSy6JnDT
	 TYowULYU85tk8upN77mqSw8xW4eK9RAJgSmoUhKOd4/7XLHkihno+T9Xpw5uGvNed4
	 3B2tC7y4mF3/8cCuUkD0tCN6I2KwwQKKNLo2gBuVWBI5h3xn+Woewj/pVqlYuINlex
	 +441qNZ8KM83bks2B2EcbBNhWYfylogtMR9InQuEat37rt5hfnGuccxQdaD2wvAc4d
	 8FBOFwi6KYwfeJpxN5N9Jcooc6muiYzCdyVgbgRRsb/qE7PDjWoVq+m3bMkribqTuV
	 7wJ6Gu31P0BFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96791C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094493358.24834.14742696427302283468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15d4a59436a27f7ecc17d63ad511e37d06eb0835417fe8c3fc6510a74c47a60
Date: Sun, 02 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740944933
