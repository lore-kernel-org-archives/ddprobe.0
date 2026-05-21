Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F78286417
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779390754; cv=none; b=Os4tMc6XMeL20f1sZHoePiwTtS+2X6/nRKy5qQUu0H4d+mX39SVQuuDUrbMvYlfEtGrbUsYCQXwrf/kVs7kwr6lDVngO3tfdQxYF9jQpQGt/C4vgQgA90GKBKgu4UeSN6ZCK9V0+7/l36TWFI250i66vJEprLqP8jERTMDwXemc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779390754; c=relaxed/simple;
	bh=VAm3i2fbKwN2G+hGUMwok9J65H5edP2W5DDFn8V4zR0=;
	h=To:Subject:From:Message-Id:Date; b=cd1kMpz/Ren99S01Q1KPI3uFlAUe4r1vCdM5v4tHt6XB5Hi4NDfUtKp06CBtYzvfPeCQc+9GcHWThS7BWS4EfCM3do6Yk7/HgIh80rF54Er1nsVUzROkanzAC8CwdtgLUE9ibsrx2UovoLM55NKymkvHwLaJSGBPk8RSH/4gBIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OePLOvJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OePLOvJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD12CC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779390753;
	bh=VAm3i2fbKwN2G+hGUMwok9J65H5edP2W5DDFn8V4zR0=;
	h=To:Subject:From:Date:From;
	b=OePLOvJGrhGsEvrDZDBQE9zJ98OOhaZAYBIzUrgCme90t1/xQF+rQVjTsEDdpjAcZ
	 AtcpKXEV8HGBRnPRfYVlbitiGgPadg5tJkt0COJmU4+qyw2IUA3o8IlofJdups6MN4
	 d6x2ZTKyQRNEXEzagf+Ca8+TZ5CaOOJZWOAwEsnkD2uyiyWa6HWZvg2g1lzbmuL61t
	 SLInQPhpkghNsCHaaa8WR2rPowz6CPvbx3cDHbMNlIyZ38BhkexZyZ+E8UAQ0/PBXz
	 /jbU+wFHdAajK5tLMJKIvLXtVSfXletVXY01yfEFfaRdKUtpafvwDW+sGGJ8M2p2xx
	 Jl6YPZeDGNqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F0CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939075369.22086.8742083932500960896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e0beb5d8002dcb44029478a5cf5a0f945f772fd1bd7c6719c9fe559f2c8896
Date: Thu, 21 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779390753
