Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BDD30F524
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757345995; cv=none; b=LJAmo0Acs/XGoRtYZX79l8o9zv4IKp+c4YXYqGTnWbdKDBuh+mwgvjxAI9Q9Jyp+ZgomNSrHoYZCqYTvh+52sj29+faC5MKuunNzogR9q8Zr+5BnL5/k8MZSoekIP1+LpCxr4SiGvxblRwsU3OlI/36B12CojsDrSzy+d/gstsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757345995; c=relaxed/simple;
	bh=+/coyEwIiztqUnWZ6Zt/hwkHBZ1ZruC2w3Kbmq0QkMA=;
	h=To:Subject:From:Message-Id:Date; b=LSUdk1mFFJmNwOXeGbm4XRrU4EW8GEFn996ajs5CDI4JBgXOiLkxS4ZJLd/t7Ghcwbe1/YxTkLApZauBbcQUFwk5VzW1D/ZxnslKXFv+i3AtYU2hbszGV7rUnW83q3hGUsgivBx/4FTS7+SqdEuesiuK5uWaT+gqc6CJmNBlKiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrTbekRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrTbekRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757345993;
	bh=+/coyEwIiztqUnWZ6Zt/hwkHBZ1ZruC2w3Kbmq0QkMA=;
	h=To:Subject:From:Date:From;
	b=PrTbekREnNE37BPyGhUGk9OGv3xvp2cY6zRxAFA2iZ8WOkJHXXRXqTIYJZJLUenuj
	 RciNZYNBb+49krvH9Dh2B4H/YKCWEQlzM/9kqmWFl2Q6pISJIRQjU0FWQoezDpdncr
	 8IHF1TgSrmJcFIGEFlyrT8/dTSLBqa77Y0E1rdFgJSciT8Vw2yW7Yh0K6ipVbgmnQw
	 FLZ/UxnCqW/kpu74sJzgOVRCQa8XyUJy2ESNkbGL4wZmhEfkl+bCZW0Lgk80s0QYsv
	 hojr20QvJErJZ/4xschOYJMXs3vgvBwSHRadPL03qeEQO+hfamhh+yzhpdtTy8PPDd
	 qI6ttO7NQKDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F213CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734599357.2081.13503996883016547337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ea437dcc4e344073b7ddd5e55df583488db9a90be810bab29a063bec1e0a1f
Date: Mon, 08 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757345993
