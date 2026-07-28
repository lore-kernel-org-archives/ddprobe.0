Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D564483A5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785249634; cv=none; b=g4l/TFoX2CquQk3KTGRV0PqViPHT3iZVuC/mKFcYCL/YgecYRH6T63+3ATDCfkufvuDDOHtYR2wcDkobMMo4a/82PVGsmlz+SsRLP+8h6BIoCX2YNeRIlR6iKUP9DHD2FgVPMAjBahUBZGyPQHSE4dBy5tymPbIPLiPCuKm1foM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785249634; c=relaxed/simple;
	bh=590Hljngh0ggWqpqiaREmMot2zgDvc46l2GBu2+DV78=;
	h=To:Subject:From:Message-Id:Date; b=RILVmbau5Fjup1t3OL393SAOsSvfmTgv3PpVWg31gd5ohofAw8ySGWbh0GuKVVeSPE0uV9bj+dTbUhEggutEShH0UG44SmDeOi48dNCUzQPoaTg42Mubpfa8DsSbT9v8zXXKnAgf6GHMtgnS5fm2MX9/P69ZIO6xRYG6Oh7rxhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFcxNXiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFcxNXiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B6AC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785249633;
	bh=590Hljngh0ggWqpqiaREmMot2zgDvc46l2GBu2+DV78=;
	h=To:Subject:From:Date:From;
	b=sFcxNXiQdcyvsMYBwvxMVFsAE8vTVoF12t0wFgS1snw//yiibBDRoCdx3J7tSx3In
	 oBlNo6Catf3vZdmX3bRYx/Sr61Tws82v4OYncDLKwgeUQqZY+qT+rNL6qbZEDoOA8H
	 9aiQZ3Z1qe2K0Q3x16iVVIXPnYpWEh3oyj3jVu5JYchmvlDe72FaH4Pty657lIzLWA
	 QSxRydifNM8d/hv0GWAg3Yqqs0Oa9hUIPt18elRlCk9KYS4NtwpkH+y6IHcAuxDo3W
	 2SINpF0h//NckQMa0QnpxOyOlCvhRK6rq75H+ow68iX9EQSl6KFN6kQ+N0ql3mSbyS
	 lxBvaUb6nzuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EBFC54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524963371.15050.17906341268054273280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177d83581750a96c91c151e868d3174a07c19edaff77bdd503654454fc3389c5
Date: Tue, 28 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785249633
