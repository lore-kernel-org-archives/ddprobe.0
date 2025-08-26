Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B1424A066
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756168794; cv=none; b=oCpbyLGqh5a6Uoq0+j6mo6TTUCGALIhjW5+QK25mN/z7xcFhHN8VRv1qW/kzvgsuMgveBfkt2kpj62IPT8A7zP9aW36WCzCTBUaT/jHcohaZk/UNJKXqL7fUl75z0Uylx28hwF0WthOS2bqpczOV2u6LSJsvAFJffyHIsAQwxxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756168794; c=relaxed/simple;
	bh=NLJszuDn3ruHiXcNIp3pe1rpUCcWa1fGUFnSeVhvTuY=;
	h=To:Subject:From:Message-Id:Date; b=fazQB5sJC5nP/84MN88sPiuTMobx4tQDIKm6AbdiGbjVb/7Hu4juwCX0fG8GzjTNUASyT5GExIE3LMYaH8jguqVfk50JW2/7NEVuiGar14VbyumZ2pH+448EPtGfwY6ZrgLsS/LhQIiyDg0tkRZ8PVxHDJiY7RCj3+3QHLC4qCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQns8/Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQns8/Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC99C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756168793;
	bh=NLJszuDn3ruHiXcNIp3pe1rpUCcWa1fGUFnSeVhvTuY=;
	h=To:Subject:From:Date:From;
	b=uQns8/HwXEvkx0SjW2bLkJfNpM1UmZUsFbN+CeXz7O40++W1YgDPruBYYDIN1IyyP
	 WlNEwYtNQhhURwgnHkv5NUkvvHskOTCbNSHfbLlV+oDG5LnpVR6Bcj0zN4XkCevDIL
	 OSnrni15MGrzL/UJdaD2/yMQwdCAg8o+0PXw3H/fM7HESwrzjwhbP9bqDVpVkvs/fN
	 d0Rawvxo0z/0raJ9361tcOG8ltkbjoSZSvf4aEvibr8myfnv1DFJzmcrqW7hbrch3a
	 6JFQ6b/6zvNSSOpZzD41hgu+mvCwwUuuOGEoC40guGv6smaPXwWNP26No4LQZHMsA1
	 Qxa0IPDYWHJRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F437CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616879357.23860.16303582709971869603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a192a28cef6314ea8162a86f75a4d127b47d536825f1ec8ffdfb57cb682766d
Date: Tue, 26 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756168793
