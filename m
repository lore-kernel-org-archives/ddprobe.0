Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D867487BF
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737198954; cv=none; b=u1E14EdEtRgQjHT0XXyjlnCDXNBp+DF0YFzpo+onEanXzAalcfCkZlgMAtOw927eruU3pqgN4xsbQ/+tiXwWwYuCsjAbFlGNmMFaAMa0fJASOx9nej8O72jW+MVUVoMny50CUlkem2dxXRUZQ/+LHYbDUgbYWcBimz6CZxK2Ui4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737198954; c=relaxed/simple;
	bh=TUov19pF+uid4pnMIYQ9G/89faxNpE8oN2QU2vH1XHw=;
	h=To:Subject:From:Message-Id:Date; b=hFK6jN9s7YMaGH1TnwGLdK6zDl0GrQljhS6+Fqf5D8/x+QflbVldLtE7H2gzOO5se5kGKv1CYWgDzQgGScZJ0RP/vM05CafsL5gVNuFPQcIvKN70TlPOyk7INnpQyFxkSiPHGfB/JQxyd2ANV+ZMq/H9tT6/FF59NMuXuqJ5kPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5tLY1o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5tLY1o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F0EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737198953;
	bh=TUov19pF+uid4pnMIYQ9G/89faxNpE8oN2QU2vH1XHw=;
	h=To:Subject:From:Date:From;
	b=C5tLY1o7lk93FZXfJJ7Du4bFiSShtuwqLxswbNDXNWBT1cxyTh7MVnrMnkeG5F6Xp
	 H2hcMed2zG8FSSvkdxudbNusHfNxtX2JVhbmmgashKCz84/4opmWRLOm+/LxHrgjh8
	 AcZSrhXhUeLbIAbEDKHMSr4hV76jN9Lze45Fp3wrBYmwDfdhgpGF6KL654RcUnnliq
	 DGyBsoyxqPpUHgeKTc7wOiunREof6K+x9zJ2tBB9LngBuKkbbBV9v72v4XIWKz1byO
	 cjyjM2Lvmjo9xxxYNXfssAjZm/hm+zmxhVBBxppwBErz8l/HeYh62LHmRkZPi7oFpS
	 bbqFaabmiiQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9AC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719895358.18209.1224743709766517562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebee3b9f80000026d27af2095ad17f9ac235900738cf9f91bfdec5968e6ffc07
Date: Sat, 18 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737198953
