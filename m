Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBBF17BB6
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746934795; cv=none; b=HW0GW+i4CLTzuq3xHfLN+Yp64mM3YOLoQid250SB+XpReVsTm3LbLAeUL+VrjrguL1S5w4+iBbIPW13WSIsxvGt10U+gvlAnSD/9ClmYehlbdbZK6fuaNhD8EiO4Csp4MJnInRvofLllMp+Uz7loZU7wkvSs6/UdbCf9uYaSgfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746934795; c=relaxed/simple;
	bh=TklXyQgIwYANT/MVpLslQ3LRoH2n9yiaas59W73h5P0=;
	h=To:Subject:From:Message-Id:Date; b=TS5ocM89JBOA37CtlZL7a1+7RSMTfoVwBeNCXTG+pxaY8NfR+sgss3sXuvP2WqnBgGC/9pXDjcFvTuUZpoyDPQc9UAmENtwxrmWSRFOfBcCR8+x5Cyh71qQmmQ+V0tHpe1MxNjvg1dZlgczGwJyHUQJ9ZA16zZ84iaTGpE5IwXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riHULQw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riHULQw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A71C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746934793;
	bh=TklXyQgIwYANT/MVpLslQ3LRoH2n9yiaas59W73h5P0=;
	h=To:Subject:From:Date:From;
	b=riHULQw26ZL6V0Wp2D9vpUUpXSOFqsqQCy1kdEnHxomVcy5mufKmo1XJfZkfGiFUY
	 q7Dpf1kXMOw7ULQI1Ldd0Mnq9OKoOcCGK0JwLM0rzFUMVkpfKt+nP41V26ZW2GRZII
	 fWCgStayEzc3q1To/w25cEjYdSMbkbj2g5ZHtOoJQGVapE4ecDd7c2WogAUuhHIA0m
	 JwFPhp0bHaC9fagjkme46C+6vTjzup4Jfr71IcEHBHlChor50A4AvYaGvbH9xrR+ML
	 gQ9IrxeUkq5/RE2lAwk+t9/EP8fujc0wdBneSjO0xRJOy9B+Mt56aRlp09mjfCTIV7
	 8oILQWbwsyfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E0C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693479357.31705.11185897881169410250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045f7210915ecfc8a1e7e7ff832d4d225cf047075c115d69060b0b87c205a6fa
Date: Sun, 11 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746934793
