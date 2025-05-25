Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4238829A9
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748215194; cv=none; b=Xy7f6Bf9iKEq9SaJ6lY+SBX5zLlKnF8IAgyziOX+Wl2hAzRgm4SV/ax0tCOBz7+QTRYmF4xMZL81jOykuoTuOjyUj4m3g57En3s8iXTwDNzljty0XG0TkP2b32mynAEI27giAPsvzCGvt7ussRuIPYAvaATAC23iAujKIUsYrIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748215194; c=relaxed/simple;
	bh=wKlVFSi3pcAYc8fC+1M7mISoJ8irreKjnCLFBycbh4k=;
	h=To:Subject:From:Message-Id:Date; b=PNLO/j4ftabuqZAhyhR4xa3kkCZBfKvf8WRCK4FmbbT1S5UBjDRL3czsuclmo7Hq9DtV0ymZv80t+nLcJPqd7qO2qg3lPNhKZtU1O7fsnhMudTVHVfXSKqkv1KivaLnMs5M4Wxm1BQe9UyO2x2JJAOm2BU0xdhOLwmjrYPjI3Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB+IXLSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB+IXLSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748215193;
	bh=wKlVFSi3pcAYc8fC+1M7mISoJ8irreKjnCLFBycbh4k=;
	h=To:Subject:From:Date:From;
	b=pB+IXLSlDbZph2c2SvxvnnByN5zoKAkPWBkPN/Tf3iyT3jVuCyYmkAHsw/n16Rs/t
	 bCsKYBLzn8D1wQOSbyn2b76icSimwstJx7v0dMX0kNwmq1dIX5noWatb3HNpGECjoZ
	 h22r847h92LPScX40zq/UaW1s14Cg9PVdxZZzq8LlmkAI9V6Sy4Z044qaRXgsPv847
	 GHCjWiSs2/Zi3iCp4a7rC455BRbBVT/GPlQUepRSk18Gdvc/BBkN4327NSja8sINU0
	 Bvq3jUuXA/AJZUI3gUnZ+4l6aufZ/iawep0q1j9x1BIM8jQTGR7bkg+u/1l/XOrFvJ
	 msHaRODn+RsCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B330C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821519361.15269.9813913396847972883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531a5a1ca85238119f7f9556ff21a51bb5bbdc68ff70de08d92307251d38d721
Date: Sun, 25 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748215193
