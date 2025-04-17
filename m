Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A9E1E0DE8
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744870194; cv=none; b=RvxYiNqlQYCP0QblBZvXmocKMKrCDm85CvOjzWp4XjwPI4HWw7kDPD/kP0iIZSv6WM1ibIl1H5r3cQT1kNkYGT6Ubkd4swFh45WZvLWZgfXuPmxfXG8gsmnbPpkdx90nc17Fcjr02z8JGvpFlsZ4ReXATw2GC0hmBL/nfPrSp+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744870194; c=relaxed/simple;
	bh=Zj2BDca75UQo6VU6rAzZ9I7SJIlaB8/VEw8Bt4F7js4=;
	h=To:Subject:From:Message-Id:Date; b=ZwK2JvPdAwP6HaUqjbfC//uTf8joWB4ayLeCj5RfNLAszL9uFwJ9KBHflEeJtLNmPYWyFBYPVUtl0bNgGCzzyQaTj/n1UGNgaxsP5OLDApGTJZq/2i5LFJzI38W9Fxs3O0EpxfiQUBwNaGt20lcFVkvY/n2zwb1frf48LfVquBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4hKtzqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4hKtzqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CADC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744870193;
	bh=Zj2BDca75UQo6VU6rAzZ9I7SJIlaB8/VEw8Bt4F7js4=;
	h=To:Subject:From:Date:From;
	b=Q4hKtzqdZQ6Y0U7Fmql1ztZdrv/op4xFWR9fRFEcR0+ZCTHiZcTJGhptKcoNKyHyf
	 g5dszld8W52yF+7U1xbmj/MHWS4nEMRZ5I/Pstf4/8eVjHivmOqV46tdfqAezJlZDW
	 YpX2goMJ6e2nBAZ+bOn4Dgn3UPHTUJ+A5dh6BWun+oxaROeYSiC5poQC+fh5jyXToi
	 HhH2THsJ7g1kpfqfmUdDe2M/uS+Ffm9WGM9elgiKjIh6AmQPfed7/0toY2YQSyrbVM
	 Gw/JOB6NYnDQfk7Y+AHlbeJhYsB/kp33gun/urw16WnFBgocXbFZ2BnyLCwpqfiu4I
	 oO+V/83ag/4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C267C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487019362.14969.4666122701451498742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decad667b10cbfdce8c948d4485d2e7b2aaa7a01b474fd1baf77b7dcf2e3fc0e
Date: Thu, 17 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744870193
