Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3B1384B3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727478354; cv=none; b=qtkp/w5v9uL0rP/tNt9ToO1p4fuEnOC8z2pDYD7rTAExjv08nU/GO8oDV9w9AzAg5ITxHUDSsakEm5rF33dAA9DXc5W+2VEX5zyy1lDRoQn6AaM5UG+SvRdbpSyTE6Phz5KrYHHZtMrRCpCIX/FpjltXpXEBoIlkUYew0bum7+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727478354; c=relaxed/simple;
	bh=3m9KuAaNmL+6N6z/ClL+luYsjVFRIXnhrUkVdIO1SaU=;
	h=To:Subject:From:Message-Id:Date; b=sKR8izy+6nShZxnFNE3jOGapdwjMyAVY4/p11thNNkbvf38TS1rf8d57iOw9DJFso44iUUIOwsZgzaGGVBsLmsfcPLQFsVNyAwqyKyNytHdowmMrBuCAPUIidem1Amj52xJGbV5hvNVJR7s8nfT/iM0IpY1ydNAExzjb/p+qjFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz2HQ8lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz2HQ8lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE7C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727478353;
	bh=3m9KuAaNmL+6N6z/ClL+luYsjVFRIXnhrUkVdIO1SaU=;
	h=To:Subject:From:Date:From;
	b=Uz2HQ8luuLOBh+9VK4IYAP6cv4hPJkMVAYLKsKYdm7dY356O9NDXFzlIJEUy5tFzb
	 zVfZoqDuEwHwwjIgHVDIusml8OAhQ1AX28cJpz5hHtApc15CDNz9EHsHvoJgOonuLu
	 5FsRYoK/43gz64Xu12rejUU7IUJCpWE2srZBhzV23tWW9cNpISfWNiK16b/J3YkiKV
	 3bVeGImw7g7SafLCGlE7MfqjvNMBUVnD22ekiQ/puU83q4aFHBEjFN7Q3fRO0BZT1C
	 PkhJgHgegOdDzfWCnLgQnXsKwNMl2tO0mrgxfp1dpQxoWwAoTqNW0yhEIIHsKrLjQK
	 C5hDSgbifRzRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206ACF648B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747835358.11935.7172812740658700659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfec6035e2d5147b6d0285f73cf641e8225a92ad7eaca1b9ceddaa02a52910d
Date: Fri, 27 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727478353
