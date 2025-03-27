Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE6C1805B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743042594; cv=none; b=VoLqha2hPv3/QWMQYVKt7uqMTDM29+okS+ir/uCEl8MMWy9tdppBMmHYkiDA5ncrssvwN4wZbX3xQUolC51O0O0R0+vdt4tlI+agAM0AtjO1bn4TdJlVA/Ea9i8GQ5kJYWVO9UF8oAuDuSEM5LZ1XUuovSV6uQMCFdZCee0SR8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743042594; c=relaxed/simple;
	bh=rSMdxf2aJwi4y5PQzhM4N85t0v5M0josH4G5/Fil5i4=;
	h=To:Subject:From:Message-Id:Date; b=sS2j0aiUQxuChc+h9xB93gEsH5rbx+uDE+R/uM+qK7d6IXhNLkgOmvB+PvhdP7U/JfFNJkCMQM80A0e5yrlnQ/ZvTOhdqwVSZvnZ0Di+vu5a1jK7ikDQrVhtB6CkewIIsQtl/ewMxClwyuckIsjvdsQAMjtLweiJCBknS1Xmxps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzDvmbUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzDvmbUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF83C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743042593;
	bh=rSMdxf2aJwi4y5PQzhM4N85t0v5M0josH4G5/Fil5i4=;
	h=To:Subject:From:Date:From;
	b=SzDvmbUjNe8QoigJTGCMDhQfTkAbXqD6eNTlsbIillbmt5cUmsoub9BaDNpwHmE+t
	 /foW3loWpY0VJWHtSur0tKR/NyXrm/b81vjMe9uG0wfLQzWGgR1bJzytUAwsdzOQ9q
	 ZC+8p2aEIq3Q4dB572MgT5k7OdNDopr4Ms4d6qVVBcd1sFXmKW2ooqlu0TsYZtEulh
	 alN8HTof0/qQOhwYMtzxgvu8NlRvyjaekM1dH1tsMuBcCTB/84PkhnDuEhloRquPW/
	 /F3sLgE9I0pSTQ6Mwf/CyY7rhfSkT+2W4qUdrJoUf3Z+NoNMu1bdNVgBsPoOUF/Z0k
	 m+cgY0zgMOUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BADC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304259359.26929.14960073605338058113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41f50b4109a5f37c20271945e14ad8238b7eb2bd29075158dd275519f6a5a98
Date: Thu, 27 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743042593
