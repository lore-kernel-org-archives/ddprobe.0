Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623B423BF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720948223; cv=none; b=VSRuknDAgfrDk/0wva6e/HA1Cy3xHpAQxt10TPPHs9PvohZIDNl0wGkAZGK5UlSVKaXy/OzzzJ/lHEW92lF+ycbNGzYM0GDRKJWKS8nwpQakxV2FcPf+SGMv6IfQBIDj4uN+Ub/UJqC42OVAeJjuWu8Mjg0wmVi6URj22TrmMdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720948223; c=relaxed/simple;
	bh=wyCJxQjlytNXne6Q2mSNSqHP9W1dhDyCq/nV2DlhEVY=;
	h=To:Subject:From:Message-Id:Date; b=a6BH16PiwKWIYTRtbmZJF5DnOdpJXkdCm5/TIpUNXfgYC0hSYilTDQQwwH4/Ya0PMPGijZfAZeRIb5p1wU2QwC4/zBNUvOTASBmWIOVLxdFzLCF5/BA0mPCMFL442Vii2KbTpctPurGobp0yBhRgi03Ue2HkuJmR1MbhpLItF3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttQmaGDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttQmaGDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1474C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720948222;
	bh=wyCJxQjlytNXne6Q2mSNSqHP9W1dhDyCq/nV2DlhEVY=;
	h=To:Subject:From:Date:From;
	b=ttQmaGDC5iWI+jfN0c+sxCLw8+eQW509ZhnAJqQd9OKb7LUQYKI1U22iPvqdxy6tN
	 3IVSN1IbOPetwsyTt62jAzifGqyYdROzVw6ZRDRX5EMmcvBHoKIC/46bTA/HUV0xvC
	 BalTWprIqobgp5GWqjJDnCB3E6SqdZ/S5t2CP4I84NCVoURa31LStlmpxFTQdN6y1+
	 X8GMHwwkQETO84uZ1YPcl1+Jhlc1I4hnPPNfErSBlPS5zXvVH5M+UlD1exTNYBSLub
	 eFpbsACZXTFl47z7nc2+OJIkNZh8RF/t8aNFDvhuLdfGs7U4iRH3qdc0EFNUfB46ac
	 XKeCXdTW5xPnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA68C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 09:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094822276.29852.10782935755680774954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b73d18274c7575179b1ba79b0fab847b04449e368dbfbe2e78f4039f040cac
Date: Sun, 14 Jul 2024 09:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720948222
