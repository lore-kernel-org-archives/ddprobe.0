Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538AD4A32
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788029434; cv=none; b=iJ+DX7Iphi8GgLFZw+2zd29JsHa6/JgT5zvbn5RbsxRSqwn8vTjvman3O1wcPJeeH6lHpg8N46d6WUihGOrW2IzvCb0cs49puHKtuYCGYYgLKjQtcmsimz842Kk9m/jCiUmNkSwQbQBO3zrP4qhr6r5zni5QwP3qSNpBiTLv18Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788029434; c=relaxed/simple;
	bh=+qJOgLaJbaLjUJjDVTOrCLG3kQiq2lA5gK8aWPA9rdA=;
	h=To:Subject:From:Message-Id:Date; b=ETfDsNbV4PIK8XweucxOc0BbSYxG9hoOLHz0KQ/+hBanfRyBFFbiGCm31xJ6/dXPETKIiStwfpvCFcLx8YUSbWuHcDCMry+P0AYE++MXL7bXEl4qZq8QMQU8kP0CZQu7d3aoMOvx8COZb08cxCAxKncH04yyhOs83jw4jyeqWWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOQMH1ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOQMH1ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5897C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788029433;
	bh=+qJOgLaJbaLjUJjDVTOrCLG3kQiq2lA5gK8aWPA9rdA=;
	h=To:Subject:From:Date:From;
	b=eOQMH1ya3LMkmhO0dYaI6klNnhql3hqvJjyJCBlkqP7cLp8Juzoyqp51PZH+OqcTo
	 JwAAXcuq9CPyUnY0tME563dn0LQT3KVP6rWvajmFyH4wqnEncVygku+fnBtO5pM3T7
	 TpSkF/Sk4RL+oAGQxZk3FwR1arnYAJBA55QO2DgunpJE2PlNprmxxxuA4zl0Rj4Ni1
	 cJjQoW+8Ns1iSACc8fLrhv02YITTWPFFjUoUlxhaOOOXqnGBTAU1oyy1ouxc2x3AQS
	 zwMTMeHFkwN+xL7NqXP6P/dpko0IL5HROy7KWiuGmZmIL832DK4rg0nQm/7kYyU9jA
	 t+MuK3lWY6rXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B31C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802943369.7877.866621264361403074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4cce26c0839a947041b9d1553bef61edb84dae8d3888d2c5bb942fc5eea9a8
Date: Sat, 29 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788029433
