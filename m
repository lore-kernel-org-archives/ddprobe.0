Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3A51397
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769352234; cv=none; b=CKFLjGuOPkYxGQTm50oCvHvBlN3ieV4qZLiN6A5CYBkiNm3lho7Y+iqN37gi4YYzeB1LYHSHI/hPeZiZNK3ZvrOljV2RwRuYa9wxHPE5cOkl+W6OuAe3XE1LSIihGkOQl/Uw6wB2QxuCOSJVyMe9xcnKm3Nob5OTfyW09r1R0CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769352234; c=relaxed/simple;
	bh=7sKxYHQ4XpIWkU5xiqaMbM0qarcNzmeVvwTTifG1tGA=;
	h=To:Subject:From:Message-Id:Date; b=ko9ELwVgoUNs32IbR/y15NsPCEc0lS7b7ufV7uPpR2iHwKZcEpDn9LoCg1cm5sd0dAyGcR4syhCMSpEHMSn6iYZigEq+PslDET5DiJJSxsN/WU9RCxF5ejBXeK9ifK8/QD28uHyPpZR0qGLxkw/sdbTVSzeYzDpcidQNQg3NnCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9NnkBCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9NnkBCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C91C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769352233;
	bh=7sKxYHQ4XpIWkU5xiqaMbM0qarcNzmeVvwTTifG1tGA=;
	h=To:Subject:From:Date:From;
	b=G9NnkBCEGcCT0Jx7pp346aU+EFAZIbSNt8YH/qIawFflJm+r1ECIG5alqcooX34fi
	 nVsS8Q7nro7j6s48hc25Ps8kUDxP7iAuCA+7RkcuvCN2xV+mjdH+yoGqN+LcIGJM7n
	 h1LyDWPEjDoDiNWr/WIhqPF5xcbqKVUOchSwPufQ0kT0210xr/f8dlBH/orWMUlLv4
	 oC1M69c7W0VK+o2SPQ49E53mgwPVY0v0TZaqvbfkBH6/lJH5pwzJeipKhvJxEm1pR3
	 BXYvFcNLgvK6x9Gan5sErf3xib3Be9Y833BfPhKFin+Gu4TrTuxF7OcJdhPrRTq9Pe
	 S1FEcCAizzQAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB5E63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935223358.28686.2482668131788748717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e5bf60206bc24476d42b5a4883a70cb79dd82609438de1a2ab50b34679cb58
Date: Sun, 25 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769352233
