Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4129B29B0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745644795; cv=none; b=jPjLdr1MBzpuhEoaXSaoGZpm4iTUf53yRUlwwnMme82lO3CLP4817Qlmv9HZ0CCcgOK7Yb4jd7WsY6kOG0uRSDo52WrcyYkkUYPwmab+tEYtcbwO9ztmFDtK4K7mj4oGunAhNQWIvAsFJXVBRDEuvpa1OtOsgRFssg8J/JxgNF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745644795; c=relaxed/simple;
	bh=ncEGluFw3C8VaMAADqxHCfI16RmecsOXhEB3KohF4MY=;
	h=To:Subject:From:Message-Id:Date; b=QneY0pEsLJN4R1S8ZWNo6B1qYffcYAtHriQEL6AZSTwJZlpQbgh0JtoH8eOsVKF+T8WBaPJvJyYsBZpByeVCNFFHYIoOVXaZdCvW6dvOJ0qB/RmKOIqVwT5OqPgJkmIdgbjrpDl282CuiWoT8fTjZix6Jbs6cNWnvXZv15hHOEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gro6Dy6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gro6Dy6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54AAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745644793;
	bh=ncEGluFw3C8VaMAADqxHCfI16RmecsOXhEB3KohF4MY=;
	h=To:Subject:From:Date:From;
	b=Gro6Dy6UUyQlIe6mjWZPM2GS+8dIQo6k+oHNkGwvSVQtuu5f/5hLepQX/rNEPmQEz
	 xBoTKPlM1LOWXFzE2dF5rHCarQzSB6lBPGeLAQtqSnQ570IiMs6uLauQyhqSbC3YQz
	 bXtRP7HLfN2O2bT1rMh9I7EDvR3TMn1xPfdhgABBK4Kg1LQwcnO1ERVeN5niPAQod/
	 GW9RTOO4Z/pQ6exW8vpRYbvuNS5zdn3ImUpgJ94wdbVs9g6MN0Krd/354rDUVexw8S
	 pYvRqrKxL09TY2sFKjuvRzunJEEM9uOvx4zO8U++swRDSJfA3DIgZL8PJ3zz+7zVfS
	 GuIYDfwj+UF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94294C369D3
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564479357.15846.530490885416468214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a1589859ec730d1bc33f07cc2380322a7266e763ee81f00054084764904c71
Date: Sat, 26 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745644793
