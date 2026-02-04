Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017EC3570A4
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770182634; cv=none; b=kIB/91P4TfB2uusHzdy70e6EYzY3ERgsReQmGvBqWTG1+XtCY9quA/+dgrr3eB4HcnZ66rwyDP+u/DODsvQan86CiQzUX/bUjLKoK0y465qY2ZT3aPjt+R/OoCqfsUaj9rx/DxsSnPhOoODD7zH1IKG2ISb4I/DJfmHl5myGswQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770182634; c=relaxed/simple;
	bh=jqAEZAe451p4jHKqdbVAkMOd/FKQaRKElARFvG8nBuQ=;
	h=To:Subject:From:Message-Id:Date; b=SS8H8jUHUcz+jv6aqdg6KkPc6L7rwxqu41Z5K9CVhUMnUAgaFlajK0TQ478jML/LYNaxNvWfyAO6mA3uB63PY10QAWKOMe4DVhMJDY9iXOehghAdTfPj0rMRlgqcnZcj1T9bcD5JEnvxeRMl20wvbgtog5UwqjeTXwcEekGZODI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4pNGFh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4pNGFh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770182633;
	bh=jqAEZAe451p4jHKqdbVAkMOd/FKQaRKElARFvG8nBuQ=;
	h=To:Subject:From:Date:From;
	b=N4pNGFh0/kg9ZfIEEYXM+Tf5T4chk+PkrofvIyOSzcGG/DL13dpbF776Yux00Xohi
	 LpCuAFd26N2RobrrlmCm/AMKE3yNmGlT7GS3yH4e31oeJjIJnPcSlhZvCLRgfDnIsA
	 Aj74xwbqjZXlhz+XwiF2bhWJgO5S6AzL9v5zd6kk4ku6vf7jOIV/3lbXUJhMcbwwFm
	 gG2TPphbTPJr7JjZsvu3ZW6Z0PE7/hNd9hrJmjxpjHvftOqtHf/zIRLoG6+8MMH5Ej
	 rB4Pa5aSpV2NA3yNqGlpiPS0CYSKwtJxDMZByLC07OHkBOL4NNBm4iT7u7zshhZStw
	 QPdsjul80DL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D65E8B39C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018263358.5901.15379817294032690994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74874a59f20d08844844fc873cf8190d9a25a2672645f1b48198077322de0b2a
Date: Wed, 04 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770182633
