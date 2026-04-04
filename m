Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1C212566
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775342134; cv=none; b=NqboEdaUvddKPySOfiviqUhg1gtPnXtbyBMQSPL5hpiGYlGzuIttDMHlxRVmPYTvmYXar8+stIOGsxY33iRF69B8qRmsl4JKIhIwj4+WnqJxe4gx4b4n3mbV5rBAaEvA++V7dBISwPBxsb1gexNtWVa5FS4DzbBhf7kMJDuU4Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775342134; c=relaxed/simple;
	bh=2ftywlbnEbrDrGc8jiXaEfXrdiJP1mCujw4EPXpz5uo=;
	h=To:Subject:From:Message-Id:Date; b=k4HOTvobz+pqnuhYZbrtm9q9fPi4aPLOgAXusjF8tuxAX6HZwSYNqGQCC71d6O81rrzvANPYNCIWTTASL+CDIbkhQFs1l7mO6bJfbCSW2XOiqUQXP7vYtKjZUWu1jWqxFJaPR1gW7WJI9C4BgvFhg3ZRu5uYjzgHxszWMYl4jlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkC27frw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkC27frw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2081C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775342133;
	bh=2ftywlbnEbrDrGc8jiXaEfXrdiJP1mCujw4EPXpz5uo=;
	h=To:Subject:From:Date:From;
	b=gkC27frwtDImvbumFEB2xvnF7wv79YSciyK+8LSUfWrliLgzmi7inHhhG0NdAmnuB
	 71PN7rWi9b0o0a4JjMv4q43gsLuBC/zfm/7vhhpVfPSmDgId/FKbwgcUGzbGa0TpW0
	 w5Au7kiM9YXsYS5MqwzdHFTGBBwQXPckdZkhxrihIvvCF1ZG115vu2lNYC4VFn8T1V
	 x6q2FS+6w7Tb2mmoDKaLXmkw/ignE+MLhaNIvV07o+RIdaLsu8+YvOyI8VO2Lesn55
	 72F6/fyvILMFHeP40vY4wtwVYav128UVElj/XulalJPfq6145bTgzhlpJ3+VW8BRd1
	 16HeCvJ+YEJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFE5E63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534213368.28617.1221365341434482369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8f64d97a04f3b7271e495b52d42546b96ed0b3b3a51ebd45543f9871b2fe1d
Date: Sat, 04 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775342133
