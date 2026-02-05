Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041A2356A2C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281634; cv=none; b=afhu7aGmn99iYMJWTFofdHb00HsiThSDOroGUZ16bnUQaH5czpt69N2z9FmVATM/vVVNsnrcIqMvSjxGmWuvU34eqB5VEIuPKlu/LTzo9ICtxqjpdhouH4kTp4KOP2C7TehCQC9MuEZuBHZYV2fESwHO1uXzdmXBhh6SW7uonCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281634; c=relaxed/simple;
	bh=s+WOGi7t8CTu+3ltsKzdEHeF3Eq3DE5wTVfPsFjFfao=;
	h=To:Subject:From:Message-Id:Date; b=mjgE/U/PMFnEhHYlie2AGyD4WfRjZmNK1FkDSdttVOgXVo2z6w+VtKWpVbj0azBgGuf1U8P89HDc4/CdtBfE4GoW+Hw6S0UI1ARjBpNUhtvU8WogMaw06tEYP9rna0LGE+9Hs2vy6Qp7gVs4MJFGNciNCupOYzhtOEbR/Tgv/bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmwqQI6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmwqQI6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E3C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770281633;
	bh=s+WOGi7t8CTu+3ltsKzdEHeF3Eq3DE5wTVfPsFjFfao=;
	h=To:Subject:From:Date:From;
	b=hmwqQI6kn5waoJHZaiTp+8gNw++Aoevz3ZlSoeCNbjL7llkP7LFae7CZt2eQ2t0W8
	 UPhGsgjpe7GuLlQsDXA8gGqmboaWW7qRcAl2HrJv4KACaAmvURetl+hNAL0UsrjTT6
	 GvUa9O2w9ISYEStkeTL2ZftFOZ3odkakIrVtASUPOTLxxsHEEH8/n8PWLEbwgnkCUU
	 Zipm/377gFQEH17dmYJEIUGZfX9cCC9ewB+8PuZOb7eNDtVS+V4e9BxQgHCuFGnKdH
	 EkAb8Khcu+jHHbvUaB7vT8NmFFtDMZqgBlxFfvEXTHiYwXZ5A/zBWoylNb/Ax+XE4u
	 OHLmhdDSPEWlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3CE91297
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028163359.15344.10743937070764870906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797d98a16490f3b7b4d215096496f454f89f7f44b018586eef055e901882ca22
Date: Thu, 05 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770281633
