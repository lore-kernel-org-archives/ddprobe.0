Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D88332904
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767906834; cv=none; b=BRyzdYk51JmdnUGArdnsca3K5wvHgGhaZg/qMljvWGvdODodl0fSJeHBGSJx8wy4Jv3s28H/Or+t9JOs3AGT8E6XSaGSmKJBkYPhZdE710YfsCNv3gKe8Th/tgOzIabR7objDyelXZH0fy7Q7hVT+cDCDIUhijkQqzX4sl0JYWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767906834; c=relaxed/simple;
	bh=L4W9ZKJZsnACpAPGqqf+6PU6DTeK5CTjbs2h/XgDHME=;
	h=To:Subject:From:Message-Id:Date; b=FNt7XWvx7Okn1uqJC1LATOTvpu3adw/nv2y2ZfzaudENeT7d4B1jbOkLRdVg9b3baj6KI2U0h0d6DQ5w0wMIP9MmF+//Ebr/3niVEaxx7H07SReFD8BB0G14bOmBlyFzPm0F+pZWs3wvmSdafmn8nfiDuv7iB5NIuvPOzHmw2pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htItO/cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htItO/cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2635C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767906833;
	bh=L4W9ZKJZsnACpAPGqqf+6PU6DTeK5CTjbs2h/XgDHME=;
	h=To:Subject:From:Date:From;
	b=htItO/cquHfEtwhhUsPC1LZM0taDk0LOCxysVxxUpovpjmOq8u2qABvxHB2Q8zOqg
	 WySKUj7tDVu95mF82I1IILQzbzHHOjrxCjqV3Q/K7sl780FWzWIfxSqg7VWutfzvyR
	 zpvHuq4zriRmQX/xFqD9Q6RA8N2hbicbu4+WPGPiisGb4uJVa8AW4UcaNDScGVXaro
	 W6ClIUKOm/zJOv9r1WC8zPcdK4u9SngA2+/7eFSrdVXkkdRpMci7/874151aXunhEB
	 PcG1XJdiTWYEAsxhfWCgw/WnnljjUmSr80GCuaCwxCa1nWcQ8gQxaEqHe33Nzg+vjA
	 ka/gaD7JXlx1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90001D1D495
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790683358.424.3514488952330466201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5a3b4825ddf6bb2233fe1b57c9af35491bcfb1c4e831720c88ff5cac5e1ff4
Date: Thu, 08 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767906833
