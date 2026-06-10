Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C0230676E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781078734; cv=none; b=IYxDdYDr2g8JLGPgAxuKyxp8eGL60uV8HV1Qs9zpwCfgV/JtAALN5sceCQaBzXLc1pCV6TX6S8m8B12BgzD5jGVGFA2ld8KadpaxX0GJOO/85KslOO+fY3nfWbb8Og0l8KVetX51+2XUb+Z8QrjgypY7OjqVCVD+KM/WcUed6VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781078734; c=relaxed/simple;
	bh=UfMLNzNoXyU9xMtBKHyKKyPtCveCUPIEKa0Bjj/QdJk=;
	h=To:Subject:From:Message-Id:Date; b=gZH5JDaxA/bTctCcZLWT4akCgwKeMPiEgEQO5VsWetBshiApGSwwNGQEVTo75r4C5HF1VvOapMAkoPreIHQobAcjkuHv/KWOy/ib7zvpTJRhGbOfA0s9YhDG5+f0iRIwDGcdafajmyBdnYmY08Emz6TUUfzaRQEsucqD2FG/P7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnWRh7av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnWRh7av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5DAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781078733;
	bh=UfMLNzNoXyU9xMtBKHyKKyPtCveCUPIEKa0Bjj/QdJk=;
	h=To:Subject:From:Date:From;
	b=TnWRh7avqmTL1HtvFB3mmDa64qvq/GDh/MaM1jMKoNwTC+7dM6KKZ44eL6+ai7Z2h
	 +ytQIWf/AUDL5fWEHCnWd6EIwKtDrwYLtT9QK0pobt8pmK72uXJ/ULPHZJHIWgJo6s
	 i9PUncxE00vuXfp2ZUvEl0oj4fHGcwbrc/lEil9VBNp7fwc9zkbknzEnoC63jKLLne
	 Uo73PiAoygA0I1PdoUHeFVubvSorEBoM78UgsobexTTzQQ5TQTx59r12AvxlqIwLHZ
	 OUVqh+ZdxfxXlgGs2YVPv7XKWbUOUTqXUl3fCbZNl5gvrPE7Zd0IKs9OEHuKOgGtCS
	 QHMAC6TyvSExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0ACD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107873368.7967.10119815161977166415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7aa94d5f4d5ec64db0e46284493454a99ec7a2d3f85d40c94ff45e497cda12
Date: Wed, 10 Jun 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781078733
