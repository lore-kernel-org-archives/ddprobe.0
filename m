Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE2F3BE17D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784804435; cv=none; b=Cbi8JQBB6m43hLOB6zp23e0p0PciekOSKDTBZmSg8JWFzi4ik9caQBhmF5jGhckV5mxiFVC65t0nFijkjncSwWkF8fGNQuPGBI+FqCixkLdTIGY/cOwY7OOex6DfolJZDQqdybqf7OVR9mfQ5J9Z+aG4jdco1sKePSR0/nIfRmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784804435; c=relaxed/simple;
	bh=tCsa6hvzLIs8e058XsAe6m3i94S2x+EddzMwBq33h3Q=;
	h=To:Subject:From:Message-Id:Date; b=R2kumk753hkNFcQqqAOMuFPmteUxti1ExrEisimvvcAEi9HEyy6g8bfiqxA3Col/1pKG677YEbGO6AS1nR8mEFKTfkTVObm0TPZ73asKdFIlT1T4xsIcwT0zeICKyOnv3EgHZtqNAiAaEVXPpAEYHjDUX4y96vkDple2zZu5kac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAAXQwJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAAXQwJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0632C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784804434;
	bh=tCsa6hvzLIs8e058XsAe6m3i94S2x+EddzMwBq33h3Q=;
	h=To:Subject:From:Date:From;
	b=HAAXQwJWB25Ej41NrU64NOLzLHs76fLhg36HT3qAvfdty5e5Ez1Sx8hzc+Jjid1w8
	 8Cnkq+pGkN/tQ3+hl2ishbjXEhBR58H31WEf/rvllTUUoh9fOG+TrZSiuuX7MuzdRb
	 aE4BWoMjsffMMefww5CPfCnXiATp+F8RMg49Zg68859k2jPNEiv/rvE7q9GeFhfTco
	 j3oJGidrKaTR4TzCT6JV+w3krVF72vee84GuSLh0k43F8etVF2H+5/91z/TnNvW9HK
	 qE6XrYAea24LqyB5qP6pkQlCgiYljtWUtn74P9PuOUCmRpqY3PRWLprEqBM42q8JYu
	 bO/3nRxYzZ2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDC6C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480443374.28158.6624014186642212401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0132f20512eaa8df46ca8c7240694644fcbccfbcdde578a320086c3936d8765f
Date: Thu, 23 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784804433
