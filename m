Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0367F17993
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752286794; cv=none; b=PmqNVZaOxjvNcm8EJ/GmDdlNhe7LgKf+sKxAw0FpEXAV2CPqDpgSFNumeqZGV8YoQ7n2u3eAZsztnzcRklmfzsE9jFXH5jhlc1nBo5pjOiAr2gdcwr1P6Y7roeMJGs0yhYNtBfHGeIrb0XU7Yg3MPETBfOfWZHBqvXN+M3OjNFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752286794; c=relaxed/simple;
	bh=ahT5jLJZMGpva3Briz1ZRvqW+StsyGXafZ4kdA49AnM=;
	h=To:Subject:From:Message-Id:Date; b=KRYPcKPDmYO5WMWl/KN4xAQD5RXm2T8zKw47UaiOcoYKRioHfeRqY8Jg/ZvhACdxICIMELogRDhMHtwVcDRVXvHMQeVGPYKOnTL/7kP3xkiRniajk0EhUsm4rTvHyL8b7+L+QEeVw3U8jLz7XWzYI7O4sWs+SrtL6GgnvPzv42o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhJigLiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhJigLiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F85BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752286793;
	bh=ahT5jLJZMGpva3Briz1ZRvqW+StsyGXafZ4kdA49AnM=;
	h=To:Subject:From:Date:From;
	b=NhJigLiN552rDCb5e2oL5fX4jO1MiLj7+hKrkPiBJLZtbADkqU8vjPjIr/v3uSDCy
	 aPV+3L3z/skUdWlKVmeneaJOPm5tUHNuTbdnpUIo/jeUOXzO81aPwRZBVKyqT4pOu8
	 WM3gQThsiFytvMyZFBvrM3dV+veYLUGhm14ydr1phbOrT/ME0+DoRh5KM/HBfCE9tg
	 5fH7zMXZucsoTxdpwLx2bQk9s+eLWB6JQsmwVv2n00MElr8vpIp3eG7ljwrddnmyJZ
	 GG2AIIYat+iG09UakFZFqnvLQLxVlCf4Y00hoU56O5waKRWR1CF1XX1CnS2P5h0vZV
	 DweGqocthtzIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E069C83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228679357.18669.5645233343773180718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e45e1f2e8279586a31946dfcac26673a9f6f0178adbce0af6927f7110a28dd0
Date: Sat, 12 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752286793
