Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4813134041F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784133514; cv=none; b=c0ZoKklkIBiWpFVii87XfLuGAKLJ+rgN/Bd5rw0MkwbFTJC+3HgAQKn/KbamxlHbS09fAzRIUt9qzFLbjRlh+iKfnLdwS6O+4J3V5QqibBVIJQYrHYcBHVmU/jZEQcyf7b59abIV8PNCZ7v0zQ4ukZ734JWK4wFRtUalvwiXwoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784133514; c=relaxed/simple;
	bh=hJezBIvwScolfqTpx+sIyUJrw4KVbub3WgPK9yx9A5E=;
	h=To:Subject:From:Message-Id:Date; b=m8kWFKGf8QA3RitHeeLTMv3QVJU1VCMOnozlj6fvgkU8qaNu8CP7ESn87AX5T2zKPlJcixWmh6J0U6bG11cLtFdwVwQWii1wCdffpMkagHHuzeIng3wZ8aIJydkPF1wfZbBqKcvOuHZ1KLxAS+bGK3vpfRXh1vrx8Mowh0mfVdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsMXfV/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsMXfV/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C63C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784133513;
	bh=hJezBIvwScolfqTpx+sIyUJrw4KVbub3WgPK9yx9A5E=;
	h=To:Subject:From:Date:From;
	b=VsMXfV/r1Hnjaba+p1Ch5VEls1xpQg2k07tEOvNle8JW0Y+Ye6blkyV4TQonzaKVW
	 7Bl3YHXuspBG8OoA3Ei2KotIy00M2ZoWFLiWmyEerQfxA54LzolJ51P/Dsb0gkQdWX
	 NeqtJsXrbBFmrA1F3V0NYo1xVgdGFOzS9AgACV9d9THcnAqX9p5MbbG4vrsSG1MDn0
	 hw7+LTIiIBM8Ab9J0sccUNAoiJZA9h0XB5bLZZYu22gdRFNoZSRWUOGg8Ukz2P2Ix2
	 q+UQhhAq8nQ7ndqxmTEFqlqLyqvilAgRDNfJijp/P6I6Jf5rpQFyzswZUxeHUGUy6I
	 zWT5RsKlCeq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE807C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413351370.28205.6312121419397309910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee0960c0eaefd2158ef87e919b7ffef4df6413020d3be1efacefb9347b9a4e6
Date: Wed, 15 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784133513
