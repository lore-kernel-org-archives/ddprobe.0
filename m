Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194982BD5AA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750434594; cv=none; b=ldxIUL5uNcccnK0KUWvN0t9eR+ax1MiWlohvgVZnI/Du0s9gXAulfbDk78liZfbp2pbUS2bL8bFsuWS37EsBFqgsXREcEkNvoV6g4ha59x70TzJAhlu87b+fgMVvHx38NMnH8aoh0JCTbewO+2QfHfnDha6ZLSRSGocwJbXLaQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750434594; c=relaxed/simple;
	bh=VLenjyG9jhsrvvhSsCWkHtxbhr+Hn7D/uVD4uDgz7xg=;
	h=To:Subject:From:Message-Id:Date; b=ZZNhiQcsSo5QszNEp8M9BwYWfqIc/2UZkvUVKMUUFMdi7ISLOOMZLenL7d21USCqHMCx5Rmk/IPaCbpga8Ok40GK3+uE0Rml88buovASvVlgzv37Gz5UKl2g5NZoMkj7CZc9BX/m1llCsuj1AojbX86AKdnw7xweljkw/ssVo7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBBu7Hcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBBu7Hcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D891C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750434593;
	bh=VLenjyG9jhsrvvhSsCWkHtxbhr+Hn7D/uVD4uDgz7xg=;
	h=To:Subject:From:Date:From;
	b=YBBu7HcqqIxHble0TIlQHFdkwHIKHut5SIXbtgPAD5giztu1+cYGeshhlqIZOPd1E
	 Dzhpqludf4ttBfl/M7lB/EmuKaoAceEy1jZCsQ2adq/esjqOYLBL+5ArYPQsaH6UYc
	 sFuqm1tt6WyIdchEzqzSFzt0nYAGWMy6Sy8nzXiISypKoDpJjKWdvgY1DWOh2F6TeZ
	 LDuGoKfLj7gwreSe2lQrJd0GvPmOCIkpXbbn2hl/NtqxNgmMWsMgqPjJQzY2M1uqbl
	 lFya6rZRx0ArHlgY/oMZL4G3sNRhG8yh8saSWbSBiALDDAcwnAzrB3KI84YYRRmnHo
	 kVs0QglQrJJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE3C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043459357.10289.10044347452338048501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1676b8119a0683c2ec632cb608c92d697cec977ebe52c3bf0475c705d935cbca
Date: Fri, 20 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750434593
