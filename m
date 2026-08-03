Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2783090C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785763235; cv=none; b=JdtLlFXslvtn3LfxHGmImgjyij7b9W283FMSZRV+4O3Fe6U5hklHoNjZc22xPL8/HKOklu7+SNKVMMIivfaOrqZ/JkbUZ7npNHpZ7+DaQ1yRkD/p1MJQ/WKopSAOthmFsZ3Wo68MMc86aMrr3vKCbwE2Qa227mEM+sbtWx/AJxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785763235; c=relaxed/simple;
	bh=zXCzv6avIvSam5vM24k8ZapBfbJanhQwuPMOjnkvWdc=;
	h=To:Subject:From:Message-Id:Date; b=PMey/J6wY4MvX22h9bE4kQT7b1unoNKSbFRvgBLUWiUnrtlq6d5OG0JSLlze0j3X4N/tRch6KwE1jDOjfbFWg1Yi58/wo0vrQrmbCXtREUevqT581R+YAJlzoiQVt3a5Z4JkiEaxqzsr0fXw6D7B7dB0UzeVEyo89M1sA19V+B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sezvLmF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sezvLmF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D648FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785763233;
	bh=zXCzv6avIvSam5vM24k8ZapBfbJanhQwuPMOjnkvWdc=;
	h=To:Subject:From:Date:From;
	b=sezvLmF/8oIpfVc0/nWUyDNWOIYFvRcY5D0Dv4cOirGSVmdbI6eC7FQXgwJRbyaky
	 QagnCZlsBOohKJkfNuDnrKXesnxMLOhgnDL6fIIFr5GvfXsk1c00yexkH4DQQC9DIK
	 leDUPg4Xo5B3uze1R2d86NRsAqGJue3qzC8h+VYoAWwuGyy4LiK8AOXP1XyY09VBm5
	 mBmgD8+uwOjSV+1L9fTz+M0zKI4ITOZ7qi1ct6XVjaMMCDlVNqHrKXpR4fZhwu43DD
	 l70cujFVsk8Pi8ckZCpq3Ihl1wOY/R42kpHHGg+pspi7IAoCI6rdiSnnrrBuHP0q3A
	 8odsQkrPFMGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A75C55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576323371.15290.9488274740277386252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3146b8f718794da41361438e3f615ded560e036d8541e7c7fa51c8d91716bc
Date: Mon, 03 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785763233
