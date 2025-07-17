Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7F218AB0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752739794; cv=none; b=aSWYGFfZI7J4JoG8OhJ0cON8bRg7Ylbfr0lWc2J85hWOwNP6RAy6x3PwEQcMmOMAqOP+aptVJS1pcpmtKgNP4LEWahwfGCgmpFuLyFgwlznrAXLLne3YSWLf35hq45lHfUfgMLOAuNkjBODBEa3BSBE4g8R2s9GM6jCTB7KYsCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752739794; c=relaxed/simple;
	bh=xyphDCq4NHNHKlZZWQAHVCir/SNNBMqGCJyrDee63zU=;
	h=To:Subject:From:Message-Id:Date; b=trXeMRIrt6cLL3KTs8wPzwaudrHnMylfPU65wlq1XWfb/PHs+S5yJZc04CDp7CmtJwbkDretFY+1tz3Q2uD51by6M3yBdPkY8CAi6Sev8lMxV+r2DhyTgqFpJCxfFfmS4WVzaZMb5z76DL0gXmRPa79Pb1BGfTPgJ2NveqWBmPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlvDyoOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlvDyoOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CECC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752739793;
	bh=xyphDCq4NHNHKlZZWQAHVCir/SNNBMqGCJyrDee63zU=;
	h=To:Subject:From:Date:From;
	b=KlvDyoOC0vOM51MI6oeOgN8mLu6jC55wsGGg0WRcHSRQuPXGS5tyddBAxLYKyuXrU
	 0ixhcG5w77t3ks4PcDyHhthNiMOPvtdK/5jWjz/Thvx3hgoQlQ09h1hEPgI6lJ5JI5
	 CIqg4zVuMHte+quCxmGyYdnvIUxNgmo4JmIBXWLhVVcFIEANeIyqjOsIdTS++TKfdg
	 gx2UjxqfyZkQRonMDThP0D4LvVyHYyvYuOIlih7Fwbbs2/gjOlrwksd2AgCA+YHcKQ
	 57moboLvenJqbSKtcmv8bKHKpYIQHMUMdunPDWc7z9t7tgM/J2ZWPrq9MpNTps/5yv
	 IWC0quHnK8nfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035FC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273979357.13965.4372131785906306945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451e3e33551fa9264c4871d62b043c03acc3682a5314126ec2706905790b4e7b
Date: Thu, 17 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752739793
