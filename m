Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122AF1A9FB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758181794; cv=none; b=k3K7Mh5zryyJr9rAvrCpuIMWDZMLOv9HASJTdrTpzGjJs0xc09zdnvS8D7wMeQjLOrjSWDIBrSFUyKc51odQqstpH3pgNCaeTn8zeJ2GuQRmmLxsTtfX3k3suVCOE3Q0aTFaC+SSFVdHYcOes7tAFyzcw6LU+HvPWpiJj6E4jsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758181794; c=relaxed/simple;
	bh=2NZu/NnfF8p1ZJRruYPb5jyuh7B2KBOJAmXf/hgJPlI=;
	h=To:Subject:From:Message-Id:Date; b=QOE5M5cPjVI2BNalTweac2GOaEAPXWjlJ8ZNCH8RwVLkWbxYzeOb6OEYEt025N/YCTs0pPojk9HWt7E8qVGTyUjwOUkg6P34aRvbzp0dN7b5DWnfXFalVZI8h9CLJq1ZP429D8YQfluW/FU6RT5rlln4vqgkO9tJMOIc9ljgXO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVHaRw4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVHaRw4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758181793;
	bh=2NZu/NnfF8p1ZJRruYPb5jyuh7B2KBOJAmXf/hgJPlI=;
	h=To:Subject:From:Date:From;
	b=NVHaRw4jJbpQZTFWcDPKXL/J1DZW2z9w+IKTGffhzfMblJ7LziwDfkbaPSNv7ttAe
	 3qcDCWhAz1eBOhyXj3Htxi9MFzqBMhq9EAR9LTdpgJEBT/CzrO2NHb+hhS/ipvEEvw
	 dPIc+Cwblz+sbmp42cw+VR6iVRU2vmdCeZc5xfXqIAq3xPR0zEVSRjCG/PqfaW6biU
	 BvPJetC7W9y2YH00fPD3u235yx/rKUtCdtSJXKn32p7tZ/Yb8a1j/x+VVHKSiKRjmz
	 cgPUSKpaLfubn/2+Netni+R1GufAs4pjhyes5Y27rLxtR0Zqs3on6mibmySWsT+kof
	 VV3FBImhHLRNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE4CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818179358.5994.16599101968665843920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec3b80290ba155522141d44989394ac5c1db03e7924d6b78bced5442c4fd360
Date: Thu, 18 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758181793
