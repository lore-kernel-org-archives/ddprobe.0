Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2492DC789
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782344854; cv=none; b=LplPHr+GOiDNhBShc0qwAKCUhvRKhCyHlmCiPOstNhr9VFBxxJ34qPTKSBzob1hCUBtnEk2g7PkrfmdSjotxxGX7ITGYQixkTBKhaGn8TV1j5g5Uawyyc0jmScAXLMK5Iyfoqq0aWJM2xNR4+CLz1roclMc0gs3dUVyVwQkTzHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782344854; c=relaxed/simple;
	bh=d0Oc32SvV1uxn0Djymrh0u8RW+JBbIgINn2IYnALE0U=;
	h=To:Subject:From:Message-Id:Date; b=QAf35nnyN0OeM84RXycka0/HFrAvaYGtNK9iIgVXuKcFclP5UDyVsUOJaWQ2Hk5KgQFcseamJujzXdfJUkRAO1lRtd9fYxHxHHh6mlwQfiyS2s7sQbXyBioYd/yyao9mp2kKa2PsAuZk4/wkLrbpVW1BvpbpWMsVcyIZI5NaYm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKp4RVI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKp4RVI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D03C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782344853;
	bh=d0Oc32SvV1uxn0Djymrh0u8RW+JBbIgINn2IYnALE0U=;
	h=To:Subject:From:Date:From;
	b=RKp4RVI1HNrePzB9gG3cLx1qhQN31ungh4iDWIofLVuyvoVJTIRl7Nu6K8qfSIlnq
	 oVPIIaCxEkDRY8Sa0hE1WYHby1SFuFRGIhsCzYhME/dlWEeQne/gQe+iCB9wsP0Pz5
	 4aqJeKVhCcz+69Mdu9683ugoBTRu2Lsg2ESxAnVzNyiDzgp5EnlH4xpA/8HdEK5TfY
	 xQJIA/7rGoHiN37rIK2dG+S5+6lGvTY7B+nV4qIksKed1vTcfyJo7Rt0G8VIL8gtRl
	 JI1i/soA4SCllqaD8+X5mDSiC8vDi6m0iQTBFtvP5Mtd95JOKq/nHKrg1BbdIe6rkr
	 JyZk7Ls8K/IIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AA0CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234485371.8317.15085158908638318383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d040bb80b076839f6082732d4c566d549a98c776f8a6f88a111048c32c16838e
Date: Wed, 24 Jun 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782344853
