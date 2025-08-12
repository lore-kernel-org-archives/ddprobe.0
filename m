Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF90169AE6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754971794; cv=none; b=mmKM8+JgeC7XauWA9WhBtFRZUwYeiEEGA1TwJjyqlvihILd+Ol+BDbJMyEbAfJTYMFil1fxJHnSbQpKsKAWctzj1WyuOTfVmi/xJO55m8RXltQbA+6AeBgrAIhS+euuJ/ZDq/geVBbIsutmj1vJcTwBqsbfE3tBgxH036cxEssg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754971794; c=relaxed/simple;
	bh=FC+b3smJ/pT3R5tD61Bq88h1gJNvKvgRY8P2WeNZDD4=;
	h=To:Subject:From:Message-Id:Date; b=dZRgiT0xw3xODcYwvO44eLUX6lpExqZCbO2jUfkcxztxjnIoHjK3Ew1k6Cu8Qva0mBtfUzy0TMjot4ilabHQdJe4d1jP5kBtq74zhWvB0eIbWH2vwGuAu7nW7Vf0XvDqNyIsXViNUFccWNLyuT2cqrAkAcljs7UJa79PT2ilat4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXGUo2Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXGUo2Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46ADC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754971793;
	bh=FC+b3smJ/pT3R5tD61Bq88h1gJNvKvgRY8P2WeNZDD4=;
	h=To:Subject:From:Date:From;
	b=EXGUo2HxuVUI+d7tCMx8pZCe0eOgrRRaG5fSWb4QfKZbh2PWlfTwlERfpJtw3X+VH
	 3SfzK2NOWCf1ervPV9JH9cZByCr21vYMmRK8EMRmxTJd3cLCh5AFyUvIn+0tEnBEq5
	 aezChWB29Sy7baabr3ozGar8h4hCgWJnRCedO2U5JghjlX3XJD97M0OZ+x4B4oNBta
	 CKpG6icuTRlajvynCCgcb5TWEkQ33DicNog87j4+E/Z0t9SNZrytMhUxkxCVs2W1Sf
	 OFmClWsKqREI2GNy+GLEs0YAaaU36tsEJ26+19KIimhJT56h6JfoRIOjpz/wuBzb74
	 jYRel8n9xIhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9118AC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497179357.2532.525588111664871064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f4d65398c27d00eef79b43a6d9632e16df8aa55c05c7f955b4f7a628f131b9
Date: Tue, 12 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754971793
