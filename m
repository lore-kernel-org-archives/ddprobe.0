Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7928462
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775981854; cv=none; b=cCbycI40xrnwSN4mlByJ7ivnYAWNAt+3D/o+5ymMvHtHJan6IDrdIeIHne6Aj64c+flAjusnBNvK8dc1kdKMs1he4rrV766YSeRzeXTYXLUyH5LlDUhVwhEmYKlx06tsRxWJ09sk/6Io7pTVtne1E8AB4r6SKmDEgbVHkJjb3HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775981854; c=relaxed/simple;
	bh=77Gs2mr/ArLAzLSO88tZtVkQ/hpos6QJeEPLlw7OueM=;
	h=To:Subject:From:Message-Id:Date; b=EJiAO+t3ullR3S8Xrg3q8i10fJHwytWD3OjsnFZ/ElJ7E0Es3fB1bxg1ozhyfuoxC7HDCcDP8JuHoOrp0tSVZOlwO4on21qPON/ahV/xlDYHPawyJBI1xXVfgAFgqlyE8Uf4EiVphH/tvCFYwsIeUGNIrUeRduyUez05e23Q6c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmstMfwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmstMfwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C160DC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775981853;
	bh=77Gs2mr/ArLAzLSO88tZtVkQ/hpos6QJeEPLlw7OueM=;
	h=To:Subject:From:Date:From;
	b=DmstMfwJnW8cxGRjuGFGJudW7S9zzAc6wF3V5j2F/xJxOKFBBc/J1cnliH201DOBZ
	 EuSeq3CkuLIcqQQGL1DF8mQAYnEBP/fPwdh61EsgJcKgFWlHRvjtAJrNuLFmnswHJQ
	 1ndGxAEQILHuUk/AOv8SeNrgbN9STz/7/6YUZ/qavDmOgNu02cvRY7/qR2l/5t0h4h
	 hp1ptgFYV6C26jLZf6ctzlNf+m8PDDWmrSbAEQETjZjxMwWr3g7vbI1vM/kwp4+CFE
	 o/hGs0U9BGh8bB9dK8wqbbLK7cqJEzvLKVaAqdnRuzbPKPcnEvUvYOrtyORFh9WaTp
	 8VMy9GXZ26Nyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF92FF3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598185368.11913.9180214451663112377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7219448216eb5aec1d76aa276f0332ff341ad853a0d618865121ef8af765bebc
Date: Sun, 12 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775981853
