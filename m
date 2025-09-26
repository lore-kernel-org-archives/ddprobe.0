Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A03CA4B
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758890994; cv=none; b=nVM+gXw6j5zBHp/zCfp6DdiCYQ/pGLF8K+kpe53DTn5nvzBNzSQT5ZIPf/phqqvC+CMfwrcoUFbT0oyvS3p69FrQ4352Abh5KtO3z1gMleioCWmXG1riJ28hhMn2xViDFmnZBzcvlVjt/ey6kzEqAEhf1Sn3qXLBue2cY7dYAuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758890994; c=relaxed/simple;
	bh=S0PYezvr3vhnoJJ+LoP+4+GgNDHY9c44QHg2KobvYRo=;
	h=To:Subject:From:Message-Id:Date; b=Drg20SlGwM5sgWs/wHZ6sDVLgNaPwi9dAzT45Vr6TomyqDOEJWPuitJNfSVongcZimvYiIYr/uqnBDnDBg/MBIxhT6se+BJPUGsw0FB+uE/j95WhKhS5Fn7MiFvY1kizUE6Ri0RXUmd4O+69Pk0aWQwPArDKnk3qZVdQ0Qw+uwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj+qAjsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj+qAjsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E068C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758890993;
	bh=S0PYezvr3vhnoJJ+LoP+4+GgNDHY9c44QHg2KobvYRo=;
	h=To:Subject:From:Date:From;
	b=bj+qAjsuIXqFFXucWjNgJvQ3l9dCX9feJL0j1MgQhCy5QxYz5kNFmlDxD1tMMmemv
	 kz1rfJYiuqKFJdgy5Bc75RSIXPybfVpExcQJUuZgMQNdTm2ZhChuhUzITCqfNzdtXR
	 RuSAvtzj2XrY/Qy8d8Wf5jbKz/y+nhYXtfT0boqlnM721S+bNB+0urudObA9KmZdb8
	 eBBG+JRekqCrfD0vPWbz+V4HU/uZv1A33mT+YsEScsNje1bkQ4yzdC+06Uz0M9c7dx
	 NPSBgLi/WRKa8IuMneZgcgvfjX/lb8yBXKkz+ecUwWYCb2Mhk+bwNuOiLikYcUD2Qa
	 7wpEOsiugdbEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB45CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889099358.4707.15068361612907616358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab5e4575c999d842dc7377fcd1d69895ea3ab52eeb5f09f7fce9e094bfb5645
Date: Fri, 26 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758890993
