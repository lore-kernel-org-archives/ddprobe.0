Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45270293C4E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783784314; cv=none; b=PpYVuvvJ28I8PmgN6BvK/VfdGN4Gb0ZEMsIU+L4VKFBy30GoXXqd8i8haHHNaBR6T5plF+C3SCf7XvgRu0FQntc/ol8aee/HwhS0uttPMXmV0+MUv7eUH+1b71u3yJ0K3oR145a2Uvr6eE7JJPrTxSOvLB1/2haNmHnvJuFBG5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783784314; c=relaxed/simple;
	bh=PHm6WZARhhTigBCdGSnDrMOULyFPeZsC89TgSMxQ+gg=;
	h=To:Subject:From:Message-Id:Date; b=DX2DY0kjiSGXO496e9mhtj9qiggu8OiEJRlOJmcADjhuxNA2W87YhUOJY4qbbtyx1tJG3DpxBFhsNo+AK4dGgqCh2W37nYgQYUsXjj54Mlv44iQYupt5FjT7AE9LmEvb4dHYUlBFdt5i1u27V1yomVGDxee4485Ra+XOOcvKgAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQcek40o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQcek40o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB02C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783784313;
	bh=PHm6WZARhhTigBCdGSnDrMOULyFPeZsC89TgSMxQ+gg=;
	h=To:Subject:From:Date:From;
	b=kQcek40oM/o/FwliC8Ah11UksjHp8V/cCnfaBx884uXBu+jubiCUpwCgTrG9RPzJP
	 G117Ut27sYoOCxEPtjVP/8Vl5f9gKwxTrW1G6IzWO9ktvflT7XKL1r5tQdAXgkqOoi
	 aGj74jzhSy4u3O9n0qyjWq4xqDLHTpuUgSSzcyUR6nXs5DI+wU+EoFbkZSEwCMnh/Y
	 rf/Rlg/hUJO5FXm0RF88GQ/JopULvZbKBt7tmM8/3sa/PhfhLiRBd2XWwtS1rO26zU
	 XM+dM2E8eGuBwa1TpM4v7wg1kPiNB37G9IER2n54lCaeOhGAdBoknpxRvjT6gtaL+Q
	 Kh7DXf6g5uo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3ACC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378431368.28070.14009044764911473197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0581734f2727792211e27b3afff76b4ca8fd2b63f4b7506737331cb4e653c989
Date: Sat, 11 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783784313
