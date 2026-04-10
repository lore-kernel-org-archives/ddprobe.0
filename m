Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8B328F935
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775823454; cv=none; b=fQdFn9eHkd4e+1VVQfTm+uZEattBmDwZaL34eTLc+oo+zuvIuZ8cH80oGo2pjaRbKXmWSJTKwcaWaskn4vrZZzHcAFmiMbUiINYwKrd/cwBVE6+SOmwP0wSQRAG+eDpF99HF0N/KKs9UM8pkoEa7CWGeAfjJviZeJSgreTwxzHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775823454; c=relaxed/simple;
	bh=vQXHzNmFul57BBVFxr3hUzYQ2+3JKeGlahzapMxMK5g=;
	h=To:Subject:From:Message-Id:Date; b=qKRtkGwldcWF+y5z9SfqPXGIFbDASneQgUzkb8E+1tFc+5x7NTYDFHakQJ+pNPUTFogwwiNj3zbPpC6zApWzzeM1OontBKWOnTUumC1h8NFOa64zJB5r4FjdgVAnQjPcbqzlBuSUZO1IG2Vjk7ZqNzsPLkTfF6qi1dpRmt/dvX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwfnkc4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwfnkc4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA334C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775823453;
	bh=vQXHzNmFul57BBVFxr3hUzYQ2+3JKeGlahzapMxMK5g=;
	h=To:Subject:From:Date:From;
	b=kwfnkc4hHnZ+ZwkBNKCfHJiHj2KGltfgIIipUpUpFZ/5+BbPFH464NUXzRoYodtUv
	 VsPPXy8udUsqf3w9+z166wuITuD1aV0Le4BzefRh7HfX/JjtWEPLQonQCki7QX0M7C
	 3v8En64rU9chx9k2MKQYT+TGLJ/HwMXDQ+DeRzveqVzls5XL2Dmz6OmewBzc/wP5Ii
	 5yLs/F8vStWSFEYpL2q85UqGUMbgjSsdGSp3xvDtRm2BDF1xphsJkkaM7SJAt7XhZB
	 R82UzB6xjs2tu9qeevusGONZ+hLOwSFgxpNsxloooKUGx5NLmONH7rTT25w3KRjJIF
	 vM25P0yRXZT6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED9F44847
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582345368.20607.4287957318648394933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6c518d9a4e77c0d862feca5071d69f5a34ff4ac1da031a448f44cf0d4e7b52
Date: Fri, 10 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775823453
