Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444BF1917CD
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759601394; cv=none; b=BWart1lv+cXrLdkbgmSj/PBbf2T2BSxU6uGqFfjFJ/heQ1xhzJdG00wi4SX2vk3rRoV2WWmCUIhjyS74Bg8EkMRGWz2RhIAX0qk/bb/OA5BtCznTj5MEVovJMab/goRvjAsNnfk/WoE6NsGbe+7HHM9w8Iz+rI4vY+y4JqLg0nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759601394; c=relaxed/simple;
	bh=l5oW8ENXBul1W6n7pyFhsYrwlh8YWsOM6B+2RP0dxq4=;
	h=To:Subject:From:Message-Id:Date; b=tZzOm7lgqSdNk6FL+mpPBmAw7NmlvCqM+D95CrOO9qEQo5maYB755pu5lQG+UByAJkb8yFVdhdl7D3Zx+nRClNhlufUDTjRik5jc4pvsbONDAW1oVwisIYLN3Zm0OV2mSAiEA5lJ9m6BZVMLXL9YYOzV/wD+4ZYHmIPT1PmROPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOwJs+yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOwJs+yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A0AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759601393;
	bh=l5oW8ENXBul1W6n7pyFhsYrwlh8YWsOM6B+2RP0dxq4=;
	h=To:Subject:From:Date:From;
	b=tOwJs+yTTbnLPjISv9Xv97660sjr2HvXI8uOaevkX+A2TsupcCyfCF9TQ3ouwj9qb
	 H1iFI+MW2ePkQd7Y0ZdhQVVv4SAlLcHvYcUU34XPLtnZE9/Mlq7nKHuEDJcXtEyskH
	 dsf/vyeKpDBq7Ns7V5vzGodOvfDwln5QMeIMbqXloB5RCZDLxVoeTgayNP0kK0pts7
	 FJ6o34fBueESJRgxaMiu7Rv88voZ7khc1lGEknBG9/dV9y+7IZj6gLz3f0TMyJEBy4
	 m7K/9ErEN2g/aSCnl87JunYMXpRC2Hmriiw8r3Lp44jyqQomQ4S7eSQAgdpjadVhOx
	 im3eFKKBlinPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93146CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960139358.28326.5358932376220559581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41484b32e8369b7fcded37e845134f80f1809736c0f4ae15a45ef073ec0ce13d
Date: Sat, 04 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759601393
