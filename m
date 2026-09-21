Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF84F309EF2
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789954234; cv=none; b=sckGEY/DyahD+M0JO35Zvq5WeI9YtBbE3KeaQdctz30ZSHnUNs7DdIPTWTnaLHZpZe2dawWoFiUQevD729ecHIB9O0ZTZmmKOVTFZoI/NpBmb0aVqt1r39rdKNSJnpzWarT72K9YgMDOHMzXDUbzJDL0nQSAqqLg8FbRKjFssUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789954234; c=relaxed/simple;
	bh=2SOt1qsAOXXSo5jjJCfbemO32UTjIwV8CWXxLWE6L30=;
	h=To:Subject:From:Message-Id:Date; b=dDzwINIYsfOK+qvBxHhoMVdgBwzkyXYK4KY+wwIAD8uIcSpLgstu9hjnxOpakzuRKdHdd5F+QSdKnucOQ8FxUHzki+7kAWk7pAmbzDCM31A4Bv6ycIGwsJpcNjdyM4yHKteV3ASmP8Frgji3w4n1aNqJo6AUtjZZ0+I7ghTv4BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVDd6QJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVDd6QJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D439CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789954233;
	bh=2SOt1qsAOXXSo5jjJCfbemO32UTjIwV8CWXxLWE6L30=;
	h=To:Subject:From:Date:From;
	b=PVDd6QJ9H2R4MVTG0IsMhEGL7APqWBkaSciHi9k/wIp6Oh7L7Kw+ChkVhpghQrH1K
	 CQtHfm5Uax63/rVG0A09U7wX2HpoX0oBURkB4wQ/6PYd1FtSfTrgyo9GBMXraHizHM
	 mSO/bPyM9ckEie5VIh+uppgrrQPo6TbrigehMrCu7qLkVkfPp9KGnqcWpU8JZvdI5x
	 siEqic/FKlxXupWWi1+pJNoYWU20SysFSMGl0ZVYSY3QuAMSYfaNGf/acdGvA/12u4
	 ZTVdoK6IUAB1GfZpRwolAVwPcV6lWUdsG/RW44wyCZGMBB2KnOjRQfS3It8+tN1mMu
	 +j5ipf8jyzHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1502C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995423369.9721.1457233814773992055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1563bb20945db4c81868b276a235e36400dc510575ea744b5017118a871d8e
Date: Mon, 21 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789954233
