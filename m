Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F56EB79
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752784794; cv=none; b=U60M7e9sQnM6kbWRErlmTAG6vCgTIt4w4RvWH9ZceFwzXxxvdqVW9wY8oWcjuwCaHkEVx/erjUxtRL7tw8HgDZ+zDRe7/4XMhgWbX65TnWFZnLdkHrJeFhjU55/XbHfzc4Mte4EfxAc1ohSZMYY4cKOpFL9Wb+0Niq3KKFKnUgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752784794; c=relaxed/simple;
	bh=HMY7pcYb17nS7zOvs2ft+h+MVvPq2MMV+afAK7LAVZw=;
	h=To:Subject:From:Message-Id:Date; b=REFb4sVCbNc/vPr7tqJs227qVRnm+IFIdKALp9aHD90369e0JFQ9X8iVJqJpMqjPW7oM7bhCN+QonxOD3HZJIvMMpDZu+Uwgt5c/SmYlcwZEpen5tp7k4YqkIvY454DBEsvMtvi0pKtID8/xr2yLZ5XcRXc+M67WgrLkjm9mKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MptZI1g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MptZI1g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F437C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752784793;
	bh=HMY7pcYb17nS7zOvs2ft+h+MVvPq2MMV+afAK7LAVZw=;
	h=To:Subject:From:Date:From;
	b=MptZI1g8yAOAGY6MgHkoXhhALFzAFyiFbvk/J39n4grEx08ox/wnSRnUGX8g4saFp
	 kN8Xpgx/U9XO+bK54YiBi/8Fj0TAhb+tfiLkGZaOAnYG7Pugm3XqALV9SAEseJclCW
	 vISkJoSVsIT/kB6m9Zgx/lWBp8ERXgEHNB4xjCNzqxZtnXyrLEZSViVmmEMJJ5KV0J
	 ILe8U5BWs35jm3j0aZfii754rpXGpKNtpzBoUAJxqKFZUrxPwl/hPnSbUWIkHyIPOK
	 VOsJpKiPckC3HuyuymVGqbh2TEIxqeaKl1WNMrTUShEl6EOxBjxsNp1Lo4EyJM8km6
	 dVk5fYdMN9N0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F462C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175278479357.22070.3132717703400613138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63ae24217816ae9ecc6d092a5bb54ad8ef45e5508dd2de0f2ab391d49468bea
Date: Thu, 17 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752784793
