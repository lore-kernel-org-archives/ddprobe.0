Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7EF22155E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745019594; cv=none; b=hGK+ZZnmQhXfGZrIuhWgyiGS0eUtNjPlo7YWbdEMKRt5wV4kgimAsmfHlx/2FMLb54EIxNyIEVbLjikA13h1HLsemoIv6fC5oWzwXf7u5Do7VPvHXjqZORkxbGp1HOpofI9JO5iyF2//eLZ8a1Pr/VefNh3QjTXQgAydue668g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745019594; c=relaxed/simple;
	bh=00Wl1qbW4qqwhAZVPGK3yk4AQ7vc3cTTMc1fP8D9h0Q=;
	h=To:Subject:From:Message-Id:Date; b=iq9uBw1KNXxVPZrC40W2vldtBSa3febgni3O261bYs0HalZdt0jERKIw4zMaNkOLRPQYxJvgwhxm+vn0vEvRLOHvH+C6msYAfe+hyozKzOkhlWi2XNO5SfGFNzvy4FW2bA8ipVCd8MjLBgCUsiC4dp3Yagb/j0mWGi4/iCI/zzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daFhOvlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daFhOvlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B380EC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745019593;
	bh=00Wl1qbW4qqwhAZVPGK3yk4AQ7vc3cTTMc1fP8D9h0Q=;
	h=To:Subject:From:Date:From;
	b=daFhOvlhsueNWNnoCHG/YOnPNYGqTHMf5bEn1TuJLcowFrE8QU3JjJr4gek79ONGp
	 0rhtLI5hxp/jKQIta/Hpj33ZFyq1t+QJs6dtnrYQVR9apMKf9To/NyxugM+MyNgG8s
	 yO9y/R9qu7fsfOc0eGbRBX+yMA9b4A0q5DdTqMEp1xAS29bKW0hOFw1gofbb0oY4c9
	 kC3hYPWxxDvyF7shbDpbTGFOnSShJ/cQ814R0KW18GXPHlT51bvMDzxabNQwJ2qBh7
	 5CHud/9wl4kpeulMU0tsQT6v+N5b57NDY3Q3A8FAqDqO0fpQWnLl9IJo36lqmsAy7G
	 Vc9vLusJXM/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E120C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501959364.11327.2205665924012367990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffaf77f43c46f163c01f95c95f7d6e035d13dd8d9368440908c55d0efe17167
Date: Fri, 18 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745019593
