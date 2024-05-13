Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3898562C
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715568743; cv=none; b=idb012cYiwbvg//F2cawLEKuOFjqQgrNzrWo/+u99bsynXHVD87XNHg4xZj0sARxaPG4CtngsFFtHmfDc714L35kGPs3Q0uvEcVdlxht15hevouj7U6pUAGEEfSf6R3HiTm7TQ+yyw7w8KBe9nPWHVBnc6xyzLjfixlTjD5IiMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715568743; c=relaxed/simple;
	bh=1ma7X7Nt6EC/bBbbh+jyekLfHHvIPkf1VmZyp1VFuBg=;
	h=To:Subject:From:Message-Id:Date; b=hBK2iVOic4SnN9df48zNQCzHy5fO1UuPg9B56rNO3PAy6bbHG2SuFayOBgEUy0z/V4th906Uh8yduqXe2AdJZ/oS20dfJXeBYASii16KTsW5ZqLgv0y1MHMJw1xZ2dpbOolvLyLpOuv9RFDSa/w4YG3LyKibS22zZXDt1rAQhJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YP52gSyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YP52gSyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C16C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715568742;
	bh=1ma7X7Nt6EC/bBbbh+jyekLfHHvIPkf1VmZyp1VFuBg=;
	h=To:Subject:From:Date:From;
	b=YP52gSyQybhxQBL10a3JMvho7136mf+1DH0Vr04Ix09a0XT8Q0+mhe0cjB6fWDKN9
	 G96tIXY32IOPBvFCwDKvTsL2jQIwhRLpwQOKLCVmbuby0sWYnvvacro7tJfI4fEjh3
	 Fzu2MKeoxLajvcz039pB1h9ENNDVBu0+RKRKTsYHqJcGbX/bStA0tn34yPd+3tMx1J
	 G+0TuhD42gTFopL3ZWxVSkGjqk/3KgwEiFUKC1781tYpE59EF3049vEls2HmRdmSd4
	 W/yzAJUaIdONKWB4zSp/N1x5tkcCMOZ5ppMkY/8J3Xr9XkaX1sZftg5Xa6LbaqxUe1
	 5dAup5y2yfsdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB75BC25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556874279.23497.11868123765837267765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7ffd985e2a78c030b56bc38bf6f0a60e409f9187f569a51c8dcdba5f20c4d2
Date: Mon, 13 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715568742
