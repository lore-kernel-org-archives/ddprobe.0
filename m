Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D1D2DC781
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768464234; cv=none; b=hR2wwyhS9QnXvs1p2EyhoD8csz2zB7SfNMJvB2FMcZqpl9W2XVyxVBLrb5ul9eesiAKQnI0LsHfJ6Sx1THQttecWL/JA9eYOWah2sc/0stX3tNk7NBVPuREh9ksE3t5GCUpZsEJXIZa7ARvdK+epWan3Z7EFPDKxQLt54eAs3XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768464234; c=relaxed/simple;
	bh=qymreZh+lNr8+i7XQzMZpdjyfYhg/k9OISexQI0g82I=;
	h=To:Subject:From:Message-Id:Date; b=t+wR+aChRmiFp+5hf0HpEUoHe8RMhvU2G7H53JU/I4IQh+MKzmZQOf1RutjWJGZViBT6SGNPl+oT/KVsPAyPSgJvsSVOUPHyTqYKq7/DylJ5KQihAb9e6CBe9/Ys+aBb/GXqRQWMAFEMLaMjnZAuT1ywXaesjpbHwoqN/8zGyvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af+XiHYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af+XiHYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF87C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768464233;
	bh=qymreZh+lNr8+i7XQzMZpdjyfYhg/k9OISexQI0g82I=;
	h=To:Subject:From:Date:From;
	b=af+XiHYbDMTI47jvfpQz9lAMSOYGHpXsDQQUzKBtsuzpG2Y0fHglYPANVA+vNjDbO
	 mhbsZJmg4wj6/yasYxtY5G8lYyhDmYYBzHMeC4i8mZWFGKs5ghvfq7jQrve2Vy+jja
	 WlqxZ1ghhyx7z5ynnHat8e6DMFmZ+1Un/NYcNKIGIK3zDUGdyZRzeae9qqE/6P9LMp
	 isxwBjWcPit/d6edV1ZH1ot9KzMc52y/QpfrWYie1PNpIv6Ez6O8NdFW6gqz3hLUT0
	 /8C8pIqANBNtjlaSQ8GyVJGxwefLV1YSFAZZzI+zK7vD8kXpFd4luCyHWlKI6b5T0G
	 O/ymjPUlEujkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF17D29FFA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846423357.25238.15090655218562914963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bde179b81c4aeccfefab71841b254a063ea2d4067bf4999c4a1ccfa68fd59f
Date: Thu, 15 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768464233
