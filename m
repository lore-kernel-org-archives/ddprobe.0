Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337CD2E36FA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754200794; cv=none; b=LtE+x8JzHl0/u0ChQk2Eby7UG+D9iAOAlPB+EWXySIGMTivj0FdGh5LAPrDw6XjHfl6WIa6UhwtDo0bJeiGZnrMSskUzsoFfvXt61Vs8fmwz+rMyPij2WqMEaPUE8Z/mkdQxLf0uZqh9IRSFno68vlEXgS+Tz7YZRtqejEfvt4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754200794; c=relaxed/simple;
	bh=L9MlM+Uk3OwiK/uLjVKjJx6bbZacLLjuYLg2oRFWB18=;
	h=To:Subject:From:Message-Id:Date; b=Y+f95pwYaHPeKz+YSAdcpDT2Wsx4vMzV17DNaLOFV4f1zPgJNDxqcnKVaQpEjuZ51Tc3fFGVCYQSjF0Qne8SNOOJj9DknorXr6WXRZNZAtHLR3mIllZE1uUXz58cD9wMkxqDUsYgHOrZafI3uT9fIAvWjXh5J/t+vhQp67fJDlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaOW6Y2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaOW6Y2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A183BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754200793;
	bh=L9MlM+Uk3OwiK/uLjVKjJx6bbZacLLjuYLg2oRFWB18=;
	h=To:Subject:From:Date:From;
	b=GaOW6Y2G2CcU5lhk4+fccVuRgxGBNYXmXdxwI714sMXVmUwpNraE4XAM8Mn/NWqS7
	 FtHzf9x4tqAP67H21WYh4aYGWvzJ7Ncx9kGsJgWxtb1uh3nyTspI1WzD1PTOwK+sBE
	 o+IBxVREaG+AK7qhNQxqqJtyUeTWNZN2bniALc8SQg+A1TXCWahbBcAonU+VMNkXz2
	 rmFISRy9fRwkMAvVrFLkaS0VPWraNpI0L9/jkcd6xz83vxHD29UcgEc0sYekyRgHLb
	 ZkKXqCnsqLdxHlo3YaUjVltkFJa9FluVSgRQMo6E3l0KKQFxa1VkvYJhU95SoN5cdb
	 EVZMN7ryVDv4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F225C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420079357.24278.7835826256789574878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cc346c8b48e769f6ea0b1ef6e4ae123e9f2aa4c5658f11526584424540376b
Date: Sun, 03 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754200793
