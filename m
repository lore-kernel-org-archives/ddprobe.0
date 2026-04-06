Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0E9271471
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775438734; cv=none; b=kPgvcNlzp7dsBJhjPJfEPB16L1dwI4P3xQ5URG9xWxgL2uulL7T4I4L09uoFrSCx9y3FvzdRIxI8z+p/39vrtRK2+Rf9PM48vCdRwx4iqMAuiYsiAHE0hCLjXvr+k9kVHn3UuS6r19LulDkMrVhz3aj835HW1Xvm6ZlsLKq26+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775438734; c=relaxed/simple;
	bh=7pIfJ3p94zeOFqzeFih3Qq/yI1URXa1wnl/OuDkd8qg=;
	h=To:Subject:From:Message-Id:Date; b=T04/f40NMzuUY0KamUmaXjGvy302gYzTcafYrEgvPP/8Jja8EwTjSxbpCEO7Q1yzsaxN2TVK0DHGSFiT34hv7yrLWm1vP0EpAkUsaSj9UrRHG7jMLMUSrs7QyXdJHkQs4ycR9BSdm42pCoaepAo6q6esG32ro/TzuA2F/qzwgpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iydiiYZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iydiiYZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4676C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775438733;
	bh=7pIfJ3p94zeOFqzeFih3Qq/yI1URXa1wnl/OuDkd8qg=;
	h=To:Subject:From:Date:From;
	b=iydiiYZFg6G9AkEL6XG+qSrkV8MP77bElTFN/KrGeLSCjIo0gL4GoRWSv1E87TVel
	 ugq4I1fRdwMyvcUgouua9ySgJeBtrUn8w3VD4acHYxsVwG5khbhypRnU14jXbHyWtc
	 4ErGMn5KkguagaczUjF7ikriUijOztkkhqJXGYpV5A05E7chKt50bHA+OqxxkXXKM8
	 ncZfMFTceB6tKEurmfYGTfunTa3oXAWKtUPl5WBdNykd1X3oM5u4jaVDH/LzfOOZL1
	 VrAdsoDv+7GdFpFo1UZzaeslsqQktLTamVFyEfT2ak73CwCTS7RCtk8dJMrQy8GGW2
	 5uDUETeCeI8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35A8E9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543873369.1061.15506857815855151296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea76150c3b98c2d61ca412820a35542f2dada57bce0f024cd82a9cce70015c45
Date: Mon, 06 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775438733
